import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_News_Book_ues_case.dart';
import 'package:meta/meta.dart';

import '../../../domain/entites/book_entity.dart';
import '../../../domain/use_cases/fetch_featured_Book_ues_case.dart';

part 'feature_new_books_event.dart';

part 'feature_new_books_state.dart';

class FeatureNewBooksCubit extends Cubit<FeatureNewBooksState> {
  FeatureNewBooksCubit(this.featuredBookUseCase)
      : super(FeatureNewBooksInitial());
  final FetchNewsdBookUseCase featuredBookUseCase;

  Future<void> FetchFeatureNewBook() async {
    emit(FeatureNewBooksLoading());
    var resalt = await featuredBookUseCase.call();
    resalt.fold((failure) {
      emit(FeatureNewBooksFailure(failure.message));
    }, (book) {
      emit(FeatureNewBooksSuccess(book));
    });
  }
}
