import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/features/home/data/repos/home_repo.dart';
import 'package:book_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void setup() {
  getit.registerSingleton<Dio>(Dio());

  getit.registerSingleton<ApiService>(ApiService(getit.get<Dio>()));

  getit.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getit.get<ApiService>()));
}
