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
    
    //var brick = Brick(brickName: 'Vision', brickImage: 'assets/vision.jpg');
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(5.0),
      child: Wall(),
    ));
  }
}

class Wall extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WallState();
  }
}

class _WallState extends State<Wall> {
  final oneItem = [
    {"name": "Vision", "image": "assets/vision.jpg"},
    {"name": "Why join CBC ?", "image": "assets/vision.jpg"}
  ];

  final twoItems = [
    {"name": "Gallery", "image": "assets/children.jpg"},
    {"name": "Articles", "image": "assets/children.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
      GridView.builder(
        itemCount: oneItem.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (BuildContext context, int index) {
          return Brick(
            brickName: oneItem[index]['name'],
            brickImage: oneItem[index]['image'],
          );
        }),
      GridView.builder(
        itemCount: twoItems.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Brick(
            brickName: twoItems[index]['name'],
            brickImage: twoItems[index]['image'],
          );
        })
        ],
    );
  }
}

class Brick extends StatelessWidget {
  final brickName;
  final brickImage;

  Brick({this.brickName, this.brickImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(2.0),
        child: GridTile(
          child: Image.asset(brickImage),
          footer: Container(
            padding: EdgeInsets.all(3.0),
            child: 
            Text(
              brickName,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
              textAlign: TextAlign.right,
            ),
            color: Colors.black45,
          ),
        ));
  }
}
