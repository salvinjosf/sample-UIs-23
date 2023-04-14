import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myprojectfeb/QuoteApp/Qdata.dart';

import 'Qlist.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Qhome(),
      routes: {'secondpage': (context)=>Qlist()},
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Qhome extends StatelessWidget {
  // const Qhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 2,
        title: Text(
          'Quoteify',
          style: GoogleFonts.sacramento(
              color: Colors.greenAccent,
              fontWeight: FontWeight.w500,
              letterSpacing: 2,
              fontSize: 32),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: Qdata.map((topic) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: InkWell(
              onTap: () => goto(context, topic['id']),
              child: Card(
                  color: Colors.greenAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      '${topic['topic']}',
                      style: GoogleFonts.sahitya(
                          fontWeight: FontWeight.w300, fontSize: 20),
                    ),
                  )),
            ),
          );
        }).toList(),
      ),
    );
  }

  void goto(BuildContext context, topic) {
    Navigator.of(context).pushNamed('secondpage', arguments: topic);
  }
}
