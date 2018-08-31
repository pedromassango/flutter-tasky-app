import 'package:flutter/material.dart';
import 'new_task.dart';

void main() => runApp(new TaskyApp());

final mTitle = "Tasks";

class TaskyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: mTitle,
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        // All available pages
        '/new': (BuildContext context) => new NewTask()
      },
    );
  }
}

//Home Page
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

// Home Page state
class _HomePageState extends State<HomePage> {


  void _addTaskPressed() => Navigator.of(context).pushNamed('/new');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          Center(
            heightFactor: 6.5,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container( color: Colors.grey, height: 0.5,),
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                        padding: EdgeInsets.only(left: 5.0, right: 5.0),
                        child: new Row(
                          children: <Widget>[
                            Text('Tasks',
                              style: new TextStyle(fontSize: 24.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('Lists',
                              style: new TextStyle(fontSize: 24.0,
                                  color: Colors.grey),
                            )
                          ],
                        )
                    )
                ),
                Expanded(
                  flex: 2,
                  child: Container( color: Colors.grey, height: 0.5,),
                ),
              ],
            ),
          ),
          Center(
            heightFactor: 1.0,
            child: new Column(
              children: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.add),
                  onPressed: _addTaskPressed,
                  iconSize: 30.0,
                ),
                Text('Add List', style: TextStyle(color: Colors.grey))
              ],
            )
          )
        ],
      )
    );
  }
}
