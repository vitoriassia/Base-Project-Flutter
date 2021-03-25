import 'package:app/view_models/login_viewmodel.dart';
import 'package:get_it/get_it.dart';

import 'core/services/api.dart';
import 'core/storage.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerFactory(() => LoginViewModel());

  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => StorageService());
}
