import 'package:flutter/material.dart';

class Grid3 extends StatelessWidget {
  //const Grid2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grid 3'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children:
          List.generate(10, (index){
            return Card(
              child: Column(
                children: [
                  Image.asset('assets/batman.png', height: MediaQuery.of(context).size.height/5),
                  const Center(child: Text('I am Batman'))
                ],
              ),
            );
          }),
        )
    );
  }
}
