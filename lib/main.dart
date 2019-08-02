import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "CBC Wall",
                style: TextStyle(color: Colors.white),
              ),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    accountName: Text('Change Bharuch Campaign'),
                    accountEmail: Text('We Talk Humanity'),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/logo.png'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                    ),
                    title: Text('Home'),
                    onTap: () {
                      HomePage();
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.group_add),
                    title: Text('Join as Volunteer'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                      Navigator.of(context).pop();
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.input),
                    title: Text('Login'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.place),
                    title: Text('Camp Locations'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text('Get in Touch'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                      Navigator.of(context).pop();
                    },
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 5,
                  ),
                  ListTile(
                    leading: Icon(Icons.developer_mode),
                    title: Text('Developers'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
            body: HomePage()));
  }
}
