import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class Failure extends Equatable implements Exception {
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  final String message;
  final int? errorCode;

  ServerFailure(this.message, {this.errorCode});

  @override
  List<Object?> get props => [message, errorCode];

  @override
  bool? get stringify => true;
}

class LocalFailure extends Failure {
  final String message;

  LocalFailure(this.message);

  @override
  List<Object?> get props => [message];

  @override
  bool? get stringify => true;
}

class NoConnectionFailure extends Failure {}