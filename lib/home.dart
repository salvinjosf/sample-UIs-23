import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'loginn.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text('Welcome',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 20),
            ),
          ],
        ),
        backgroundColor: Colors.brown[400],
      ),
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
                'assets/Logo2.png',
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
