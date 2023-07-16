import 'package:dartz/dartz.dart';

import '../errors/faluir.dart';

abstract class UseCase<Type,Param>{

  Future<Either<FailureBook,Type>> call([Param param]);

}
abstract class NoParam{}