import 'package:fleetride/feature/cars/presentation/screens/available_cars_screen.dart';
import 'package:fleetride/feature/landing_page/presentation/screens/about_screen.dart';
import 'package:fleetride/feature/landing_page/presentation/screens/contact_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fleetride/feature/auth/presentation/screens/locationscreen.dart';
import 'package:fleetride/feature/auth/presentation/screens/login_page_screen.dart';
import 'package:fleetride/feature/auth/presentation/screens/signup_page_screen.dart'
    as auth;
import 'package:fleetride/feature/cars/domain/model/mock_cars.dart';
import 'package:fleetride/feature/cars/presentation/bloc/cars_bloc.dart';
import 'package:fleetride/feature/cars/presentation/screens/booking_list_page.dart';
import 'package:fleetride/feature/cars/presentation/screens/cars_details_screen.dart';
import 'package:fleetride/feature/cars/presentation/screens/carts_page_screen.dart';
import 'package:fleetride/feature/landing_page/presentation/screens/dashboard_screeen.dart';
import 'package:fleetride/feature/landing_page/presentation/screens/favourite_screen.dart';
import 'package:fleetride/feature/landing_page/presentation/screens/notification_screen.dart';
import 'package:fleetride/feature/landing_page/presentation/screens/profile_screen.dart';
import 'package:fleetride/feature/startup/presentation/screens/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fleetride/feature/startup/presentation/screens/onboarding.dart';
import 'package:fleetride/feature/landing_page/presentation/screens/landing_page_screen.dart';

// Auth screens

import 'package:fleetride/feature/auth/presentation/screens/forgot_password_screen.dart';
import 'package:fleetride/feature/auth/presentation/screens/otp_screen.dart';
import 'package:fleetride/feature/auth/presentation/screens/reset_password_screen.dart';


// Real sign-up form
part "../../feature/cars/presentation/app_shell_routes.dart";
part "../../feature/startup/presentation/_startup_routes.dart";
part "../../feature/auth/presentation/_auth_routes.dart";
part "../../feature/cars/presentation/cars_routes.dart";
part "../../feature/landing_page/presentation/_landing_page_routes.dart";

part 'app_routes.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  routes: $appRoutes,
  initialLocation: '/',
  navigatorKey: rootNavigatorKey,
);
