import 'package:flutter/material.dart';
import 'package:tasky/model/tasks_list_model.dart';

class TaskListCard extends StatefulWidget{

  final TasksList item;

  TaskListCard(this.item);

  @override
  _TaskListCardState createState() => _TaskListCardState(item);
}

class _TaskListCardState extends State<TaskListCard>{

  final TasksList item;

  _TaskListCardState(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.all(16.0),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(16.0)
      ),
      child: new Column(
        children: <Widget>[
          new Text( item.name.toUpperCase(),
          style: new TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
          new Text("Tasks: 14",
          style: new TextStyle(
            fontSize: 16.0,
            color: Colors.grey
          ),)
        ],
      ),
    );
  }

}