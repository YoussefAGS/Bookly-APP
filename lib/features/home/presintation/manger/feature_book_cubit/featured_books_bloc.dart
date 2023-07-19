import 'dart:async';

import 'package:bookly_app/features/home/domain/use_cases/fetch_featured_Book_ues_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/entites/book_entity.dart';

part 'featured_books_event.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBookUseCase) : super(FeaturedBooksInitial());
  final FetchFeaturedBookUseCase featuredBookUseCase;

  Future<void> FetchFeaturedBook() async {
    emit(FeaturedBooksLoading());
    var resalt = await featuredBookUseCase.call();
    resalt.fold((failure) => emit(FeaturedBooksFailure(failure.message)),
        (book) => emit(FeaturedBooksSuccess(book)));
  }
}
