import 'package:dartz/dartz.dart';

import '../errors/faluir.dart';

abstract class UseCase<Type>{

  Future<Either<FailureBook,Type>> call();

}