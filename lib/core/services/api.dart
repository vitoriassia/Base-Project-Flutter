import 'package:app/core/services/storage_service.dart';
import 'package:app/locator.dart';
import 'package:dio/dio.dart';

class Api {
  final dio = new Dio()
    ..options.baseUrl = 'http://api.projetos.innovareti.com.br/api/v1';
  final storageService = locator<StorageService>();

  Api() {
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (Options options) async {
      final bearer = await storageService.accessToken;
      if (bearer != null) {
        options.headers["authorization"] = 'Bearer $bearer';
      }

      return options;
    }));
    dio.interceptors.add(InterceptorsWrapper(onError: (DioError e) async {
      // Do something with response error
      return e.response; //continue
    }));
  }
}
