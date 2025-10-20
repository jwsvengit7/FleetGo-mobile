import 'dart:convert';
import 'package:fleetride/core/appbar/font.dart';
import 'package:fleetride/core/widget/app_text_field/fleet_ride_input.dart';
import 'package:fleetride/gen/assets.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:fleetride/core/appbar/appbar.dart';
import 'package:fleetride/core/buttons/fleetridebuttons.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/core/router/app_routes.dart';

class ResetPasswordScreen extends StatefulWidget {
  final String token;

  const ResetPasswordScreen({super.key, required this.token});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

const bool _useMockReset = bool.fromEnvironment(
  'USE_MOCK',
  defaultValue: kDebugMode,
);

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _form = GlobalKey<FormState>();
  final _pwdCtrl = TextEditingController();
  final _confirmCtrl = TextEditingController();

  bool _obscure1 = true;
  bool _obscure2 = true;
  bool _loading = false;

  @override
  void dispose() {
    _pwdCtrl.dispose();
    _confirmCtrl.dispose();
    super.dispose();
  }

  String? _validatePassword(String? v) {
    final value = v?.trim() ?? '';
    if (value.isEmpty) return 'Password is required';
    if (value.length < 8) return 'Password must be at least 8 characters';
    return null;
  }

  String? _validateConfirm(String? v) {
    final value = v?.trim() ?? '';
    if (value.isEmpty) return 'Please re-enter the password';
    if (value != _pwdCtrl.text.trim()) return "Passwords don't match";
    return null;
  }

  Future<void> _onSubmit() async {
    if (!(_form.currentState?.validate() ?? false)) return;

    setState(() => _loading = true);

    try {
      if (_useMockReset) {
        await Future.delayed(const Duration(milliseconds: 700));
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Password reset successful (mock)')),
        );
        context.push(AuthLocationRoute().location, extra: widget.token);
        return;
      }

      final res = await http.post(
        Uri.parse('https://yourapi.com/api/auth/reset-password'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'token': widget.token,
          'new_password': _pwdCtrl.text.trim(),
        }),
      );

      if (!mounted) return;

