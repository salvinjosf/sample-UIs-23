import 'package:flutter/material.dart';

class Grid2 extends StatelessWidget {
  const Grid2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grid 2'),
        ),
        body: GridView.builder(
            itemCount: 11,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (ctx, index) {
              return Card(
                color: Colors.blue[300],
                child: Center(child: Text('Grid $index')),
              );
            }));
  }
}
