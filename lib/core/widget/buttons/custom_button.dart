
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/core/extensions/size_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:websafe_svg/websafe_svg.dart';


class FleetrideCustomButton extends StatelessWidget {
  const FleetrideCustomButton({
    super.key,
    required this.title,
    this.onTap,
    required this.active,
    this.trailing,
  });
  final String title;
  final VoidCallback? onTap;
  final bool active;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      decoration: BoxDecoration(
        color: FleetrideColors.white,
        border: Border.all(color: FleetrideColors.grey1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 45.w,
              vertical: 32.h,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: active
                          ? FleetrideColors.black1
                          : FleetrideColors.grey2,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                ),
                trailing ??
                    WebsafeSvg.asset("Frame 44", height: 47.h, width: 27.w),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
