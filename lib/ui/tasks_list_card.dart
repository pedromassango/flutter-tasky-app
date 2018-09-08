import 'package:flutter/material.dart';
import 'package:tasky/model/tasks_list_model.dart';

class TaskListCard extends StatefulWidget{

  final TasksListModel item;

  TaskListCard(this.item);

  @override
  _TaskListCardState createState() => _TaskListCardState(item);
}

class _TaskListCardState extends State<TaskListCard>{

  final TasksListModel item;

  _TaskListCardState(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 8.0,
      child:  Container(
        width: 160.0,
        height: double.maxFinite,
        margin: new EdgeInsets.only(left: 4.0, right: 4.0),
        padding: const EdgeInsets.only(left: 8.0, top: 32.0, bottom: 8.0, right: 8.0),
        decoration: new BoxDecoration(
            color: item.bgColor,
            borderRadius: BorderRadius.circular(12.0)
        ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text( item.name.toUpperCase(),
              style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
            new Divider(color: Colors.grey,),
            new Text("Tasks: 14",
              style: new TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey
              ),
            )
            //TODO: show tasks of this list
          ],
        ),
      ),
    );
  }

}