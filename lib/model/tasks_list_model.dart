import 'package:flutter/material.dart';

class TasksListModel{

  final String name;
  final Color bgColor;
  final List<Task> tasks;

  TasksListModel(this.name, this.bgColor, this.tasks);
}

class Task {

  final String name;
  final bool done;

  Task(this.name, this.done);
}