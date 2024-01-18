import 'package:flutter/cupertino.dart';
import 'package:tasks_project/domain/entities/user.dart';

@immutable
class AuthResponse {
  final String accessToken;
  final User user;

  AuthResponse({required this.accessToken, required this.user});

  List<Object?> get props => [accessToken, user];
}