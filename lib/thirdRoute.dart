import 'package:flutter/material.dart';
import 'main.dart';
import 'forthRoute.dart';
import 'fifthRoute.dart';
import 'sixthRoute.dart';
//import 'seventhRoute.dart';

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routes and navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: Text('Column with SingleChildScrollView'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SixthRoute()));
              },
            ),
            TextButton(
              child: Text('Static ListView'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ForthRoute()));
              },
            ),
            TextButton(
              child: Text('Dynamic ListView - ListView.builder()'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FifthRoute()));
              },
            ),
            // RaisedButton(
            //   child: Text('Pic and camera example'),
            //   onPressed: () {
            //     Navigator.push(
            //         context, MaterialPageRoute(builder: (_) => SeventhRoute()));
            //   },
            // ),
            Padding(
              padding: const EdgeInsets.all(55.0),
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomeRoute()));
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white, fontSize: 25),
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
