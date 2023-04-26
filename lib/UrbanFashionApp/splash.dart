import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myprojectfeb/Assignments/citiesUI.dart';
import 'package:myprojectfeb/gglnavbar.dart';
import 'package:myprojectfeb/grid1.dart';
import 'package:myprojectfeb/grid2.dart';
import 'package:myprojectfeb/grid3.dart';
import 'package:myprojectfeb/grid5.dart';
import 'package:myprojectfeb/Proj1(UrbanFashion)/home.dart';
import 'package:myprojectfeb/Assignments/hotelui.dart';
import 'package:myprojectfeb/Proj1(UrbanFashion)/loginn.dart';
import 'package:myprojectfeb/stack.dart';

import '../bottomnavbar.dart';
import '../grid4.dart';
import 'loginn.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
     //theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //const SplashScreen({Key? key}) : super(key: key);
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3),(){Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context)=>LoginValid()));
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/app backgroud.png'))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Logo1.png',
                height: 260,
                width: 290,
              )
            ],
          ),
        ),
      ),
    );
  }
}
