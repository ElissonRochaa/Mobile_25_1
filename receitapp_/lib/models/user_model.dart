class UserModel {
  final int id;
  final String nome;
  final String email;
  final String senha;

  UserModel({required this.id, required this.nome, required this.email, required this.senha});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      nome: json['nome'],
      email: json['email'],
      senha: json['senha'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': nome,
      'email': email,
      'senha': senha,
    };
  }
}