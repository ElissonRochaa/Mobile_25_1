import 'package:dio/dio.dart';
import '../core/api_client.dart';
import '../models/user_model.dart';

class UserService {
  final ApiClient _apiClient = ApiClient();

  Future<List<UserModel>> fetchUsers() async {
    try {
      Response response = await _apiClient.get('usuarios');
      return (response.data as List).map((json) => UserModel.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Erro ao buscar usuários');
    }
  }
}