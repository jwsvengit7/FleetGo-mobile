part of '../../../core/router/app_routes.dart';

@TypedShellRoute<AppShell>(
  routes: [
    // Landing subtree
    TypedGoRoute<LandingPageRoute>(
      path: '/landing',
      routes: [
        TypedGoRoute<DashboardRoute>(path: 'dashboard'),
        TypedGoRoute<FavouriteRoute>(path: 'favorites'),
        TypedGoRoute<ProfileRoute>(path: 'profile'),
        TypedGoRoute<NotificationRoute>(path: 'notification'),
      ],
    ),

    // Cars subtree
    TypedGoRoute<CarsRoute>(
      path: '/cars',
      routes: [
        TypedGoRoute<CarDetailsRoute>(path: ':name'),
        TypedGoRoute<BookingListRoute>(path: ':name/booking-list'),
      ],
    ),
  ],
)
class AppShell extends ShellRouteData {
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return BlocProvider(
      create: (_) => CarsBloc(initialCars: mockCars), // shared for both
      child: navigator,
    );
  }
}
