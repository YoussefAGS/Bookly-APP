import '../entites/book_entity.dart';

abstract class HomeRepo{
  Future<List<BookEntity>> fetchFutureBook();
  Future<List<BookEntity>> fetchNewFutureBook();
}