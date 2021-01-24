import 'package:AligatorMobile/core/errors/failure.dart';
import 'package:AligatorMobile/features/domain/entities/person.dart';
import 'package:AligatorMobile/features/domain/repositories/person_repository.dart';
import 'package:dartz/dartz.dart';

class PersonRepositoryImpl extends PersonRepository {
  @override
  Future<Either<Failure, Person>> getLoggedPerson() async {
    return Right(Person(name: 'Filho'));
  }

  @override
  Future<Either<Failure, Person>> getPersonByName(String name) {
    // TODO: implement getPersonByName
    throw UnimplementedError();
  }
}
