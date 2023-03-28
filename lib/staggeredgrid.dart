import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myprojectfeb/cuswidget.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      //theme: ThemeData(primarySwatch: Colors.blue),
      home: StGrid(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class StGrid extends StatelessWidget {
  //const StGrid({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered Grid using dependencies'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 15,
            children: [
              const StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Card(
                    color: Colors.grey,
                  )),
              const StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    color: Colors.purple,
                  )),
              const StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    color: Colors.orange,
                  )),
              const StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: Card(
                    color: Colors.white38,
                  )),
              const StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Card(
                    color: Colors.cyan,
                  )),
              const StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 0.5,
                  child: Card(
                    color: Colors.lime,
                  )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 2,
                  child: CustomWidget(
                    bgColor: Colors.blueGrey,
                    title: const Text('HELLO'),
                    icon: const Icon(Icons.dangerous_outlined),
                    onpress: () {},
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
