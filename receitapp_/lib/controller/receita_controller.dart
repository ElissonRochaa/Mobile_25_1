import 'package:flutter/material.dart';
import 'package:receitapp_/models/receita_model.dart';
import 'package:receitapp_/services/receita_service.dart';

class ReceitaController extends ChangeNotifier {

  final ReceitaService _receitaService = ReceitaService();
  List<ReceitaModel> receitas = [];
  bool isLoading = false;

  Future<void> loadReceitas() async {
    isLoading = true;
    notifyListeners();

    try {
      receitas = await _receitaService.fetchReceitas();
    } catch (e) {
      receitas = [];
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  // Future<void> loadReceitasByCategoria({required int categoriaId}) async {
  //   isLoading = true;
  //   notifyListeners();

  //   try {
  //     receitas = await _receitaService.fetchReceitasByCategoria(categoriaId: categoriaId);
  //   } catch (e, stack) {
  //     receitas = [];
  //     debugPrint('Erro ao carregar receitas da categoria $categoriaId: $e');
  //     debugPrintStack(stackTrace: stack);
  //   } finally {
  //     isLoading = false;
  //     notifyListeners();
  //   }
  // }

  Future<List<ReceitaModel>> loadReceitasByCategoria({required int categoriaId}) async {
  try {
    return await _receitaService.fetchReceitasByCategoria(categoriaId: categoriaId);
  } catch (e) {
    print(e);
    return [];
  }
}



}