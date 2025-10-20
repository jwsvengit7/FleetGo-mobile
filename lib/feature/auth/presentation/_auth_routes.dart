part of '../../../core/router/app_routes.dart';

/// -------- Auth stack --------
/// /auth           -> LandingScreen (3 big buttons)
/// /auth/signin    -> EmailSignInScreen
/// /auth/signup    -> SignUpScreen
@TypedGoRoute<AuthEmailSignInRoute>(
  path: '/auth',
  routes: [
    TypedGoRoute<AuthSignupRoute>(path: 'signup'),
    TypedGoRoute<AuthForgotPasswordRoute>(path: 'forgot'),
    TypedGoRoute<AuthOtpRoute>(path: 'otp/:identifier'),
    TypedGoRoute<AuthResetPasswordRoute>(path: 'reset/:token'),
    TypedGoRoute<AuthLocationRoute>(path: 'location'),
  ],
)

@immutable
class AuthEmailSignInRoute extends GoRouteData {
  const AuthEmailSignInRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const EmailSignInScreen();
  }
}

@immutable
class AuthSignupRoute extends GoRouteData {
  const AuthSignupRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const auth.SignUpScreen();
  }
}

/// ---------- Recovery flow inside /auth ----------
@immutable
class AuthForgotPasswordRoute extends GoRouteData {
  const AuthForgotPasswordRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ForgotPasswordScreen();
}

@immutable
class AuthOtpRoute extends GoRouteData {
  const AuthOtpRoute({required this.identifier});
  final String identifier;
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      OtpVerificationScreen(identifier: identifier);
}

@immutable
class AuthResetPasswordRoute extends GoRouteData {
  const AuthResetPasswordRoute({required this.token});
  final String token;
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ResetPasswordScreen(token: token);
}

@immutable
class AuthLocationRoute extends GoRouteData {
  const AuthLocationRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final token = state.extra as String?;
    return LocationScreen(token: token);
  }
}
