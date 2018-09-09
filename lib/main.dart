import 'package:flutter/material.dart';
import 'new_task.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:tasky/model/tasks_list_model.dart';
import 'package:tasky/ui/tasks_list_card.dart';

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
        '/new': (BuildContext context) => new NewTaskPage()
      },
      color: Colors.amber,
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


  /// Navigate to new task list
  void _addTaskPressed() => Navigator.of(context).pushNamed('/new');

  /// Current bottom navigation index
  int _currentIndex = 0;

  /// tasks list
  static final List<TasksListModel> tasksList = [
    TasksListModel("Trip to Paris", Colors.amber),
    TasksListModel("My Tasks", Colors.red),
    TasksListModel("On Monday", Colors.indigo),
    TasksListModel("Home work", Colors.purple),
    TasksListModel("Learn Flutter", Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.black,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("")
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.calendar_today),
              title: new Text("")
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.playlist_add_check),
              title: new Text("")
          )
        ],
      ),
      body: new Column(
        children: <Widget>[
          Center(
            heightFactor: 6.0,
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
                              style: new TextStyle(fontSize: 20.0,
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
          ),
          Container(
            margin: EdgeInsets.only(top: 32.0, bottom: 8.0),
            height: 300.0,
            child: ListView.builder(itemBuilder: (c, i){
              var item = tasksList.elementAt(i);
              return new TaskListCard(item);
            },
            itemCount: tasksList.length,
            scrollDirection: Axis.horizontal,)
          )
        ],
      )
    );
  }
}
