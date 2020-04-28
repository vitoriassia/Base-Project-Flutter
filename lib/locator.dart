import 'package:get_it/get_it.dart';

import 'view-models/login.viewmodel.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerFactory(() => LoginViewModel());

  //locator.registerLazySingleton(() => Api());
}
