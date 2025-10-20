part of '../../../core/router/app_routes.dart';

/// /cars → list of cars, and shared CarsBloc for all children
@TypedGoRoute<CarsRoute>(
  path: '/cars',
  routes: [
            TypedGoRoute<AvailableScreenRoute>(path: 'available'),

    // /cars/:name → details
    TypedGoRoute<CarDetailsRoute>(
      path: ':name',
      routes: [
        // /cars/:name/booking-list → booking list
        TypedGoRoute<BookingListRoute>(path: 'booking-list'),
      ],
    ),
  ],
)
@immutable
class CarsRoute extends GoRouteData {
  const CarsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CarScreen(); // reads CarsBloc inside
  }
}

/// /cars/:name → details page
@immutable
class CarDetailsRoute extends GoRouteData {
  final String name;
  const CarDetailsRoute(this.name);

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CarDetailsScreen(carName: name); // reads CarsBloc inside
  }
}
/// /cars/:name → details page
@immutable
class AvailableScreenRoute extends GoRouteData {
  const AvailableScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AvailableScreen(); // reads CarsBloc inside
  }
}

/// /cars/:name/booking-list → booking list
@immutable
class BookingListRoute extends GoRouteData {
  final String name;
  const BookingListRoute(this.name);

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BookingListScreen(/* carName: name */); // reads CarsBloc inside
  }
}
