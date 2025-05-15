import 'package:flutter/material.dart';
import '../services/user_service.dart';
import '../models/user_model.dart';

class UserController extends ChangeNotifier {
  final UserService _userService = UserService();
  List<UserModel> users = [];
  bool isLoading = false;

  Future<void> loadUsers() async {
    isLoading = true;
    notifyListeners();

    try {
      users = await _userService.fetchUsers();
    } catch (e) {
      users = [];
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}