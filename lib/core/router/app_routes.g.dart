// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShell,
      $startUpRoute,
      $authEmailSignInRoute,
      $carsRoute,
      $landingPageRoute,
    ];

RouteBase get $appShell => ShellRouteData.$route(
      factory: $AppShellExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/landing',
          factory: $LandingPageRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'dashboard',
              factory: $DashboardRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'favorites',
              factory: $FavouriteRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'profile',
              factory: $ProfileRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'notification',
              factory: $NotificationRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/cars',
          factory: $CarsRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':name',
              factory: $CarDetailsRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: ':name/booking-list',
              factory: $BookingListRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $AppShellExtension on AppShell {
  static AppShell _fromState(GoRouterState state) => AppShell();
}

extension $LandingPageRouteExtension on LandingPageRoute {
  static LandingPageRoute _fromState(GoRouterState state) =>
      const LandingPageRoute();

  String get location => GoRouteData.$location(
        '/landing',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DashboardRouteExtension on DashboardRoute {
  static DashboardRoute _fromState(GoRouterState state) =>
      const DashboardRoute();

  String get location => GoRouteData.$location(
        '/landing/dashboard',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FavouriteRouteExtension on FavouriteRoute {
  static FavouriteRoute _fromState(GoRouterState state) =>
      const FavouriteRoute();

  String get location => GoRouteData.$location(
        '/landing/favorites',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => const ProfileRoute();

  String get location => GoRouteData.$location(
        '/landing/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NotificationRouteExtension on NotificationRoute {
  static NotificationRoute _fromState(GoRouterState state) =>
      const NotificationRoute();

  String get location => GoRouteData.$location(
        '/landing/notification',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CarsRouteExtension on CarsRoute {
  static CarsRoute _fromState(GoRouterState state) => const CarsRoute();

  String get location => GoRouteData.$location(
        '/cars',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CarDetailsRouteExtension on CarDetailsRoute {
  static CarDetailsRoute _fromState(GoRouterState state) => CarDetailsRoute(
        state.pathParameters['name']!,
      );

  String get location => GoRouteData.$location(
        '/cars/${Uri.encodeComponent(name)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BookingListRouteExtension on BookingListRoute {
  static BookingListRoute _fromState(GoRouterState state) => BookingListRoute(
        state.pathParameters['name']!,
      );

  String get location => GoRouteData.$location(
        '/cars/${Uri.encodeComponent(name)}/booking-list',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $startUpRoute => GoRouteData.$route(
      path: '/',
      factory: $StartUpRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'home_2',
          factory: $OnboardingScreenRouteExtension._fromState,
        ),
      ],
    );

extension $StartUpRouteExtension on StartUpRoute {
  static StartUpRoute _fromState(GoRouterState state) => const StartUpRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OnboardingScreenRouteExtension on OnboardingScreenRoute {
  static OnboardingScreenRoute _fromState(GoRouterState state) =>
      const OnboardingScreenRoute();

  String get location => GoRouteData.$location(
        '/home_2',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $authEmailSignInRoute => GoRouteData.$route(
      path: '/auth',
      factory: $AuthEmailSignInRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'signup',
          factory: $AuthSignupRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'forgot',
          factory: $AuthForgotPasswordRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'otp/:identifier',
          factory: $AuthOtpRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'reset/:token',
          factory: $AuthResetPasswordRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'location',
          factory: $AuthLocationRouteExtension._fromState,
        ),
      ],
    );

extension $AuthEmailSignInRouteExtension on AuthEmailSignInRoute {
  static AuthEmailSignInRoute _fromState(GoRouterState state) =>
      const AuthEmailSignInRoute();

  String get location => GoRouteData.$location(
        '/auth',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AuthSignupRouteExtension on AuthSignupRoute {
  static AuthSignupRoute _fromState(GoRouterState state) =>
      const AuthSignupRoute();

  String get location => GoRouteData.$location(
        '/auth/signup',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AuthForgotPasswordRouteExtension on AuthForgotPasswordRoute {
  static AuthForgotPasswordRoute _fromState(GoRouterState state) =>
      const AuthForgotPasswordRoute();

  String get location => GoRouteData.$location(
        '/auth/forgot',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AuthOtpRouteExtension on AuthOtpRoute {
  static AuthOtpRoute _fromState(GoRouterState state) => AuthOtpRoute(
        identifier: state.pathParameters['identifier']!,
      );

  String get location => GoRouteData.$location(
        '/auth/otp/${Uri.encodeComponent(identifier)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AuthResetPasswordRouteExtension on AuthResetPasswordRoute {
  static AuthResetPasswordRoute _fromState(GoRouterState state) =>
      AuthResetPasswordRoute(
        token: state.pathParameters['token']!,
      );

  String get location => GoRouteData.$location(
        '/auth/reset/${Uri.encodeComponent(token)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AuthLocationRouteExtension on AuthLocationRoute {
  static AuthLocationRoute _fromState(GoRouterState state) =>
      const AuthLocationRoute();

  String get location => GoRouteData.$location(
        '/auth/location',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $carsRoute => GoRouteData.$route(
      path: '/cars',
      factory: $CarsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'available',
          factory: $AvailableScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: ':name',
          factory: $CarDetailsRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'booking-list',
              factory: $BookingListRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $AvailableScreenRouteExtension on AvailableScreenRoute {
  static AvailableScreenRoute _fromState(GoRouterState state) =>
      const AvailableScreenRoute();

  String get location => GoRouteData.$location(
        '/cars/available',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $landingPageRoute => GoRouteData.$route(
      path: '/landing',
      factory: $LandingPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'dashboard',
          factory: $DashboardRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'favorites',
          factory: $FavouriteRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'profile',
          factory: $ProfileRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'contact-us',
              factory: $ContactRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'about',
              factory: $AboutUsRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'notification',
          factory: $NotificationRouteExtension._fromState,
        ),
      ],
    );

extension $ContactRouteExtension on ContactRoute {
  static ContactRoute _fromState(GoRouterState state) => const ContactRoute();

  String get location => GoRouteData.$location(
        '/landing/profile/contact-us',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AboutUsRouteExtension on AboutUsRoute {
  static AboutUsRoute _fromState(GoRouterState state) => const AboutUsRoute();

  String get location => GoRouteData.$location(
        '/landing/profile/about',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
