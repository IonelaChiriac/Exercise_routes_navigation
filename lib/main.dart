import 'package:flutter/material.dart';
import 'secondRoute.dart';
import 'thirdRoute.dart';
import 'forthRoute.dart';
import 'fifthRoute.dart';
import 'sixthRoute.dart';

//main() function, the entry point of the program execution

main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeRoute(),
        '/second': (context) => SecondRoute(),
        '/third': (context) => ThirdRoute(),
        '/forth': (context) => ForthRoute(),
        '/fifth': (context) => FifthRoute(),
        '/sixth': (context) => SixthRoute(),
      },
    ),
  );
}

//HomeRoute class which takes an object of LoginPage class as a parameter of the home property
class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),

    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

//all widgets are placed inside the Column widget, into the Scaffold body
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child:   Column(
          children: <Widget>[
            //Padding widget helps to give some space all around the TextField widget
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 250,
                    child: Image.asset('images/flutter.png')),
              ),
            ),
            _userName(),
            _userPass(),

            //FlatButton widget is used for the login button, for some space and decoration is wraped inside a padding and a container widget
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40)),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    // to switch to a new route, Navigator.push() method is used
                    //the push() method adds a Route to the stack of routes managed by the Navigator
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ThirdRoute()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SecondRoute()));
              },
              child: Text(
                //for the apostrophe in a word \ is used
                'Don\'t have an account? Register here.',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _userName() {
    return Padding(
      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
      padding: EdgeInsets.symmetric(horizontal: 25),
      //TextField widget for username and password. TextField widget is an input widget that helps to take an input from the user
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Username',
            hintText: 'Enter valid email id as abc@gmail.com'),
      ),
    );
  }

  Widget _userPass() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 25.0, right: 25.0, top: 15, bottom: 0),
      //padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        //obscureText : true property helps to display special character in the textfield instead of actual letters
        obscureText: true,
        //TextField widget has decoration property that takes InputDecoration widget to design textfield
        decoration: InputDecoration(
            //border property specifies OutlineInputBorder widget to give outline to textfield.
            border: OutlineInputBorder(),
            //labelText property helps to write labels for textfield so that users can understand what they needs to input in that particular textfield.
            labelText: 'Password',
            //hintText property helps to write specific hint about user input
            hintText: 'Enter secure password'),
      ),
    );
  }
}

