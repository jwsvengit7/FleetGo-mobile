import 'package:flutter/material.dart';
import 'package:fleetride/core/colors/color.dart';

class FleetrideTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final bool obscure;
  final Widget? suffix;
  final String? helper;
  final String? Function(String?)? validator;
  final TextInputType keyboard;

  const FleetrideTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.icon,
    this.obscure = false,
    this.suffix,
    this.helper,
    this.validator,
    this.keyboard = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      keyboardType: keyboard,
      validator: validator,
      style: const TextStyle(color: FleetrideColors.blackColor),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: FleetrideColors.grey4),
        helperText: helper,
        helperStyle: const TextStyle(
          color: FleetrideColors.grey4,
          fontSize: 12,
        ),
        prefixIcon: Icon(icon, color: FleetrideColors.grey4),
        suffixIcon: suffix,
        filled: true,
        fillColor: FleetrideColors.scaffoldBackgroundColor.withValues(alpha: 0.2),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xFFDDDDDD), // 👈 soft light gray border
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xFFCCCCCC), // 👈 slightly darker when focused
            width: 1.3,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.redAccent,
            width: 1.3,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 14,
        ),
      ),
    );
  }
}
