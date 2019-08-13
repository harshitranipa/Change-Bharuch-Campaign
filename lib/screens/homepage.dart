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
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Stack(alignment: Alignment.bottomRight, children: <Widget>[
        //   Card(
        //     margin: EdgeInsets.all(5.0),
        //     child: Image.asset('assets/vision.jpg'),
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(10.0)),
        //   ),
        //   Padding(
        //     padding: EdgeInsets.all(5.0),
        //     child: Text("Vision",
        //         style: TextStyle(
        //             color: Colors.white,
        //             fontSize: 30.0,
        //             backgroundColor: Colors.black54)),
        //   ),
        // ]),

        Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Image.asset('assets/vision.jpg'),
            ),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: Card(
                color: Colors.black38,
                child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "Vision",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    )),
              ),
            )
          ],
        ),

        // child: Text(
        //                   "Vision",
        //                   style: TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 30.0,
        //                   ),
        //                   textAlign: TextAlign.right,
        //                 ),

        Expanded(
          child: Row(
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
          ),
        ),
        Expanded(
            child: Row(
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
        ))
      ],
    );

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
  final wallItem = [
    {"name": "Articles", "image": "assets/children.jpg"},
    {"name": "Volunteers", "image": "assets/children.jpg"},
    {"name": "Gallery", "image": "assets/children.jpg"},
    {"name": "Why join CBC?", "image": "assets/children.jpg"}
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: wallItem.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Brick(
            brickName: wallItem[index]['name'],
            brickImage: wallItem[index]['image'],
          );
        });
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
