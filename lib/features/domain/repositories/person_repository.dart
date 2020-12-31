import 'package:AligatorMobile/features/domain/entities/person.dart';
import 'package:dartz/dartz.dart';
import 'package:AligatorMobile/core/errors/failure.dart';

abstract class PersonRepository {
    Future<Either<Failure, Person>> getPersonByName(String name);
}
