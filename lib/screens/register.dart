import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterState();
  }
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: Form(
            child: Container(
                color: Colors.black,
                child: Stack(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        image: new DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: new AssetImage("assets/home.png"))),
                  ),
                  SingleChildScrollView(
                    child: Container(
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
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              color: Colors.white30,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.all(5.0),
                                      padding: EdgeInsets.all(3.0),
                                      color: Colors.black54,
                                      child: ListTile(
                                        title: Text(
                                          "New Members",
                                          style: TextStyle(color: Colors.blue, fontSize: 15.0),
                                        ),
                                        subtitle: Text(
                                          "CBC Welcomes all the members willing to work for uplifting our society!",
                                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
                                  Container(
                                   margin: EdgeInsets.all(5.0),
                                    padding: EdgeInsets.all(3.0),
                                    color: Colors.black54,
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        icon: Icon(Icons.person,
                                            color: Colors.white54),
                                        hintText: "Name",
                                        hintStyle:
                                            TextStyle(color: Colors.white54),
                                      ),
                                    ),
                                  ),
                                  Container(
                                   margin: EdgeInsets.all(5.0),
                                    padding: EdgeInsets.all(3.0),
                                    color: Colors.black54,
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        icon: Icon(Icons.home,
                                            color: Colors.white54),
                                        hintText: "Address",
                                        hintStyle:
                                            TextStyle(color: Colors.white54),
                                      ),
                                    ),
                                  ),
                                  Container(
                                   margin: EdgeInsets.all(5.0),
                                    padding: EdgeInsets.all(3.0),
                                    color: Colors.black54,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        icon: Icon(Icons.call,
                                            color: Colors.white54),
                                        hintText: "WhatsApp Mo.",
                                        hintStyle:
                                            TextStyle(color: Colors.white54),
                                      ),
                                    ),
                                  ),
                                  Container(
                                   margin: EdgeInsets.all(5.0),
                                    padding: EdgeInsets.all(3.0),
                                    color: Colors.black54,
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        icon: Icon(Icons.mail,
                                            color: Colors.white54),
                                        hintText: "Email",
                                        hintStyle:
                                            TextStyle(color: Colors.white54),
                                      ),
                                    ),
                                  ),
                                  Container(
                                   margin: EdgeInsets.all(5.0),
                                    padding: EdgeInsets.all(3.0),
                                    color: Colors.black54,
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        enabled: false,
                                        icon: Icon(Icons.person_pin,
                                            color: Colors.white54),
                                        hintText: "Gender",
                                        hintStyle:
                                            TextStyle(color: Colors.white54),
                                      ),
                                    ),
                                  ),
                                  
                                  Container(
                                   margin: EdgeInsets.all(5.0),
                                    padding: EdgeInsets.all(3.0),
                                    color: Colors.black54,
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        icon: Icon(Icons.calendar_today,
                                            color: Colors.white54),
                                        hintText: "Date of Birth",
                                        hintStyle:
                                            TextStyle(color: Colors.white54),
                                      ),
                                    ),
                                  ),
                                  Container(
                                   margin: EdgeInsets.all(5.0),
                                    padding: EdgeInsets.all(3.0),
                                    color: Colors.black54,
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        icon: Icon(Icons.business_center,
                                            color: Colors.white54),
                                        hintText: "Occupation",
                                        hintStyle:
                                            TextStyle(color: Colors.white54),
                                      ),
                                    ),
                                  ),
                                  Container(
                                   margin: EdgeInsets.all(5.0),
                                    padding: EdgeInsets.all(3.0),
                                    color: Colors.black54,
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        icon: Icon(Icons.group_work,
                                            color: Colors.white54),
                                        hintText: "Blood Group",
                                        hintStyle:
                                            TextStyle(color: Colors.white54),
                                      ),
                                    ),
                                  ),
                                  
                               
                                  ListTile(
                                    title: Text("PAGE 2", style: TextStyle(color: Colors.black, ), textAlign: TextAlign.right,),
                                    trailing: Icon(
                                    Icons.navigate_next,
                                    color: Colors.black,
                                    size: 35.0,
                                  ),
                                  onTap: (){

                                  },
                                  )
                                  
                                ],
                              ),
                            ),

                            // Padding(
                            //   padding: EdgeInsets.all(25.0),
                            //   child: RaisedButton(
                            //     shape: RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.circular(50.0)),
                            //     padding: EdgeInsets.all(10.0),
                            //     color: Colors.white70,
                            //     child: Text(
                            //       "Login",
                            //       style: TextStyle(
                            //           color: Colors.black, fontSize: 20.0),
                            //     ),
                            //     onPressed: () {},
                            //   ),
                            // ),
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                ]))));
  }
}
