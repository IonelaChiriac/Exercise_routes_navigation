import 'package:flutter/material.dart';

class SixthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column with SingleChildScrollView Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              color: Colors.red[600],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              height: 250,
              color: Colors.red[500],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 250,
              color: Colors.yellow[100],
              child: const Center(child: Text('Entry C')),
            ),
          ],
        ),
      ),
    );
  }
}

//ListView the same output as ListView.Builder()

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ListView Example'),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(8),
//         children: <Widget>[
//           Container(
//             height: 50,
//             color: Colors.red[600],
//             child: const Center(child: Text('Entry A')),
//           ),
//           Container(
//             height: 50,
//             color: Colors.red[500],
//             child: const Center(child: Text('Entry B')),
//           ),
//           Container(
//             height: 50,
//             color: Colors.red[100],
//             child: const Center(child: Text('Entry C')),
//           ),
//         ],
//       ),
//     );
//   }
// }

//ListViewBuilder()

// class FifthRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final List<String> entries = <String>['A', 'B', 'C'];
//     final List<int> colorCodes = <int>[600, 500, 100];
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('ListView Builder Example'),
//         ),
//         body: ListView.builder(
//             padding: const EdgeInsets.all(8),
//             itemCount: entries.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Container(
//                 height: 50,
//                 color: Colors.red[colorCodes[index]],
//                 child: Center(child: Text('Entry ${entries[index]}')),
//               );
//             }));
//   }
// }
