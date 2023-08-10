import 'package:firstapp/signuppage.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  @override
  State createState() => _LoginScreenPage();
}

class _LoginScreenPage extends State<LoginScreen>{
  final loginkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      new Container(
          child: new Stack(
            fit: StackFit.expand,
            children: <Widget>[
              new Image(image: new AssetImage('assets/bg2.jpg'),
              fit: BoxFit.cover,
              ),
              Center(
                child: new Container(
                  margin: EdgeInsets.only(left: 10, right: 20),
                  child: new SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Align(
                          alignment: Alignment(-0.9, -0.5),
                          child: new Container(
                            alignment: Alignment(-0.9, -1.5),
                            child: new Text("Hello", style: TextStyle(fontSize: 50,),),
                          ),
                        ),
                        new Container(
                          alignment: Alignment(-0.85, 0.0),
                          child: Text("Sign in to your account", style: TextStyle(
                            color: Colors.grey,
                          ),),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 30)),
                        new Center(  
                          child: new Form(
                            key: loginkey,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  child: new TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      labelText: "Email ID",
                                      hintText: "@gmail.com",
                                      suffixIcon: Icon(Icons.email),
                                    ),
                                  ),
                                ),
                                // new Padding(padding: EdgeInsets.only(top: 25)),
                                new Container(
                                  child: new TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      labelText: "Password",
                                      hintText: "Enter Password",
                                      suffixIcon: Icon(Icons.lock),
                                    ),
                                  ),
                                  padding: EdgeInsets.only(top: 25)
                                ),
                              ],
                            ),
                          ),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 50)),
                        new Container(
                          
                          width: 140,
                          height: 40,
                          child: new ElevatedButton(onPressed: (){
                            loginkey.currentState!.validate();
                          },
                           child: Text("LOGIN", style: TextStyle(
                            fontSize: 17,
                           ),),
                           style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue.shade400,
                            side: BorderSide(color: Colors.blue.shade500, width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                           ),
                           ),
                        ),
                        new Container(
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Text("Do not have an account?"),
                              new TextButton(onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => new CreateaccScreen(),));
                              }, child: new Text("Create one"))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}