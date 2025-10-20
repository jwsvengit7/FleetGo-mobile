import 'package:flutter/material.dart';
import 'package:fleetride/gen/assets.gen.dart';

import '../../../../../../core/colors/color.dart';

class fleetrideSearchField extends StatefulWidget {
  const fleetrideSearchField({
    super.key,
    required this.controller,
    this.onChanged,
    this.hintText,
    this.readonly,
    this.value,
  });

  final TextEditingController controller;
  final Function(String)? onChanged;
  final String? hintText;
  final bool? readonly;
  final String? value;

  @override
  _fleetrideSearchTextFieldState createState() => _fleetrideSearchTextFieldState();
}

class _fleetrideSearchTextFieldState extends State<fleetrideSearchField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 14),
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(Icons.search, color: Colors.grey),
        suffixIcon: InkWell(
          onTap: () {},
          child: Image.asset(Assets.icons.vector.path),
        ),
      ),
    );
  }
}
