import 'package:AligatorMobile/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<ReturnType, ParameterType> {
  Future<Either<Failure, ReturnType>> call(ParameterType param);
}
