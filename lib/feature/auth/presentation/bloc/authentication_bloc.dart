import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fleetride/feature/auth/app/authenication_facade.dart';
import 'package:fleetride/feature/auth/domain/services/forgot_password_service.dart';
import 'package:fleetride/core/constants/string_const.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationFacade _authenticationFacade;
  final ForgotPasswordService _forgotPasswordService;

  AuthenticationBloc({
    required AuthenticationFacade authenticationFacade,
    required ForgotPasswordService forgotPasswordService,
  }) : _authenticationFacade = authenticationFacade,
       _forgotPasswordService = forgotPasswordService,
       super(const AuthenticationState.initial()) {
    on<_ResendOtp>(_handleResendOtp);
    on<_VerifyOtp>(_handleVerifyOtp);
    on<_SignOut>(_handleSignOut);
    on<_GenerateToken>(_handleGenerateToken);
    on<_ForgotPasswordRequested>(_handleForgotPasswordRequested);
  }

  FutureOr<void> _handleGenerateToken(
    _GenerateToken event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationState.settingUpfleetrideAuth());

    final generateTokenResult = await _authenticationFacade.generateToken(
      email: event.email,
      password: event.password,
      deviceToken: event.deviceToken,
    );

    // i.e if generateTokenResult fails
    if (generateTokenResult.isLeft()) {
      final failureMessage = generateTokenResult
          .getLeft()
          .map((t) => t.message)
          .getOrElse(() => "An error occurred");
      emit(AuthenticationState.fleetrideAuthFailed(failureMessage));
      return;
    }

    final token = generateTokenResult
        .getRight()
        .map((t) => "12345")
        .getOrElse(() => "");

    if (token.isEmpty) {
      final message = generateTokenResult
          .getLeft()
          .map((t) => t.message)
          .getOrElse(() => "An error occurred");
      emit(AuthenticationState.fleetrideAuthFailed(message));
      return;
    }

    // save token to local storage
    final res = await _authenticationFacade.saveToken(token);

    if (res.isLeft()) {
      final message = res
          .getLeft()
          .map((t) => t.message)
          .getOrElse(() => "An error occurred");
      emit(AuthenticationState.fleetrideAuthFailed(message));
      return;
    }

    emit(
      AuthenticationState.fleetrideAuthSuccessful(
        data: (
          status: false,
          id: "1",
          deviceToken: event.deviceToken,
          customerDetails: "customerDetails",
          token: token,
          timeOfLogin: DateTime.now().toIso8601String(),
          method: "OTP",
        ),
      ),
    );
  }

 

  FutureOr<void> _handleResendOtp(
    _ResendOtp event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationState.generatingOtp());

    final resendOtpResult = await _authenticationFacade.generateOtp(
      email: event.email,
      channelCode: StringConst.apiChannelCode,
    );

    resendOtpResult.fold(
      (failure) =>
          emit(AuthenticationState.otpGenerationFailed(failure.message)),
      (successMessage) => emit(
        AuthenticationState.otpResent(
          successMessage: successMessage,
          email: event.email,
        ),
      ),
    );
  }

  FutureOr<void> _handleVerifyOtp(
    _VerifyOtp event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationState.verifyingOtp());

    final verifyOtpResult = await _authenticationFacade.verifyOtp(
      channelCode: StringConst.apiChannelCode,
      otp: event.otp,
      identifier: event.identifier,
      appId: event.appId,
    );

    verifyOtpResult.fold(
      (failure) =>
          emit(AuthenticationState.otpVerificationFailed(failure.message)),
      (successMessage) => emit(AuthenticationState.otpVerified(successMessage)),
    );
  }

  FutureOr<void> _handleSignOut(
    _SignOut event,
    Emitter<AuthenticationState> emit,
  ) {
    _authenticationFacade.clearAuthToken();

    emit(AuthenticationState.signedOut());
  }

  FutureOr<void> _handleForgotPasswordRequested(
    _ForgotPasswordRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationState.forgotPasswordLoading());

    final forgotPasswordResult = await _forgotPasswordService
        .requestPasswordReset(phone: event.phone);

    forgotPasswordResult.fold(
      (failure) =>
          emit(AuthenticationState.forgotPasswordFailure(failure.message)),
      (_) => emit(const AuthenticationState.forgotPasswordSuccess()),
    );
  }
}
