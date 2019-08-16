import 'package:CBC/screens/homepage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  // TextEditingController _useridController = new TextEditingController();
  // TextEditingController _passwordController = new TextEditingController();
  // FocusNode _useridFocusNode = new FocusNode();
  // FocusNode _passFocusNode = new FocusNode();
  // String _userid, _password;
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Color backgroundColor = new Color(0x16777215);
  bool invisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Log In"),
        ),
        body: Form(
            child: Container(
                color: Colors.black,
                child: Stack(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        image: new DecorationImage(
                            image: new AssetImage("assets/home.png"))),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset('assets/logo.png'),
                              maxRadius: 50.0),
                          Text(
                            "Change Bharuch Campaign",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(5.0),
                            color: Colors.black54,
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              maxLines: 1,
                              decoration: InputDecoration(
                                icon: Icon(Icons.email, color: Colors.white54),
                                hintText: "Email ID",
                                hintStyle: TextStyle(color: Colors.white54),
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                              padding: EdgeInsets.all(5.0),
                              color: Colors.black54,
                              child: 
                                  TextFormField(
                                    obscureText: invisible,
                                    style: TextStyle(color: Colors.white),
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.lock, color: Colors.white54),
                                      //border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle:
                                          TextStyle(color: Colors.white54),
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: Text("Forgot Password ?", style: TextStyle(color: Colors.white), textAlign: TextAlign.right,),
                                  onTap: (){
                                    HomePage();
                                  },
                                ),
                          Padding(
                            padding: EdgeInsets.all(25.0),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              padding: EdgeInsets.all(10.0),
                              color: Colors.white70,
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20.0),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ]))));
  }

  
}

// Scaffold(
//        resizeToAvoidBottomInset: true,
//       appBar: AppBar(
//         title: Text("Log In"),
//       ),
//       body: Container(
//       padding: EdgeInsets.all(20.0),
//       child: Center(
//         child: Column(
//         children: <Widget>[
//           CircleAvatar(
//             backgroundColor: Colors.white,
//             child: Image.asset('assets/logo.png'),
//             maxRadius: 50.0
//           ),

//           Text("Change Bharuch Campaign", style: TextStyle(color: Colors.blue, fontSize: 20.0),
//           textAlign: TextAlign.center,
//           ),

//           TextField(
//             maxLines: 1,

//           )

//         ],
//       ),
//       ),
//     )
//     );
