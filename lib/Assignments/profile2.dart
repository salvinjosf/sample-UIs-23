import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: profile2(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class profile2 extends StatelessWidget {
  // const profile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        title: const Text('Stack Profile'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/fightclub.jpg'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.cyan,
                  child: Icon(
                    Icons.message,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/ed.jpg'),
                    radius: 56,
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.add,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:280),
            child: Center(
              child: Column(
                children: const [
                  Text(
                    'Jack', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
                Text(
                    'Business Coordinator', style: TextStyle(fontSize: 12),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
