import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      //theme: ThemeData(primarySwatch: Colors.blue),
      home: GridDs(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class GridDs extends StatelessWidget {
  //const GridDs({Key? key}) : super(key: key);

  var color = [
    Colors.blueAccent,
    Colors.orange,
    Colors.green,
    Colors.pink,
    Colors.red,
    Colors.deepPurple,
    Colors.pink[500],
    Colors.teal,
    Colors.orangeAccent,
    Colors.deepOrange,
    Colors.pinkAccent,
    Colors.lightGreen
  ];

  var name = [
    "Camera",
    "Call",
    "Payment",
    "Music",
    "My Files",
    "Gallery",
    "Calender",
    "Messages",
    "Note Pad",
    "Scanner",
    "Settings",
    "Voice Recorder"
  ];

  var icons = [
    Icons.camera_alt_rounded,
    Icons.call,
    Icons.paypal_rounded,
    Icons.music_note_rounded,
    Icons.file_copy_rounded,
    Icons.photo,
    Icons.calendar_month_rounded,
    Icons.message_rounded,
    Icons.note_alt_rounded,
    Icons.qr_code_scanner_rounded,
    Icons.settings,
    Icons.mic,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grid Assignmnet'),
        ),
        body: Container(
          color: Colors.pink[50],
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20
              ),
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 10, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.blueGrey,
                          blurRadius: 5,
                          spreadRadius: 6,
                        )
                      ], borderRadius: BorderRadius.circular(20), color: color[index]
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text(name[index]),
                        leading: Icon(icons[index]),
                      ),
                    ),
                  ),
                );
              },itemCount: color.length,
          ),
        ),
    );
  }
}

var image=[
  'assets/batman.png',
  'assets/batman.png',
  'assets/batman.png',
  'assets/batman.png',
  'assets/batman.png',
  'assets/batman.png',
];
