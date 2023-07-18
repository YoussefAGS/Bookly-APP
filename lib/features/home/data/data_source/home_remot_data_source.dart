import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utiles/api_service.dart';
import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:hive/hive.dart';

import '../../../../core/function/save_books.dart';
import '../../domain/entites/book_entity.dart';

abstract class HomeRemoteDataSource{
  Future<List<BookEntity>> fetchFutureBook();
  Future<List<BookEntity>> fetchNewFutureBook();



}
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFutureBook()async {
   var  data = await apiService.get(endpoint: "v1/volumes?Filtering=free-ebooks&q=computer science");
    // TODO: implement fetchFutureBook
    List<BookEntity> bokEntity = getbookslist(data);

    saveDataBooks(bokEntity);
    return bokEntity;
  }




  @override
  Future<List<BookEntity>> fetchNewFutureBook() async{
    var  data = await apiService.get(endpoint: "volumes?Filtering=free-ebooks&Sorting=newest &q=computer science");
    // TODO: implement fetchFutureBook
    List<BookEntity> bokEntity = getbookslist(data);
    return bokEntity;
  }
  List<BookEntity> getbookslist(Map<String, dynamic> data) {
    List<BookEntity> bokEntity=[];
    for (var e in data['items']){
      bokEntity.add(BookModel.fromJson(e));
    }
    return bokEntity;
  }

}