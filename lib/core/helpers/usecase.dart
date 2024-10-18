import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class Usecase<Type, Params, FailureType> {
  Future<Either<FailureType, Type>> call(Params params);

  const Usecase();
}

class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object?> get props => [];
}
