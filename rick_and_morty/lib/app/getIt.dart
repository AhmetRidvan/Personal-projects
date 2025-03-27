import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/services/api_service.dart';

final locator =
    GetIt
        .instance; // sürekli olarak aynı nesne yeniden yeniden yeni nesne oluşturmuyorsun

void setupGetIt() {
  locator.registerLazySingleton<ApiService>(() {
    return ApiService();
  });
}
