import 'package:flutter/material.dart';

void main() => runApp(new TaskyApp());

final mTitle = "Tasks List";

class TaskyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: mTitle,
      home: HomePage(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: 7.0,
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
                padding: EdgeInsets.only(left: 10.0, right: 5.0),
                child: Text(mTitle, style: new TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),)
              )
            ),
            Expanded(
              flex: 2,
              child: Container( color: Colors.grey, height: 0.5,),
            ),
          ],
        ),
      ),
    );
  }
}
