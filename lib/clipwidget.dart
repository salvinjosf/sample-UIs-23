import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Clipp1(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Clipp1 extends StatelessWidget {
  //const Clipp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRect(
            child: Container(
              child: Align(
                alignment: Alignment.center,
                widthFactor: .5, heightFactor: .7,
                child: Image.network('https://images.unsplash.com/photo-1681015162686-79e9cd18a0e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80'),
              ),
            ),
          ),
          SizedBox(height: 50,),

          ClipRRect(borderRadius: BorderRadius.circular(60),
              child: Image.network('https://images.unsplash.com/photo-1681015162686-79e9cd18a0e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80'),
            ),

          SizedBox(height: 50,),

          ClipOval(
            child: Container(
                child: Image.network('https://images.unsplash.com/photo-1681015162686-79e9cd18a0e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80')),
          ),

          SizedBox(height: 50,),

          ClipPath(
          clipper: MovieTicketBothSidesClipper(),
            child: Container(
              height: 500,width: 450,
                child: Image.network('https://images.unsplash.com/photo-1681015162686-79e9cd18a0e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80'))),

        ],
      ),
    );
  }
}
