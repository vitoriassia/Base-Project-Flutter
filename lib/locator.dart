import 'package:get_it/get_it.dart';

import 'core/api.dart';
import 'core/storage.dart';
import 'view-models/login.viewmodel.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerFactory(() => LoginViewModel());

  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => StorageService());
}
