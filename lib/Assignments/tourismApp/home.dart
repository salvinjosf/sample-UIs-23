import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myprojectfeb/Assignments/tourismApp/second.dart';

import 'datapage.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TourismHome(),
      routes: {'secondpage': (context) => second()},
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class TourismHome extends StatelessWidget {
  // const TourismHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple[900],
        bottom: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Popular',
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(5),
        children: datapage.map((page) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: InkWell(
              onTap: () => goto(context, page['id']),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    Image.network(
                      '${page['cover']}',
                      fit: BoxFit.cover,height: MediaQuery.of(context).size.height*.18,width:MediaQuery.of(context).size.width*1,
                    ),
                    Positioned(
                        bottom: 20,
                        left: 10,
                        child: Text(
                          '${page['name']}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

void goto(BuildContext context, place) {
  Navigator.of(context).pushNamed('secondpage', arguments: place);
}
