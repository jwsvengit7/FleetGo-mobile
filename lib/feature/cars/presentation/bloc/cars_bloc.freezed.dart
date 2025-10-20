// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cars_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CarsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchChanged,
    required TResult Function(String carName) toggleFavorite,
    required TResult Function(String carName) cardTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchChanged,
    TResult? Function(String carName)? toggleFavorite,
    TResult? Function(String carName)? cardTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchChanged,
    TResult Function(String carName)? toggleFavorite,
    TResult Function(String carName)? cardTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_CardTapped value) cardTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_CardTapped value)? cardTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_CardTapped value)? cardTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarsEventCopyWith<$Res> {
  factory $CarsEventCopyWith(CarsEvent value, $Res Function(CarsEvent) then) =
      _$CarsEventCopyWithImpl<$Res, CarsEvent>;
}

/// @nodoc
class _$CarsEventCopyWithImpl<$Res, $Val extends CarsEvent>
    implements $CarsEventCopyWith<$Res> {
  _$CarsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CarsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CarsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchChanged,
    required TResult Function(String carName) toggleFavorite,
    required TResult Function(String carName) cardTapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchChanged,
    TResult? Function(String carName)? toggleFavorite,
    TResult? Function(String carName)? cardTapped,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchChanged,
    TResult Function(String carName)? toggleFavorite,
    TResult Function(String carName)? cardTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_CardTapped value) cardTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_CardTapped value)? cardTapped,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_CardTapped value)? cardTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CarsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SearchChangedImplCopyWith<$Res> {
  factory _$$SearchChangedImplCopyWith(
          _$SearchChangedImpl value, $Res Function(_$SearchChangedImpl) then) =
      __$$SearchChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchChangedImplCopyWithImpl<$Res>
    extends _$CarsEventCopyWithImpl<$Res, _$SearchChangedImpl>
    implements _$$SearchChangedImplCopyWith<$Res> {
  __$$SearchChangedImplCopyWithImpl(
      _$SearchChangedImpl _value, $Res Function(_$SearchChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchChangedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchChangedImpl implements _SearchChanged {
  const _$SearchChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'CarsEvent.searchChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      __$$SearchChangedImplCopyWithImpl<_$SearchChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchChanged,
    required TResult Function(String carName) toggleFavorite,
    required TResult Function(String carName) cardTapped,
  }) {
    return searchChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchChanged,
    TResult? Function(String carName)? toggleFavorite,
    TResult? Function(String carName)? cardTapped,
  }) {
    return searchChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchChanged,
    TResult Function(String carName)? toggleFavorite,
    TResult Function(String carName)? cardTapped,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_CardTapped value) cardTapped,
  }) {
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_CardTapped value)? cardTapped,
  }) {
    return searchChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_CardTapped value)? cardTapped,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchChanged implements CarsEvent {
  const factory _SearchChanged(final String query) = _$SearchChangedImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleFavoriteImplCopyWith<$Res> {
  factory _$$ToggleFavoriteImplCopyWith(_$ToggleFavoriteImpl value,
          $Res Function(_$ToggleFavoriteImpl) then) =
      __$$ToggleFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String carName});
}

/// @nodoc
class __$$ToggleFavoriteImplCopyWithImpl<$Res>
    extends _$CarsEventCopyWithImpl<$Res, _$ToggleFavoriteImpl>
    implements _$$ToggleFavoriteImplCopyWith<$Res> {
  __$$ToggleFavoriteImplCopyWithImpl(
      _$ToggleFavoriteImpl _value, $Res Function(_$ToggleFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carName = null,
  }) {
    return _then(_$ToggleFavoriteImpl(
      null == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleFavoriteImpl implements _ToggleFavorite {
  const _$ToggleFavoriteImpl(this.carName);

  @override
  final String carName;

  @override
  String toString() {
    return 'CarsEvent.toggleFavorite(carName: $carName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFavoriteImpl &&
            (identical(other.carName, carName) || other.carName == carName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFavoriteImplCopyWith<_$ToggleFavoriteImpl> get copyWith =>
      __$$ToggleFavoriteImplCopyWithImpl<_$ToggleFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchChanged,
    required TResult Function(String carName) toggleFavorite,
    required TResult Function(String carName) cardTapped,
  }) {
    return toggleFavorite(carName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchChanged,
    TResult? Function(String carName)? toggleFavorite,
    TResult? Function(String carName)? cardTapped,
  }) {
    return toggleFavorite?.call(carName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchChanged,
    TResult Function(String carName)? toggleFavorite,
    TResult Function(String carName)? cardTapped,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(carName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_CardTapped value) cardTapped,
  }) {
    return toggleFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_CardTapped value)? cardTapped,
  }) {
    return toggleFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_CardTapped value)? cardTapped,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(this);
    }
    return orElse();
  }
}

abstract class _ToggleFavorite implements CarsEvent {
  const factory _ToggleFavorite(final String carName) = _$ToggleFavoriteImpl;

  String get carName;
  @JsonKey(ignore: true)
  _$$ToggleFavoriteImplCopyWith<_$ToggleFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardTappedImplCopyWith<$Res> {
  factory _$$CardTappedImplCopyWith(
          _$CardTappedImpl value, $Res Function(_$CardTappedImpl) then) =
      __$$CardTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String carName});
}

