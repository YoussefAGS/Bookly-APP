import 'package:bookly_app/core/utiles/api_service.dart';
import 'package:bookly_app/features/home/data/models/BookModel.dart';

import '../../domain/entites/book_entity.dart';

abstract class HomeLocalDataSource{
  List<BookEntity> fetchFutureBook();
  List<BookEntity> fetchNewFutureBook();



}
class HomeRemoteDataSourceImpl extends HomeLocalDataSource{
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  List<BookEntity> fetchFutureBook() {
    // TODO: implement fetchFutureBook
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewFutureBook() {
    // TODO: implement fetchNewFutureBook
    throw UnimplementedError();
  }

  // @override
  // Future<List<BookEntity>> fetchFutureBook()async {
  //   var  data = await apiService.get(endpoint: "v1/volumes?Filtering=free-ebooks&q=computer science");
  //   // TODO: implement fetchFutureBook
  //   List<BookEntity> bokEntity = getbookslist(data);
  //   return bokEntity;
  // }
  //
  //
  //
  // @override
  // Future<List<BookEntity>> fetchNewFutureBook() async{
  //   var  data = await apiService.get(endpoint: "volumes?Filtering=free-ebooks&Sorting=newest &q=computer science");
  //   // TODO: implement fetchFutureBook
  //   List<BookEntity> bokEntity = getbookslist(data);
  //   return bokEntity;
  // }
  // List<BookEntity> getbookslist(Map<String, dynamic> data) {
  //   List<BookEntity> bokEntity=[];
  //   for (var e in data['items']){
  //     bokEntity.add(BookModel.fromJson(e));
  //   }
  //   return bokEntity;
  // }

}