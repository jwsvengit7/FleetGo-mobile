import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  final Widget leading;
  final String label;
  final VoidCallback onTap;
  final bool disabled;

  const ContinueButton({
    super.key,
    required this.leading,
    required this.label,
    required this.onTap,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final btn = InkWell(
      onTap: disabled ? null : onTap,
      borderRadius: BorderRadius.circular(18),
      child: Ink(
        height: 48,
        decoration: BoxDecoration(
          color: disabled ? Colors.white10 : Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.only(right: 12), child: leading),
            Text(
              label,
              style: TextStyle(
                color: disabled ? Colors.white70 : Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Material(
        color: Colors.transparent,
        child: btn,
      ),
    );
  }
}
