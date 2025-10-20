import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fleetride/feature/cars/domain/model/cars_details_model.dart';

part 'cars_event.dart';
part 'cars_state.dart';
part 'cars_bloc.freezed.dart';

class CarsBloc extends Bloc<CarsEvent, CarsState> {
  CarsBloc({List<CarsDetailsModel> initialCars = const []})
    : super(CarsState(all: initialCars, visible: initialCars)) {
    on<_Started>(_onStarted);
    on<_SearchChanged>(_onSearchChanged);
    on<_ToggleFavorite>(_onToggleFavorite);
    on<_CardTapped>(_onCardTapped);
  }

  void _onStarted(_Started e, Emitter<CarsState> emit) {
    emit(state.copyWith(visible: _filter(state.query, state.all)));
  }

  void _onSearchChanged(_SearchChanged e, Emitter<CarsState> emit) {
    final q = e.query.trim();
    emit(state.copyWith(query: q, visible: _filter(q, state.all)));
  }

  // 👇 toggle using the car's name as key
  void _onToggleFavorite(_ToggleFavorite e, Emitter<CarsState> emit) {
    final updated = state.all
        .map(
          (c) =>
              c.name == e.carName ? c.copyWith(isFavorite: !c.isFavorite) : c,
        )
        .toList();

    emit(state.copyWith(all: updated, visible: _filter(state.query, updated)));
  }

  void _onCardTapped(_CardTapped e, Emitter<CarsState> emit) {
    // no-op (keep navigation in the UI)
  }

  List<CarsDetailsModel> _filter(String query, List<CarsDetailsModel> list) {
    final q = query.toLowerCase();
    if (q.isEmpty) return List<CarsDetailsModel>.from(list);
    return list.where((c) {
      final text = '${c.brand} ${c.name}'.toLowerCase();
      return text.contains(q);
    }).toList();
  }
}
