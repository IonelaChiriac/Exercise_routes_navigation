import 'package:flutter/material.dart';
import 'thirdRoute.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Register Page"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 70,
              ),
              _userName(),
              _userEmail(),
              _userPass(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ThirdRoute()));
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),
             ],
          ),
        ),
      ),
    );
  }

  Widget _userName() {
    return Padding(
      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Name',
            hintText: 'Enter your name'),
      ),
    );
  }

  Widget _userEmail() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 25.0, right: 25.0, top: 15, bottom: 0),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
            hintText: 'Enter valid email id as abc@gmail.com'),
      ),
    );
  }
}

  Widget _userPass() {
  return Padding(
    padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 15, bottom: 0),
    //padding: EdgeInsets.symmetric(horizontal: 15),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
          hintText: 'Enter secure password'),
    ),
  );
}
