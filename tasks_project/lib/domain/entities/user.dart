import 'package:flutter/cupertino.dart';

@immutable
class User {
  final String id;
  final String username;

  const User({required this.id, required this.username});

  List<Object?> get props => [id, username];

}