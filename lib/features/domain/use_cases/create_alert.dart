import 'package:AligatorMobile/core/errors/failure.dart';
import 'package:AligatorMobile/core/use_cases/success.dart';
import 'package:AligatorMobile/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class CreateAlert implements UseCase<Success, CreateAlertParams> {
  @override
  Future<Either<Failure, Success>> call(CreateAlertParams param) {
      return null;
  }
}

class CreateAlertParams extends Equatable {
  final String message;
  final DateTime postedAt;
  final String postedBy;

  CreateAlertParams({
    @required this.message,
    @required this.postedAt,
    @required this.postedBy,
  });

  @override
  List<Object> get props => [];
}
