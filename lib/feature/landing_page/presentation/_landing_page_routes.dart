part of '../../../core/router/app_routes.dart';

@TypedGoRoute<LandingPageRoute>(
  path: '/landing',
  routes: [
    TypedGoRoute<DashboardRoute>(path: 'dashboard'),
    TypedGoRoute<FavouriteRoute>(path: 'favorites'),
    TypedGoRoute<ProfileRoute>(path: 'profile',
    
      routes: [
 
    TypedGoRoute<ContactRoute>(path: 'contact-us'),
    TypedGoRoute<AboutUsRoute>(path: 'about'),
  ],
  ),

    TypedGoRoute<NotificationRoute>(path: 'notification'),
  ],
)
@immutable
class LandingPageRoute extends GoRouteData {
  const LandingPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LandingPage();
  }
}

@immutable
class DashboardRoute extends GoRouteData {
  const DashboardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DashboardPage();
  }
}

class FavouriteRoute extends GoRouteData {
  const FavouriteRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FavouriteScreen();
  }
}

class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfileScreen();
  }
}
class ContactRoute extends GoRouteData {
  const ContactRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ContactUsScreen();
  }
}
class AboutUsRoute extends GoRouteData {
  const AboutUsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AboutUsScreen();
  }
}


class NotificationRoute extends GoRouteData {
  const NotificationRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NotificationScreen();
  }
}