/// @nodoc
class __$$CardTappedImplCopyWithImpl<$Res>
    extends _$CarsEventCopyWithImpl<$Res, _$CardTappedImpl>
    implements _$$CardTappedImplCopyWith<$Res> {
  __$$CardTappedImplCopyWithImpl(
      _$CardTappedImpl _value, $Res Function(_$CardTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carName = null,
  }) {
    return _then(_$CardTappedImpl(
      null == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CardTappedImpl implements _CardTapped {
  const _$CardTappedImpl(this.carName);

  @override
  final String carName;

  @override
  String toString() {
    return 'CarsEvent.cardTapped(carName: $carName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardTappedImpl &&
            (identical(other.carName, carName) || other.carName == carName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardTappedImplCopyWith<_$CardTappedImpl> get copyWith =>
      __$$CardTappedImplCopyWithImpl<_$CardTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchChanged,
    required TResult Function(String carName) toggleFavorite,
    required TResult Function(String carName) cardTapped,
  }) {
    return cardTapped(carName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchChanged,
    TResult? Function(String carName)? toggleFavorite,
    TResult? Function(String carName)? cardTapped,
  }) {
    return cardTapped?.call(carName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchChanged,
    TResult Function(String carName)? toggleFavorite,
    TResult Function(String carName)? cardTapped,
    required TResult orElse(),
  }) {
    if (cardTapped != null) {
      return cardTapped(carName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_CardTapped value) cardTapped,
  }) {
    return cardTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_CardTapped value)? cardTapped,
  }) {
    return cardTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_CardTapped value)? cardTapped,
    required TResult orElse(),
  }) {
    if (cardTapped != null) {
      return cardTapped(this);
    }
    return orElse();
  }
}

abstract class _CardTapped implements CarsEvent {
  const factory _CardTapped(final String carName) = _$CardTappedImpl;

  String get carName;
  @JsonKey(ignore: true)
  _$$CardTappedImplCopyWith<_$CardTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CarsState {
  List<CarsDetailsModel> get all => throw _privateConstructorUsedError;
  List<CarsDetailsModel> get visible => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarsStateCopyWith<CarsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarsStateCopyWith<$Res> {
  factory $CarsStateCopyWith(CarsState value, $Res Function(CarsState) then) =
      _$CarsStateCopyWithImpl<$Res, CarsState>;
  @useResult
  $Res call(
      {List<CarsDetailsModel> all,
      List<CarsDetailsModel> visible,
      String query,
      bool isLoading,
      String? error});
}

/// @nodoc
class _$CarsStateCopyWithImpl<$Res, $Val extends CarsState>
    implements $CarsStateCopyWith<$Res> {
  _$CarsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
    Object? visible = null,
    Object? query = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as List<CarsDetailsModel>,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as List<CarsDetailsModel>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarsStateImplCopyWith<$Res>
    implements $CarsStateCopyWith<$Res> {
  factory _$$CarsStateImplCopyWith(
          _$CarsStateImpl value, $Res Function(_$CarsStateImpl) then) =
      __$$CarsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CarsDetailsModel> all,
      List<CarsDetailsModel> visible,
      String query,
      bool isLoading,
      String? error});
}

/// @nodoc
class __$$CarsStateImplCopyWithImpl<$Res>
    extends _$CarsStateCopyWithImpl<$Res, _$CarsStateImpl>
    implements _$$CarsStateImplCopyWith<$Res> {
  __$$CarsStateImplCopyWithImpl(
      _$CarsStateImpl _value, $Res Function(_$CarsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
    Object? visible = null,
    Object? query = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$CarsStateImpl(
      all: null == all
          ? _value._all
          : all // ignore: cast_nullable_to_non_nullable
              as List<CarsDetailsModel>,
      visible: null == visible
          ? _value._visible
          : visible // ignore: cast_nullable_to_non_nullable
              as List<CarsDetailsModel>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CarsStateImpl extends _CarsState {
  const _$CarsStateImpl(
      {final List<CarsDetailsModel> all = const <CarsDetailsModel>[],
      final List<CarsDetailsModel> visible = const <CarsDetailsModel>[],
      this.query = '',
      this.isLoading = false,
      this.error})
      : _all = all,
        _visible = visible,
        super._();

  final List<CarsDetailsModel> _all;
  @override
  @JsonKey()
  List<CarsDetailsModel> get all {
    if (_all is EqualUnmodifiableListView) return _all;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_all);
  }

  final List<CarsDetailsModel> _visible;
  @override
  @JsonKey()
  List<CarsDetailsModel> get visible {
    if (_visible is EqualUnmodifiableListView) return _visible;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visible);
  }

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'CarsState(all: $all, visible: $visible, query: $query, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarsStateImpl &&
            const DeepCollectionEquality().equals(other._all, _all) &&
            const DeepCollectionEquality().equals(other._visible, _visible) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_all),
      const DeepCollectionEquality().hash(_visible),
      query,
      isLoading,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarsStateImplCopyWith<_$CarsStateImpl> get copyWith =>
      __$$CarsStateImplCopyWithImpl<_$CarsStateImpl>(this, _$identity);
}

abstract class _CarsState extends CarsState {
  const factory _CarsState(
      {final List<CarsDetailsModel> all,
      final List<CarsDetailsModel> visible,
      final String query,
      final bool isLoading,
      final String? error}) = _$CarsStateImpl;
  const _CarsState._() : super._();

  @override
  List<CarsDetailsModel> get all;
  @override
  List<CarsDetailsModel> get visible;
  @override
  String get query;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$CarsStateImplCopyWith<_$CarsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
