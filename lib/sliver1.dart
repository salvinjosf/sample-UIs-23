
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      //theme: ThemeData(primarySwatch: Colors.blue),
      home: Sliver1(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Sliver1 extends StatelessWidget {
  //const Sliver1({Key? key}) : super(key: key);
var color=[50,900,100,800,200,700,300,600,400,500,300,50];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.red,
            floating: true,
            pinned: true,
            title: const Text('Sliver Appbar'),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_sharp))
            ],
            bottom: AppBar(backgroundColor: Colors.red,
              title: Container(
                height: 40,width: double.infinity,color: Colors.white,
                child: const TextField(decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: Icon(Icons.camera_alt),
                  prefixIcon:Icon(Icons.search)),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Container(height: 80,child: Text('hello'),
              color: Colors.blue[color[index]],
            );
          }, childCount: 12))
        ],
      ),
    );
  }
}
