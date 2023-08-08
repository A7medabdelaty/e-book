import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/services/details/data/repos/details_repo_impl.dart';
import 'package:bookly/services/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<DetailsRepoImpl>(
      DetailsRepoImpl(getIt.get<ApiService>()));
}
