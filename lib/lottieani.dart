import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      //theme: ThemeData(primarySwatch: Colors.blue),
      home: LottieeAni(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class LottieeAni extends StatelessWidget {
  //const LottieAni({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:[
            Lottie.network('https://assets2.lottiefiles.com/packages/lf20_ybfPAtf8S7.json'),
            // Lottie.asset('name'),
          ]
        ),
      ),
    );
  }
}

