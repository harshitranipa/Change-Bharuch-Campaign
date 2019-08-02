import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var column = Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(5.0),
            child: Image.asset('assets/vision.jpg'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(5.0),
                child: Image.asset('assets/children.jpg'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              Card(
                margin: EdgeInsets.all(5.0),
                child: Image.asset('assets/children.jpg'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ],
          ),),
          Expanded(child: Row(
            children: <Widget>[
              Card(
            margin: EdgeInsets.all(5.0),
            child: Image.asset('assets/children.jpg'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
          ),
          Card(
            margin: EdgeInsets.all(5.0),
            child: Image.asset('assets/children.jpg'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
          ),
            ],
          )
          )
        ],
      );
    return Scaffold(
      body: Container(
          child: column),
    );
  }
}
