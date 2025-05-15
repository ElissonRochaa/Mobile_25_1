class ModoPreparoModel {
  final int id;
  final String passo;
  final int receitaId;

  ModoPreparoModel({required this.id, required this.passo, required this.receitaId});

  factory ModoPreparoModel.fromJson(Map<String, dynamic> json) {
    return ModoPreparoModel(
      id: json['id'],
      passo: json['passo'],
      receitaId: json['receitaId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'passo': passo,
      'receitaId': receitaId,
    };
  }

}