import 'package:flutter/material.dart';

class Grid5 extends StatelessWidget {
  //const Grid2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'Grid 4',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 30,
          children: const [
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: Center(
                child: Icon(Icons.favorite_border),
              ),
            ),
          ],
        ));
  }
}
