import 'package:fleetride/core/widget/app_text_field/fleet_ride_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:fleetride/core/router/app_routes.dart';
import 'package:fleetride/core/appbar/font.dart';
import 'package:fleetride/core/buttons/fleetridebuttons.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/core/extensions/size_extension.dart';
import 'package:fleetride/core/widget/loading/progress_indicator_scaffold.dart';
import 'package:fleetride/feature/auth/presentation/bloc/authentication_bloc.dart';
import 'package:fleetride/gen/assets.gen.dart';

class EmailSignInScreen extends StatefulWidget {
  const EmailSignInScreen({super.key});

  @override
  State<EmailSignInScreen> createState() => _EmailSignInScreenState();
}

class _EmailSignInScreenState extends State<EmailSignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: _authBlocListener,
      builder: (context, state) {
        return ProgressIndicatorPage(
          isLoading: state.maybeWhen(
            orElse: () => false,
            settingUpfleetrideAuth: () => true,
          ),
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: const SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.transparent,
            ),
            child: Scaffold(
              backgroundColor: FleetrideColors.white,
              body: SafeArea(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Logo
                      Center(
                        child: Image.asset(
                          Assets.images.logo.path,
                          width: 120,
                          height: 120,
                        ),
                      ),
                      const SizedBox(height: 30),

                      Text(
                        "Welcome Back 👋",
                        style: FontFamilys.titleStyle.copyWith(
                          fontSize: 26,
                          color: FleetrideColors.blackColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        "Sign in to continue your journey with Fleetride",
                        style: TextStyle(
                          color: FleetrideColors.grey4,
                          fontSize: 14,
                        ),
                      ),

                      const SizedBox(height: 30),

                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            FleetrideTextField(
                     controller:  _email,
                      hint: 'Email Address',
                      icon: Icons.email_outlined,
                      validator: (v) => (v == null || !v.contains('@'))
                          ? 'Enter a valid email'
                          : null,
                    ),
                            
                            const SizedBox(height: 16),
                            
                     FleetrideTextField(
                     controller:  _password,
                      hint:'Password',
                      icon:Icons.lock_outline,
                      obscure: _obscure,
                      suffix: IconButton(
                        icon: Icon(
                          _obscure
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: FleetrideColors.grey4,
                        ),
                        onPressed: () =>
                            setState(() => _obscure = !_obscure),
                      ),
                      validator: (v) => (v == null || v.length < 6)
                          ? 'Minimum 6 characters'
                          : null,
                    ),

                          
                            const SizedBox(height: 12),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () =>
                                    context.go('/auth/forgot'),
                                child: const Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: FleetrideColors.grey4,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              width: double.infinity,
                              child: FleetrideButtons(
                                context: context,
                                onTap: _submit,
                                text: "Sign In",
                                textColor: Colors.white,
                                color: FleetrideColors.deepBlueAccent,
                              ).normal(),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 30),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don’t have an account? ",
                              style: TextStyle(color: FleetrideColors.grey4),
                            ),
                            GestureDetector(
                              onTap: () => context.go('/auth/signup'),
                              child: const Text(
                                "Create one",
                                style: TextStyle(
                                  color: FleetrideColors.deepBlueAccent,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
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

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    context.read<AuthenticationBloc>().add(
      AuthenticationEvent.generateToken(
        email: _email.text,
        password: _password.text,
        deviceToken: "",
      ),
    );
  }

  void _authBlocListener(BuildContext context, AuthenticationState state) {
    state.maybeWhen(
      orElse: () {},
      fleetrideAuthFailed: (message) {
        context.showToast(message);
      },
      fleetrideAuthSuccessful: (data) {
        context.showToast("Sign-in successful!");
        const LandingPageRoute().go(context);
      },
    );
  }

}
