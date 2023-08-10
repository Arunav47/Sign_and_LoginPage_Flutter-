import 'package:firstapp/loginpage.dart';
import 'package:flutter/material.dart';

class CreateaccScreen extends StatefulWidget{
  @override
  State createState() => _CreateaccScreenPage();
} 

class _CreateaccScreenPage extends State<CreateaccScreen>{

  final signupkey = GlobalKey<FormState>();
  final TextEditingController _passwordcontroller = TextEditingController();

  bool isValidPassword(String? val){
    String regex = r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[@$%!*#&])[A-Za-z0-9@$%!*#&]{8,}$';
    RegExp regexp = RegExp(regex);
    if (val!=null && val.isNotEmpty && regexp.hasMatch(val)) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: 
      new Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            new Image(image: AssetImage('assets/bg2.jpg'),
            fit: BoxFit.cover,
            ),
            Center(
              child: new Container(
                child: new Form(
                  key: signupkey,
                    child: new SingleChildScrollView(
                      child: new Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Container(
                            padding: EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Text("Welcome To Routine",
                             style: TextStyle(fontSize: 45,
                             ),),
                          ),
                          new Container(
                            margin: EdgeInsets.only(left: 10),
                            alignment: Alignment.topLeft,
                            child: Text("Create a new account",
                             style: new TextStyle(color: Color.fromARGB(255, 112, 111, 111)),),
                            //  padding: EdgeInsets.only(top: 30),
                          ),
                          new Container(
                            child: new TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 13, 3, 90),
                                  width: 2,
                                )),
                                labelText: "User Name",
                                labelStyle: TextStyle(color: Colors.black,),
                                hintText: "Create A User Name",
                                suffixIcon: Icon(Icons.person, color: Color.fromARGB(255, 19, 3, 2),)),
                            ),
                            padding: EdgeInsets.only(top: 30),
                            margin: EdgeInsets.only(left: 10, right: 10),
                          ),
                          new Container(
                            child: new TextFormField(
                              decoration: InputDecoration(
                                labelText: "Email ID",
                                labelStyle: TextStyle(color: Colors.black),
                                hintText: "Enter your Email ID",
                                suffixIcon: Icon(Icons.email,
                                color: Colors.black,),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(width: 2),
                                ),
                              ),
                            ),
                            padding: EdgeInsets.only(top:20, left: 10, right: 10),
                          ),
                          new Container(
                            child: new TextFormField(
                              // autovalidateMode: AutovalidateMode.onUserInteraction,
                              controller: _passwordcontroller,
                              validator:(value) => !isValidPassword(value) ? "Create a Strong Password": null,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Create Password",
                                labelStyle: TextStyle(color: Colors.black),
                                hintText: "Create a Strong Password",
                                suffixIcon: Icon(Icons.lock,
                                color: Colors.black,),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(width: 2),
                                ),
                              ),
                            ),
                            padding: EdgeInsets.only(top:20, left: 10, right: 10),
                          ),
                          new Container(
                            child: new TextFormField(
                              // autovalidateMode: AutovalidateMode.onUserInteraction,
                              obscureText: true,
                              validator: (value) {
                                if (value!=null && value.isNotEmpty && value == _passwordcontroller.text) {
                                  return null;
                                }
                                return "The Password does not match";
                              },
                              decoration: InputDecoration(
                                labelText: "Confirm Password",
                                labelStyle: TextStyle(color: Colors.black),
                                hintText: "Enter the Password",
                                suffixIcon: Icon(Icons.lock,
                                color: Colors.black,),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(width: 2),
                                ),
                              ),
                            ),
                            padding: EdgeInsets.only(top:20, left: 10, right: 10),
                          ),
                          new Container(
                            child: new ElevatedButton(onPressed: (){
                              signupkey.currentState!.validate();
                            }, child: Text("Sign Up"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade400,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)) ,
                              side: BorderSide(color: Colors.blue.shade500, width: 2)
                            ),
                            ),
                            padding: EdgeInsets.only(top: 50,),
                            width: 140,
                            height: 90,
                          ),
                          new Container(
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Text('Already have an account?'),
                                new TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new LoginScreen()));
                                }, child: Text("Sign in"))
                              ],
                            ),
                          )       
                        ],
                      ),
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