import 'package:flutter/material.dart';
import 'package:fleetride/core/colors/color.dart';

class fleetrideLoanTheme {
  static ThemeData getLightThemeData(BuildContext context) {
    return _lightThemeData(context);
  }

  static ThemeData getDarkThemeData(BuildContext context) {
    return _darkThemeData(context);
  }

  static ThemeData _lightThemeData(BuildContext context) {
    return ThemeData(
      dropdownMenuTheme: Theme.of(context).dropdownMenuTheme.copyWith(
            menuStyle: Theme.of(context).dropdownMenuTheme.menuStyle?.copyWith(
                  elevation: WidgetStatePropertyAll(0.0),
                  backgroundColor: const WidgetStatePropertyAll(
                      FleetrideColors.scaffoldBackgroundColor),
                ),
          ),
      appBarTheme: Theme.of(context).appBarTheme.copyWith(elevation: 0.0),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
      // fontFamily: "Effra_Trial",
      scaffoldBackgroundColor: FleetrideColors.scaffoldBackgroundColor,
      platform: TargetPlatform.iOS,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }), dialogTheme: DialogThemeData(backgroundColor: FleetrideColors.scaffoldBackgroundColor),
    );
  }

  static ThemeData _darkThemeData(BuildContext context) {
    return ThemeData(
      dropdownMenuTheme: Theme.of(context).dropdownMenuTheme.copyWith(
            menuStyle: Theme.of(context).dropdownMenuTheme.menuStyle?.copyWith(
                  elevation: WidgetStatePropertyAll(0.0),
                  backgroundColor: const WidgetStatePropertyAll(
                      FleetrideColors.scaffoldBackgroundColor),
                ),
          ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
      scaffoldBackgroundColor: FleetrideColors.scaffoldBackgroundColor,
      // fontFamily: "Effra_Trial",
      platform: TargetPlatform.iOS,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }), dialogTheme: DialogThemeData(backgroundColor: FleetrideColors.scaffoldBackgroundColor),
    );
  }
}
