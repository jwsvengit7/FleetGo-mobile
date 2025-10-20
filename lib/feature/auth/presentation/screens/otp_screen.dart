import 'package:fleetride/core/appbar/appbar.dart';
import 'package:fleetride/core/extensions/size_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/core/widget/loading/progress_indicator_scaffold.dart';
import 'package:fleetride/feature/auth/presentation/bloc/authentication_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/foundation.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String identifier;

  const OtpVerificationScreen({super.key, required this.identifier});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  String otpCode = "";
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();

  void resendOtp() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('OTP resent to ${widget.identifier}')),
    );
  }

  void verifyOtp() {
    if (!_formKey.currentState!.validate()) return;
    setState(() => isLoading = true);

    if (otpCode.isEmpty) {
      setState(() => isLoading = false);
    } else {
      context.read<AuthenticationBloc>().add(
            AuthenticationEvent.verifyOtp(
              identifier: widget.identifier,
              otp: otpCode,
              channelCode: "1234",
              appId: "1234",
            ),
          );
    }
  }

  void _authBlocListener(BuildContext context, AuthenticationState state) {
    state.maybeWhen(
      orElse: () {},
      otpVerificationFailed: (message) {
        context.showToast(message);
        setState(() => isLoading = false);
      },
      otpVerified: (message) {
        context.showToast("Verified successfully!");
        context.push('/auth/reset/$message');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: _authBlocListener,
      builder: (context, state) {
        return ProgressIndicatorPage(
          isLoading: state.maybeWhen(
            orElse: () => false,
            verifyingOtp: () => true,
          ),
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: const SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.light,
              statusBarColor: Colors.transparent,
            ),
            child: Scaffold(
              backgroundColor: const Color(0xFFF5F7FB),
              appBar: FleetrideAppBar(title: "Verify OTP", shouldPop: true),
              body: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                  child: Column(
                    children: [
                      // --- Logo or illustration ---
                      Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            colors: [Color(0xFF003366), Color(0xFF0055AA)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: const Icon(Icons.lock_outline,
                            color: Colors.white, size: 60),
                      ),
                      const SizedBox(height: 32),

                      const Text(
                        "Enter Verification Code",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: FleetrideColors.blackColor,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "We’ve sent a 4-digit code to\n${"•••• " + widget.identifier.substring(widget.identifier.length - 4)}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 30),

                      // --- OTP input container ---
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.02),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Form(
                          key: _formKey,
                          child: PinCodeTextField(
                            appContext: context,
                            length: 4,
                            keyboardType: TextInputType.number,
                            animationType: AnimationType.fade,
                            cursorColor: FleetrideColors.appColor,
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(10),
                              fieldHeight: 55,
                              fieldWidth: 50,
                              inactiveColor: const Color(0xFFDDDDDD),
                              activeColor: FleetrideColors.appColor,
                              selectedColor: FleetrideColors.appColor.withOpacity(0.8),
                            ),
                            onChanged: (value) => setState(() => otpCode = value),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: resendOtp,
                        child: const Text(
                          "Didn’t receive code? Resend",
                          style: TextStyle(
                            color: Color(0xFF003366),
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),

                      // --- Verify button ---
                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF003366),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 3,
                          ),
                          onPressed: isLoading || otpCode.length != 4
                              ? null
                              : verifyOtp,
                          child: Text(
                            isLoading ? "Verifying..." : "Verify",
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),
                      if (kDebugMode)
                        TextButton(
                          onPressed: () {
                            const testToken = 'test-reset-token';
                            context.push('/auth/reset/$testToken');
                          },
                          child: const Text("Skip to Reset Password (Dev Only)"),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
