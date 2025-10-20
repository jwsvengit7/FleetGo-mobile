import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/core/router/app_routes.dart';
import 'package:fleetride/feature/landing_page/presentation/screens/dashboard_screeen.dart';

class FleetrideAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const FleetrideAppBar({
    super.key,
    this.leading,
    this.noIcon = true,
    this.color,
    this.title,
    this.bottom,
    this.shouldPop = false,
    this.automaticallyImplyLeading = true,
    this.preferredSize = const Size.fromHeight(70),
    this.onBack,
  });

  final Widget? leading;
  final PreferredSize? bottom;
  final Color? color;
  final String? title;
  final bool shouldPop;
  final bool automaticallyImplyLeading;
  final bool? noIcon;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: color ?? FleetrideColors.white,
      centerTitle: true, // ✅ keeps title in the center
      leadingWidth: 70, // ✅ restricts leading space so text centers correctly
      bottom: bottom,
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: _buildLeading(context),
      title: Text(
        title ?? "",
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: FleetrideColors.black1,
        ),
      ),
    );
  }

  @override
  final Size preferredSize;

  Widget _buildLeading(BuildContext context) {
    if (!automaticallyImplyLeading) return const SizedBox.shrink();
    if (leading != null) return leading!;

    VoidCallback callback;
    if (shouldPop) {
      callback = () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context); // normal back
        } else {
          const DashboardRoute().go(context); // fallback → Dashboard
        }
      };
    } else {
      callback = () {
        const DashboardRoute().go(context);
        // handle navigation to dashboard if needed
      };
    }

    if (noIcon == false) return const SizedBox.shrink();

    return Padding(
      padding: EdgeInsets.only(left: 12.w),
      child: InkWell(
        onTap: onBack ?? callback,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2), // ✅ rounded grey background
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.chevron_left,
            size: 28,
            color: FleetrideColors.blackColor,
          ),
        ),
      ),
    );
  }
}
