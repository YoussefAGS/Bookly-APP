import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/faluir.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entites/book_entity.dart';

class FetchNewsdBookUseCase extends UseCase<List<BookEntity>,NoParam>{
  final HomeRepo homeRepo;

  FetchNewsdBookUseCase(this.homeRepo);

  @override
  Future<Either<FailureBook, List<BookEntity>>> call([NoParam? param]) {
    // TODO: implement call
    throw homeRepo.fetchNewFutureBook();
  }



}