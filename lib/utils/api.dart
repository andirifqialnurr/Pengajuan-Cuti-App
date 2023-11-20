import 'package:dio/dio.dart';

final Dio dio = Dio();

class API {
  final String baseUrl = "https://dayoffapi.vercel.app/api";

  Dio client() {
    return dio;
  }
}
