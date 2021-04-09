import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:lakshmipur_high_school/data/repository/banner_repo.dart';
import 'package:lakshmipur_high_school/data/repository/campaign_repo.dart';
import 'package:lakshmipur_high_school/data/repository/category_repo.dart';
import 'package:lakshmipur_high_school/data/repository/restaurant_repo.dart';
import 'package:lakshmipur_high_school/provider/banner_provider.dart';
import 'package:lakshmipur_high_school/provider/campaignProvider.dart';
import 'package:lakshmipur_high_school/provider/category_provider.dart';
import 'package:lakshmipur_high_school/provider/restaurant_provider.dart';
import 'package:lakshmipur_high_school/provider/theme_provider.dart';
import 'package:lakshmipur_high_school/utill/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'data/datasource/remote/dio/dio_client.dart';
import 'data/datasource/remote/dio/logging_interceptor.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core
  sl.registerLazySingleton(() => DioClient(AppConstants.BASE_URL, sl(), loggingInterceptor: sl(), sharedPreferences: sl()));

  // Repository
 // sl.registerLazySingleton(() => SplashRepo(sharedPreferences: sl(), dioClient: sl()));
  sl.registerLazySingleton(() => CategoryRepo());
  sl.registerLazySingleton(() => CampaignRepo());
  sl.registerLazySingleton(() => BannerRepo());
  sl.registerLazySingleton(() => RestaurantRepo());

  // Provider
  sl.registerFactory(() => ThemeProvider(sharedPreferences: sl()));
  sl.registerFactory(() => CategoryProvider(categoryRepo: sl()));
  sl.registerFactory(() => CampaignProvider(campaignRepo: sl()));
  sl.registerFactory(() => BannerProvider(bannerRepo: sl()));
  sl.registerFactory(() => RestaurantProvider(restaurantRepo: sl()));



  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => LoggingInterceptor());
}
