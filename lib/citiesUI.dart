import 'package:flutter/material.dart';

class Cities extends StatelessWidget {
  var place = ['Delhi', 'London', 'Vancouver', 'New York'];
  var country = ['India', 'Britain', 'Canada', 'USA'];
  var images = [
    'assets/delhi.jpg',
    'assets/london.jpg',
    'assets/van.jpg',
    'assets/ny.jpg'
  ];
  var pop = [
    '19 million',
    '8 million',
    '2.4 million',
    '8.1 million',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text('Cities around world'),
      ),
      body: ListView(
          children: List.generate(
        4,
        (index) => Card(
          child: ListTile(
              title: Text(
                place[index],
                style: TextStyle(fontSize: 22),
              ),
              isThreeLine: true,
              subtitle: Text(
                "${country[index]}\nPopulation:${pop[index]}",
                style: TextStyle(fontSize: 18),
              ),
              leading: Container(
                width: 100,height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(images[index]))),
              )),
        ),
      )),
    );
  }
}
