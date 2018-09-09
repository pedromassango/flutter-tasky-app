import 'package:flutter/material.dart';
import 'package:tasky/model/tasks_list_model.dart';

class TaskListCard extends StatefulWidget{

  final TasksListModel item;

  TaskListCard(this.item);

  @override
  _TaskListCardState createState() => _TaskListCardState();
}

class _TaskListCardState extends State<TaskListCard>{

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 8.0,
      child:  Container(
        width: 164.0,
        height: double.maxFinite,
        margin: new EdgeInsets.only(left: 4.0, right: 4.0),
        padding: const EdgeInsets.only(left: 8.0, top: 32.0, bottom: 8.0, right: 8.0),
        decoration: new BoxDecoration(
            color: widget.item.bgColor,
            borderRadius: BorderRadius.circular(12.0)
        ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text( widget.item.name.toUpperCase(),
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
            Divider(color: Colors.grey,),
            ListView.builder(
              shrinkWrap: true,
              itemCount: widget.item.tasks.length,
              itemBuilder: (c, i){
                var task = widget.item.tasks.elementAt(i);
                return Stack(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.check_box_outline_blank, size: 17.0, color: !task.done ? Colors.white.withOpacity(0.7) : Colors.transparent),
                        Text( task.name,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: task.done ? Colors.white.withOpacity(0.5) : Colors.white,
                          ),
                          softWrap: false,
                        ),
                      ],
                    ),
                    task.done ? Container(
                      width: double.infinity,
                      height: 1.0,
                      color: task.done ? Colors.white.withOpacity(0.7) : Colors.white,
                      margin: EdgeInsets.only(top: 8.0),
                    ) : Container(),
                  ],
                );
              },
            ),

          ],
        ),
      ),
    );
  }

}