      if (res.statusCode >= 200 && res.statusCode < 300) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Password reset successful')),
        );
        context.push(AuthLocationRoute().location, extra: widget.token);
      } else {
        final msg = _extractErrorMessage(res.body) ?? 'Reset failed';
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(msg)));
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Network error: $e')),
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  String? _extractErrorMessage(String body) {
    try {
      final json = jsonDecode(body);
      if (json is Map && json['message'] is String) {
        return json['message'] as String;
      }
    } catch (_) {}
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: FleetrideAppBar(
        shouldPop: true,
        title: 'Reset Password',
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF003366),
              Color(0xFF005599),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        // child: SafeArea(
        //   child: SingleChildScrollView(
        //     padding: const EdgeInsets.all(24),
        //     child: Column(
        //       children: [
        //         const SizedBox(height: 50),
        //         // Illustration
        //         Center(
        //           child: Image.asset(
        //             'assets/images/reset_password.png',
        //             height: 140,
        //             fit: BoxFit.contain,
        //           ),
        //         ),
        //         const SizedBox(height: 30),
        //         // White card form
        //         Container(
        //           padding:
        //               const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        //           decoration: BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.circular(18),
        //             boxShadow: [
        //               BoxShadow(
        //                 color: Colors.black.withOpacity(0.05),
        //                 blurRadius: 10,
        //                 offset: const Offset(0, 5),
        //               ),
        //             ],
        //           ),
        //           child: Form(
        //             key: _form,
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 const Text(
        //                   "Create a new password",
        //                   style: TextStyle(
        //                     fontSize: 22,
        //                     fontWeight: FontWeight.bold,
        //                     color: Color(0xFF003366),
        //                   ),
        //                 ),
        //                 const SizedBox(height: 8),
        //                 const Text(
        //                   "Your new password must be different from previously used passwords.",
        //                   style: TextStyle(
        //                     fontSize: 13,
        //                     color: Colors.black54,
        //                   ),
        //                 ),
        //                 const SizedBox(height: 25),
        //                 // New password
        //                 TextFormField(
        //                   controller: _pwdCtrl,
        //                   obscureText: _obscure1,
        //                   decoration: InputDecoration(
        //                     labelText: 'New password',
        //                     labelStyle:
        //                         const TextStyle(color: Colors.black54),
        //                     filled: true,
        //                     fillColor: Colors.grey[100],
        //                     border: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(12),
        //                       borderSide:
        //                           const BorderSide(color: Colors.grey, width: 0.3),
        //                     ),
        //                     suffixIcon: IconButton(
        //                       onPressed: () =>
        //                           setState(() => _obscure1 = !_obscure1),
        //                       icon: Icon(
        //                         _obscure1
        //                             ? Icons.visibility_off_outlined
        //                             : Icons.visibility_outlined,
        //                         color: Colors.grey,
        //                       ),
        //                     ),
        //                   ),
        //                   validator: _validatePassword,
        //                 ),
        //                 const SizedBox(height: 20),
        //                 // Confirm password
        //                 TextFormField(
        //                   controller: _confirmCtrl,
        //                   obscureText: _obscure2,
        //                   decoration: InputDecoration(
        //                     labelText: 'Confirm password',
        //                     labelStyle:
        //                         const TextStyle(color: Colors.black54),
        //                     filled: true,
        //                     fillColor: Colors.grey[100],
        //                     border: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(12),
        //                       borderSide:
        //                           const BorderSide(color: Colors.grey, width: 0.3),
        //                     ),
        //                     suffixIcon: IconButton(
        //                       onPressed: () =>
        //                           setState(() => _obscure2 = !_obscure2),
        //                       icon: Icon(
        //                         _obscure2
        //                             ? Icons.visibility_off_outlined
        //                             : Icons.visibility_outlined,
        //                         color: Colors.grey,
        //                       ),
        //                     ),
        //                   ),
        //                   validator: _validateConfirm,
        //                 ),
        //                 const SizedBox(height: 30),
        //                 // Submit button
        //                 FleetrideButtons(
        //                   context: context,
        //                   onTap: _loading ? null : _onSubmit,
        //                   text: _loading
        //                       ? "Resetting..."
        //                       : "Reset Password",
        //                   textColor: Colors.white,
        //                   color: FleetrideColors.deepBlueAccent,
        //                 ).normal(),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      
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
                        "Create a new password 👋",
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
                        key: _form,
                        child: Column(
                          children: [
                            FleetrideTextField(
                     controller:  _pwdCtrl,
                      hint: 'New Password',
                      icon: Icons.lock_outline,
                      
                       suffix: IconButton(
                        icon: Icon(
                          _obscure1
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: FleetrideColors.grey4,
                        ),
                        onPressed: () =>
                            setState(() => _obscure1 = !_obscure1),
                      ),
                      validator: _validatePassword
                    ),
                            
                            const SizedBox(height: 16),
                            
                     FleetrideTextField(
                     controller:  _confirmCtrl,
                      hint:'Confirm Password',
                      icon:Icons.lock_outline,
                      obscure: _obscure2,
                      suffix: IconButton(
                        icon: Icon(
                          _obscure2
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: FleetrideColors.grey4,
                        ),
                        onPressed: () =>
                            setState(() => _obscure2 = !_obscure2),
                      ),
                      validator: _validateConfirm,
                    ),

                        
                          
                            const SizedBox(height: 16),
                            SizedBox(
                              width: double.infinity,
                              child: FleetrideButtons(
                                context: context,
                                onTap: _onSubmit,
                                text: "Reset Password",
                                textColor: Colors.white,
                                color: FleetrideColors.deepBlueAccent,
                              ).normal(),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
          
      ),
    );
  }
}
