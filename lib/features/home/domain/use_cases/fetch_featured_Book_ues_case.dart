import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/faluir.dart';
import '../entites/book_entity.dart';

class FetchFeaturedBookUseCase{
  final HomeRepo homeRepo;

  FetchFeaturedBookUseCase(this.homeRepo);
  Future<Either<FailureBook,List<BookEntity>>> fetchFutureBook(){
    return homeRepo.fetchFutureBook();
  }


}