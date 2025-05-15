import 'package:receitapp_/models/categoria_model.dart';
import 'package:receitapp_/models/ingrediente_model.dart';
import 'package:receitapp_/models/modo_preparo_model.dart';
import 'package:receitapp_/models/user_model.dart';

class ReceitaModel {
  final int id;
  final String titulo;
  final String descricao;
  final List<IngredienteModel> ingredientes;
  final List<ModoPreparoModel> modosPreparo;
  final UserModel usuario;
  final CategoriaModel categoria;


  ReceitaModel({
    required this.id,
    required this.titulo,
    required this.descricao,
    required this.ingredientes,
    required this.modosPreparo,
    required this.usuario,
    required this.categoria,
  });

  factory ReceitaModel.fromJson(Map<String, dynamic> json) {
    return ReceitaModel(
      id: json['id'],
      titulo: json['titulo'],
      descricao: json['descricao'],
      ingredientes: (json['ingredientes'] as List).map((ingrediente) => IngredienteModel.fromJson(ingrediente)).toList(),
      modosPreparo: (json['modosPreparo'] as List).map((modoPreparo) => ModoPreparoModel.fromJson(modoPreparo)).toList(),
      usuario: UserModel.fromJson(json['usuario']),
      categoria: CategoriaModel.fromJson(json['categoria']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'titulo': titulo,
      'descricao': descricao,
      'ingredientes': ingredientes.map((ingrediente) => ingrediente.toJson()).toList(),
      'modosPreparo': modosPreparo.map((modoPreparo) => modoPreparo.toJson()).toList(),
      'usuario': usuario.toJson(),
      'categoria': categoria.toJson(),
    };
  }


}