import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fleetride/gen/assets.gen.dart';

class OnBoardingBackground extends StatelessWidget {

  const OnBoardingBackground({super.key, required this.child, this.color,this.image});
  final Widget child;
  final Color? color;
  final String? image;

@override
Widget build(BuildContext context) {
  return Scaffold(
    
    body: Container(
      // padding: EdgeInsets.symmetric(vertical: 40.h),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: color,
        image: color == null ? DecorationImage(
          image: AssetImage(image ==null ?Assets.images.bg.path : image!),
          fit: BoxFit.cover,
        ) : null,
      ),
      child: child,
    ),
  );
}
}
