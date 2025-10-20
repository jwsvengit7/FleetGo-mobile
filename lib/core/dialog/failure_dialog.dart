import 'package:fleetride/core/buttons/fleetrideButtons.dart';
import 'package:fleetride/core/extensions/size_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:fleetride/gen/assets.gen.dart';

import '../colors/color.dart';

class FailureDialog {
  FailureDialog._();

  static Future<void> show(
    BuildContext context,
    String text, {
    VoidCallback? onPressed,
    String? header,
  }) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => Dialog(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(
                    maxHeight: context.screenHeight * 0.7,
                    maxWidth: context.screenHeight / 2.3,
                  ),
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                ),
              ),
              const SizedBox(height: 10),
              Lottie.asset(
                Assets.icons.check.path,
                height: 100.h,
                width: 300.w,
              ),
              SizedBox(height: 10.h),
              if (header != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    header,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: FleetrideColors.grey3,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ),
              ),
              if (onPressed != null)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: FleetrideButtons(
                    expanded: true,
                    context: context,
                    text: "Done",
                    letterSpacing: 1,
                    onTap: onPressed,
                  ).normal(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
