import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      //theme: ThemeData(primarySwatch: Colors.blue),
      home: AppBarCus(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class AppBarCus extends StatelessWidget {
  //const AppBarCus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const Icon(Icons.ice_skating),
        title: const Text("Custom appbar"),
        backgroundColor: Colors.grey.withOpacity(.5),
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1679996799366-7780298d013e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
            width: double.infinity,
            //height: double.infinity,
          ),
        ],
      ),
    );
  }
}
