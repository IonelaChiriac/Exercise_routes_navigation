import 'package:flutter/material.dart';

class FifthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dynamic ListView - ListView.builder()')),
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

//Dynamic ListView - used for a long list with the help of ListView.builder() constructor, itemCount how many list items will be
//The ListView.builder() constructs the repeating list of items.when you have a list of items to display, it’s better to use ListView.builder().
//The required parameter is a function itemBuilder of type IndexedWidgetBuilder with declaration Widget IndexedWidgetBuilder(BuildContext context, int index).Apart from the standard parameter BuildContext, the parameter index specifies the index of the current item to build. Another parameter itemCount of ListView.builder can specify the total number of items. The itemBuilder function will be called only with indices greater than or equal to 0 and less than itemCount.

Widget _myListView(BuildContext context) {
  // backing data
  final europeanCountries = [
    'Albania',
    'Andorra',
    'Armenia',
    'Austria',
    'Azerbaijan',
    'Belarus',
    'Belgium',
    'Bosnia and Herzegovina',
    'Bulgaria',
    'Croatia',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Estonia',
    'Finland',
    'France',
    'Georgia',
    'Germany',
    'Greece',
    'Hungary',
    'Iceland',
    'Ireland',
    'Italy',
    'Kazakhstan',
    'Kosovo',
    'Latvia',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Macedonia',
    'Malta',
    'Moldova',
    'Monaco',
    'Montenegro',
    'Netherlands',
    'Norway',
    'Poland',
    'Portugal',
    'Romania',
    'Russia',
    'San Marino',
    'Serbia',
    'Slovakia',
    'Slovenia',
    'Spain',
    'Sweden',
    'Switzerland',
    'Turkey',
    'Ukraine',
    'United Kingdom',
    'Vatican City'
  ];

  return ListView.builder(
    itemCount: europeanCountries.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(europeanCountries[index]),
      );
    },
  );
}
