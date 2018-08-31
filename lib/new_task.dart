import 'package:flutter/material.dart';


class NewTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "New Task List",
      home: NewTaskPage(),
      routes: <String, WidgetBuilder>{
        // All available pages

      },
    );
  }
}

//Home Page
class NewTaskPage extends StatefulWidget {
  NewTaskPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage>{
  @override
  Widget build(BuildContext context) {
    return Text('Hey');
  }

}