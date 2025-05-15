class IngredienteModel {
  final int id;
  final String nome;
  final String quantidade;
  final int receitaId;

  IngredienteModel({
    required this.id,
    required this.nome,
    required this.quantidade,
    required this.receitaId,
  });

  factory IngredienteModel.fromJson(Map<String, dynamic> json) {
    return IngredienteModel(
      id: json['id'],
      nome: json['nome'],
      quantidade: json['quantidade'],
      receitaId: json['receitaId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'quantidade': quantidade,
      'receitaId': receitaId,
    };
  }

}