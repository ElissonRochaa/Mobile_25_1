import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://10.0.2.2:8080/'));

  Future<Response> get(String endpoint) async {
    return await _dio.get(endpoint);
  }

  Future<Response> post(String endpoint, Map<String, dynamic> data) async {
    return await _dio.post(endpoint, data: data);
  }
}