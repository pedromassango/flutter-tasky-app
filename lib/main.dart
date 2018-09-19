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
  PageController _pageController = PageController(viewportFraction: 0.5432);

  /// Current bottom navigation index
  int _currentIndex = 0;

  /// tasks list
  static final List<TasksListModel> tasksList = [
    TasksListModel("Trip to Paris", Colors.indigo, [
      Task('Book Flight', true),
      Task('Passport check', true),
      Task('Packing luggage', false),
      Task('Hotel reservation', false),
    ]),
    TasksListModel("My Tasks", Colors.red, [
      Task('Buy milk', false),
      Task('Plan weekend outing', false),
      Task('Publish friday blog post', true),
      Task('Run 3 miles', false),
    ]),
    TasksListModel("On Monday", Colors.orange, [
      Task('Buy milk', false),
      Task('Plan weekend outing', true),
      Task('Wash clothes', true),
      Task('Update database', false),
    ]),
    TasksListModel("Home work", Colors.blue, [
      Task('Study relativity thoery', true),
      Task('Read comics', false),
      Task('Spend minutes maditating', true),
      Task('Hit the books at 4pm', false),
    ]),
    TasksListModel("Learn Flutter", Colors.purple, [
      Task('Buy milk', true),
      Task('Plan weekend outing', true),
      Task('Publish friday blog post', true),
      Task('Run 3 miles', false),
    ]),
  ];

  void _openTask(){

  }

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
          new Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 4.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black45),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: new IconButton(
                  icon: new Icon(Icons.add),
                  onPressed: _addTaskPressed,
                ),
              ),
              Text('Add List', style: TextStyle(color: Colors.grey))
            ],
          ),
          GestureDetector(
            onTap: _openTask,
            child: Container(
              margin: EdgeInsets.only(top: 32.0, bottom: 8.0),
              height: 300.0,
              child: PageView(
                controller: _pageController,
                children: tasksList.map((task){
                  return TaskListCard(task);
                }).toList(),
              )
            ),
          )
        ],
      )
    );
  }
}
