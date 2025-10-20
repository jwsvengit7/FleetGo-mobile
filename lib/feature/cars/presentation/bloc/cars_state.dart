part of 'cars_bloc.dart';

@freezed
class CarsState with _$CarsState {
  const factory CarsState({
    @Default(<CarsDetailsModel>[]) List<CarsDetailsModel> all,
    @Default(<CarsDetailsModel>[]) List<CarsDetailsModel> visible,
    @Default('') String query,
    @Default(false) bool isLoading,
    String? error,
  }) = _CarsState;
  // Optional: add a private ctor if you want getters later
  const CarsState._();
}
