import 'package:flutter/material.dart';

class Grid1 extends StatelessWidget {
 // const Grid1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid1'),
      ),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10,  mainAxisSpacing: 10),
        children: [
          Card(child: Image.asset('assets/batman.png')),
          Card(child: Image.asset('assets/delhi.jpg')),
          Image.asset('assets/SignUp.png'),
          Image.asset('assets/Login.png'),
          Image.asset('assets/Logo2.png'),
          Image.asset('assets/Logo1.png'),
          Image.asset('assets/ny.jpg'),
          Image.asset('assets/van.jpg'),
        ],
      ),
    );
  }
}
