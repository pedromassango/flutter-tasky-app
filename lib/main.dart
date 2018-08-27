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
        body: Column(children: <Widget>[
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(color:  Colors.amber,
                  constraints: BoxConstraints.expand(width: 100.0, height: 10.0),
                ),
                Text(
                    mTitle,
                  style: TextStyle(fontSize: 24.0),
                ),
                Container(color:  Colors.amber,
                  constraints: BoxConstraints.expand(width: 100.0, height: 10.0),
                ),
              ],
            ),
          )
        ]
        )
    );
  }
}
