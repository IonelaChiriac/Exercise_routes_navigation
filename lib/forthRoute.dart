import 'package:flutter/material.dart';

class ForthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Static ListView')),
      body: BodyLayout(),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

//Static ListView for items that don't change
Widget _myListView(BuildContext context) {
  //ListTile is used for common layouts that we would want in a ListView, ListTile can also include subtitles, icons, and images
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('Andrei'),
      ),
      ListTile(
        title: Text('Alina'),
      ),
      ListTile(
        title: Text('Elena'),
      ),
      ListTile(
        title: Text('Miha'),
      ),
      ListTile(
        title: Text('Andreea'),
      ),
      ListTile(
        title: Text('Carmen'),
      ),
      ListTile(
        title: Text('Crina'),
      ),
      ListTile(
        title: Text('Mihai'),
      ),
      ListTile(
        title: Text('Adrian'),
      ),
      ListTile(
        title: Text('Nicu'),
      ),
      ListTile(
        title: Text('Gabi'),
      ),
      ListTile(
        title: Text('Gabriela'),
      ),
      ListTile(
        title: Text('Bogdan'),
      ),
      ListTile(
        title: Text('Catalin'),
      ),
      ListTile(
        title: Text('Diana'),
      ),
      ListTile(
        title: Text('Horatiu'),
      ),
    ],
  );
}
