import 'package:get_it/get_it.dart';

import '../view_models/flexible_viewmodel.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<FlexibleViewModel>(() => FlexibleViewModel());
}
