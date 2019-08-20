import 'package:flutter/material.dart';
import 'screens/homepage.dart';
import 'package:CBC/screens/login.dart';
import 'package:CBC/screens/register.dart';

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
        home: CbcWall());
  }
}

class CbcWall extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
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
                      Navigator.pop(context);
                      HomePage();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.group_add),
                    title: Text('Join as Volunteer'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.input),
                    title: Text('Login'),
                    onTap: () {
                     Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Events / Upcoming Camps'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.place),
                    title: Text('Camp Locations'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text('Get in Touch'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
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
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                ],
              ),
            ),
            body: HomePage());
  }

} 
void push(BuildContext context) async{
  await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Login()),
  );
}