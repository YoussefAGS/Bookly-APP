import 'package:bookly_app/core/errors/faluir.dart';
import 'package:bookly_app/features/home/data/data_source/home_local_data_source.dart';
import 'package:bookly_app/features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../data_source/home_remot_data_source.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(this.homeRemoteDataSource, this.homeLocalDataSource);

  @override
  Future<Either<FailureBook, List<BookEntity>>> fetchFutureBook() async{
    try {
      var bookHome =homeLocalDataSource.fetchFutureBook();
      if(bookHome.isEmpty){
        return right(bookHome);
      }
      var bookRemot= await homeRemoteDataSource.fetchFutureBook();
      return right(bookRemot);


    } on Exception {
      return left(FailureBook());

    }
  }

  @override
  Future<Either<FailureBook, List<BookEntity>>> fetchNewFutureBook() async{
    try {
      var bookHome =homeLocalDataSource.fetchNewFutureBook();
      if(bookHome.isEmpty){
        return right(bookHome);
      }
      var bookRemot= await homeRemoteDataSource.fetchNewFutureBook();
      return right(bookRemot);


    } on Exception {
      return left(FailureBook());

    }
  }
}
