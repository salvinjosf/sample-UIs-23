import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

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
class SplashScreen extends StatelessWidget {
  //const SplashScreen({Key? key}) : super(key: key);

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
