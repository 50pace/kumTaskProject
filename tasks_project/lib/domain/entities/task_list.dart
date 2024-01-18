import 'package:flutter/cupertino.dart';
import 'package:tasks_project/domain/entities/task/task.dart';

@immutable
class TaskList {
  final int count;
  final List<Task> items;

  const TaskList({required this.count, required this.items});

  List<Object?> get props => [count, items];

}