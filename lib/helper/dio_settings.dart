import 'package:dio/dio.dart';
import 'package:get_number/helper/catch_exceptions.dart';

class DioSettings {
  static final mainServer = "https://app1.megacom.kg:9090/virtualnums/api/v1/";
  Dio dio = Dio(BaseOptions(
    baseUrl: mainServer,
    connectTimeout: 10000,
    receiveTimeout: 10000,
  ));
  initialSettings() {
    Interceptors interceptors = dio.interceptors;
    interceptors.requestLock.lock();
    interceptors.clear();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      print('ERROR[${options.data}] => PATH: ${options.path}');
      return handler.next(options);
    }, onResponse: (response, handler) {
      print(
          'ERROR[${response.statusCode}] => PATH: ${response.requestOptions.path}');

      return handler.next(response);
    }, onError: (DioError e, handler) {
      print(
          'ERROR[${e.response?.statusCode}] => PATH: ${e.requestOptions.path}');
      CatchException.convertException(e);
      return handler.next(e);
    }));
    interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));
    interceptors.requestLock.unlock();
  }

  DioSettings() {
    initialSettings();
  }
}
