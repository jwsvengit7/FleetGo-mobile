import 'package:fleetride/core/buttons/fleetridebuttons.dart';
import 'package:fleetride/core/widget/app_text_field/fleet_ride_input.dart';
import 'package:fleetride/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:fleetride/core/appbar/appbar.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/core/extensions/size_extension.dart';
import 'package:fleetride/core/router/app_routes.dart';
import 'package:fleetride/core/widget/loading/progress_indicator_scaffold.dart';
import 'package:fleetride/feature/auth/presentation/bloc/authentication_bloc.dart';
import 'package:flutter/foundation.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController identifier = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isLoading = false;

 



   void _submit(BuildContext context) {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isLoading = true);

    if (identifier.text == "") {
      setState(() {
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = true;
      });

      context.read<AuthenticationBloc>().add(
        AuthenticationEvent.resendOtp(
          email: identifier.text.trim(),
          channelCode: ""
        ),
      );
    }
  }

  void _authBlocListener(BuildContext context, AuthenticationState state) {
    state.maybeWhen(
      orElse: () {},
      otpGenerationFailed: (message) {
        debugPrint("***** $message *******");
        // FailureDialog.show(
        //   context,
        //   message,
        //   header: "Error",
        // );
        debugPrint(message);
        context.showToast(message);
      },
      otpResent: (message,identifier) {
        context.showToast("Successful");
         AuthOtpRoute(identifier: identifier).push(context);
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
            generatingOtp: () => true,
          ),
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: const SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light,
              statusBarColor: Colors.transparent,
            ),
      child: Scaffold(
                      backgroundColor: FleetrideColors.white,

        appBar: FleetrideAppBar(title: "Forget Password",shouldPop: true,),
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                child: BlocListener<AuthenticationBloc, AuthenticationState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      forgotPasswordLoading: () {
                        setState(() => _isLoading = true);
                      },
                      forgotPasswordSuccess: () {
                        setState(() => _isLoading = false);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('OTP sent successfully!')),
                        );
                        AuthOtpRoute(identifier: identifier.text.trim()).push(context); // ✅ builds back stack
                      },
                      forgotPasswordFailure: (message) {
                        setState(() => _isLoading = false);
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(message)));
                      },
                      orElse: () {
                        setState(() => _isLoading = false);
                      },
                    );
                  },
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Forgot Password",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Please provide us with a valid phone number",
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                        const SizedBox(height: 30),
                       FleetrideTextField(
                      controller: identifier,
                      hint: 'Email',
                      icon: Icons.person_outline,
                      validator: (v) => (v == null || v.trim().length < 2)
                          ? 'Enter your email'
                          : null,
                    ),const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child:
                              BlocBuilder<
                                AuthenticationBloc,
                                AuthenticationState
                              >(
                                builder: (context, state) {
                                  return SizedBox(
                              width: double.infinity,
                              child: FleetrideButtons(
                                context: context,
                                onTap: _isLoading
                                        ? null
                                        : () => _submit(context),
                                text: "Send OTP",
                                textColor: Colors.white,
                                color: !_isLoading
                                          ?  FleetrideColors.deepBlueAccent
                                          : const Color(0xFFEFE0F7) ,
                              ).normal(),
                            );
                                },
                              ),
                        ),
                        const SizedBox(height: 10),
      
                        TextButton(
                          onPressed: kDebugMode
                              ? () {
                                  final phone =
                                      identifier.text.trim().isEmpty
                                      ? '+1234567890'
                                      : identifier.text.trim();
                                      AuthOtpRoute(identifier: phone).push(context);
                                }
                              : null,
                          child: const Text(
                            'Skip to OTP',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  Assets.images.bus2.path,
                  width: 350,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
          ));
      
      } 
    );
    
  }
}
