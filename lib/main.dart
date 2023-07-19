import 'package:bookly_app/core/utiles/api_service.dart';
import 'package:bookly_app/core/utiles/simple_bloc_observer.dart';
import 'package:bookly_app/features/home/data/data_source/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/data_source/home_remot_data_source.dart';
import 'package:bookly_app/features/home/domain/entites/book_entity.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_News_Book_ues_case.dart';
import 'package:bookly_app/features/home/presintation/manger/Feature_new_books/feature_new_books_bloc.dart';
import 'package:bookly_app/features/home/presintation/manger/feature_book_cubit/featured_books_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'constant.dart';
import 'core/function/setup_Service_locator.dart';
import 'core/utiles/routes.dart';
import 'features/home/data/repo/repo_home_lmpl.dart';
import 'features/home/domain/use_cases/fetch_featured_Book_ues_case.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setUpServceLocator();
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewsFeaturedBox);
  Bloc.observer =SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return FeaturedBooksCubit(
            FetchFeaturedBookUseCase(getIt.get<HomeRepoImpl>()),
          );
        }),
        BlocProvider(create: (context) {
          return FeatureNewBooksCubit(
            FetchNewsdBookUseCase(getIt.get<HomeRepoImpl>()),
          );
        }),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor),
      ),
    );
  }
}
