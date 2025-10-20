// lib/core/either_types.dart
import 'package:fpdart/fpdart.dart';
import 'package:fleetride/core/exceptions.dart';

/// ---------- Legacy/async style used by API/Facade/UI (returns Future) ----------
typedef FutureEitherFailureOr<T> = Future<Either<Failure, T>>;
typedef FutureEitherFailureOrUnit = Future<Either<Failure, Unit>>;

/// ---------- TaskEither style used by service/adapter layer ----------
typedef EitherFailureOr<T> = TaskEither<Failure, T>;
typedef EitherFailureOrUnit = TaskEither<Failure, Unit>;

/// ---------- Names used by AuthenticationFacade & AuthenticationApi ----------
typedef AsyncEitherFailureOr<T> = Future<Either<Failure, T>>;
typedef AsyncEitherFailureOrUnit = Future<Either<Failure, Unit>>;












// import 'package:fpdart/fpdart.dart';
// import 'exceptions.dart';

// typedef EitherFailureOr<T> = Either<Failure, T>;
// typedef EitherFailureOrUnit = Either<Failure, Unit>;

// typedef EitherFailureOr<T> = TaskEither<Failure, T>;
// typedef EitherFailureOrUnit = TaskEither<Failure, Unit>;

// typedef AsyncEitherFailureOr<T> = TaskEither<Failure, T>;
// typedef AsyncEitherFailureOrUnit = TaskEither<Failure, Unit>;



