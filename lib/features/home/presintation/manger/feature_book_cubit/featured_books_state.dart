part of 'featured_books_bloc.dart';


abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {

}
class FeaturedBooksLoading extends FeaturedBooksState {

}
class FeaturedBooksFailure extends FeaturedBooksState {
  String errorMessage;

  FeaturedBooksFailure(this.errorMessage);
}
class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntity> book;

  FeaturedBooksSuccess(this.book);
}
