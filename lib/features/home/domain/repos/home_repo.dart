import 'package:bookly_app/core/errors/faluir.dart';
import 'package:dartz/dartz.dart';

import '../entites/book_entity.dart';

abstract class HomeRepo{
  Future<Either<FailureBook,List<BookEntity>>> fetchFutureBook();
  Future<Either<FailureBook,List<BookEntity>>> fetchNewFutureBook();
}