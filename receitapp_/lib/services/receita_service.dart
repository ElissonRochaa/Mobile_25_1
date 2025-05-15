import 'package:dio/dio.dart';
import 'package:receitapp_/core/api_client.dart';
import 'package:receitapp_/models/receita_model.dart';

class ReceitaService {
  final ApiClient _apiClient = ApiClient();

  Future<List<ReceitaModel>> fetchReceitas() async {
    try {
      Response response = await _apiClient.get('receitas');
      return (response.data as List).map((json) => ReceitaModel.fromJson(json)).toList();
    } catch (e) {
      throw Exception('1Erro ao buscar receitas');
    }
  }

  Future<List<ReceitaModel>> fetchReceitasByCategoria({required int categoriaId}) async {
    try {
      Response response = await _apiClient.get('receitas/categorias/$categoriaId');
      return (response.data as List).map((json) => ReceitaModel.fromJson(json)).toList();
    } catch (e) {
      throw Exception('2Erro ao buscar receitas:' + e.toString());
    }
  }

}