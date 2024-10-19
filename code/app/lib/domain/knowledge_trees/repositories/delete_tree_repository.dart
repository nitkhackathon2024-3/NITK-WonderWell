import 'package:dartz/dartz.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';

abstract class DeleteTreeRepository {
  Future<Either<AppFailure, bool>> deleteTree(String treeid);
}