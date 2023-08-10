import 'package:firstapp/loginpage.dart';
import 'package:firstapp/signuppage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.blue,),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget{
  @override
  State createState() => _FirstScreenPage();
}

class _FirstScreenPage extends State<FirstScreen> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: 
      new Stack(
          fit: StackFit.expand,
          children: [
            new Image(image: AssetImage('assets/bg2.jpg'), fit: BoxFit.cover,),
            new Center(
              child: new SingleChildScrollView(
                child: new Column(
                  children: <Widget>[
                    new Container(
                      child: new Image(
                        image: new AssetImage('assets/rlogocol (1).png'),
                      ),
                      height: 450,
                      width: 450,
                      padding: EdgeInsets.only(bottom: 150),
                    ),
                    // new Padding(padding: EdgeInsets.only(top: 210)),
                    new Container(
                      child: new ElevatedButton(onPressed: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => new LoginScreen()),
                          );
                      },
                       child: Text("Sign In", style: TextStyle(color: Color.fromARGB(255, 14, 11, 10)),),
                       style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 46, 154, 242),
                        side: BorderSide(color: Color.fromARGB(255, 86, 4, 251), width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                       ),
                       ),
                      height: 40,
                      width: 250,
                    ),
                    // new Padding(padding: EdgeInsets.only(top: 20)),
                    new Container(
                      padding: EdgeInsets.only(top: 20),
                      child: new ElevatedButton(onPressed: () {
                        Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => new CreateaccScreen()));
                      },
                       child: Text("Create an Account", style: TextStyle(color: Color.fromARGB(255, 16, 15, 15)),),
                       style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 46, 154, 242),
                        side: BorderSide(color: Color.fromARGB(255, 86, 4, 251), width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                       ),
                       ),
                      height: 60,
                      width: 250,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}