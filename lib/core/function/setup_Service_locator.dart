import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/data_source/home_local_data_source.dart';
import '../../features/home/data/data_source/home_remot_data_source.dart';
import '../../features/home/data/repo/repo_home_lmpl.dart';
import '../utiles/api_service.dart';

final getIt=GetIt.instance;

void setUpServceLocator() {
  getIt.registerSingleton<HomeRepoImpl>( HomeRepoImpl(
    homeRemoteDataSource: HomeRemoteDataSourceImpl(ApiService(Dio())),
    homeLocalDataSource: HomeLocalDataSourceImpl(),
  ));
}