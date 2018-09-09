import 'package:flutter/material.dart';

//New Task Page
class NewTaskPage extends StatefulWidget {
  NewTaskPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              Text('New',
                                style: new TextStyle(fontSize: 24.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(' List',
                                style: new TextStyle(fontSize: 22.0,
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
                    new TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "List name",
                        contentPadding: EdgeInsets.only(left: 16.0, top: 0.0,right:16.0,bottom: 0.0)
                      ),
                      style: TextStyle(fontSize: 22.0,
                      color: Colors.black,
                      ),
                    ),
                  ],
                )
            )
          ],
        )
    );
  }

}