import 'package:get_it/get_it.dart';
import 'presentation/router/app_router.dart';

final locator = GetIt.instance;

initLocator() {
  _appRouterModule();
}

_appRouterModule() {
  locator.registerLazySingleton(() => AppRouter());
}
