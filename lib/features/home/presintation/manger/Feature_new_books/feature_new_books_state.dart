part of 'feature_new_books_bloc.dart';

abstract class FeatureNewBooksState {}

class FeatureNewBooksInitial extends FeatureNewBooksState {}


class FeatureNewBooksLoading extends FeatureNewBooksState {

}
class FeatureNewBooksFailure extends FeatureNewBooksState {
  String errorMessage;

  FeatureNewBooksFailure(this.errorMessage);
}
class FeatureNewBooksSuccess extends FeatureNewBooksState {
  final List<BookEntity> book;

  FeatureNewBooksSuccess(this.book);
}
