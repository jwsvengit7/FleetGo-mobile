part of 'cars_bloc.dart';

@freezed
class CarsEvent with _$CarsEvent {
  const factory CarsEvent.started() = _Started;
  const factory CarsEvent.searchChanged(String query) = _SearchChanged;
  const factory CarsEvent.toggleFavorite(String carName) =
      _ToggleFavorite; // by name
  const factory CarsEvent.cardTapped(String carName) = _CardTapped; // optional
}
