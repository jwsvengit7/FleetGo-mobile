import 'package:fleetride/core/widget/app_text_field/fleet_ride_input.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fleetride/core/appbar/appbar.dart';
import 'package:fleetride/core/buttons/fleetridebuttons.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/gen/assets.gen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _name = TextEditingController();
  final _phone = TextEditingController();
  bool _obscure = true;
  bool _agree = false;
  bool _loading = false;

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate() || !_agree) return;
    setState(() => _loading = true);
    await Future.delayed(const Duration(milliseconds: 900)); // mock API
    if (!mounted) return;
    setState(() => _loading = false);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Signed up (mock)')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FleetrideColors.white,
      appBar: FleetrideAppBar(
        shouldPop: true,
        color: FleetrideColors.white,
        title: "Create Account",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  Assets.images.logo.path,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                'Sign Up',
                style: TextStyle(
                  color: FleetrideColors.blackColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Sign up now to get a 30% discount on your first ride.',
                style: TextStyle(
                  color: FleetrideColors.grey4,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 24),

              Form(
                key: _formKey,
                child: Column(
                  children: [
                    FleetrideTextField(
                      controller: _name,
                      hint: 'Full Name',
                      icon: Icons.person_outline,
                      validator: (v) => (v == null || v.trim().length < 2)
                          ? 'Enter your name'
                          : null,
                    ),
                    const SizedBox(height: 12),
                    FleetrideTextField(
                      controller:_email,
                      hint: 'Email Address',
                      icon: Icons.email_outlined,
                      validator: (v) => (v == null || !v.contains('@'))
                          ? 'Enter a valid email'
                          : null,
                    ),
                    const SizedBox(height: 12),
                    FleetrideTextField(
                     controller:   _phone,
                      hint: 'Phone Number',
                      icon: Icons.phone_outlined,
                      keyboard: TextInputType.phone,
                      helper: 'Please use your WhatsApp number',
                      validator: (v) => (v == null || v.trim().length < 7)
                          ? 'Enter a valid phone number'
                          : null,
                    ),
                    const SizedBox(height: 12),
                    FleetrideTextField(
                      controller: _password,
                      hint: 'Password',
                      icon: Icons.lock_outline,
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

                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: FleetrideColors.deepBlueAccent,
                          value: _agree,
                          onChanged: (v) =>
                              setState(() => _agree = v ?? false),
                        ),
                        Expanded(
                          child: Wrap(
                            children: const [
                              Text(
                                'I accept the ',
                                style: TextStyle(color: FleetrideColors.grey4),
                              ),
                              Text(
                                'Terms and Conditions',
                                style: TextStyle(
                                  color: FleetrideColors.deepBlueAccent,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                ' of Fleetride',
                                style: TextStyle(color: FleetrideColors.grey4),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    SizedBox(
                      width: double.infinity,
                      child: FleetrideButtons(
                        context: context,
                        onTap: _loading ? null : _submit,
                        text: _loading ? "Loading..." : "Sign Up",
                        textColor: FleetrideColors.white,
                        color: _loading
                            ? FleetrideColors.grey5
                            : FleetrideColors.deepBlueAccent,
                      ).normal(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Footer
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(color: FleetrideColors.grey4),
                    ),
                    GestureDetector(
                      onTap: () => context.go('/auth'),
                      child: const Text(
                        'Sign in',
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
    );
  }

}