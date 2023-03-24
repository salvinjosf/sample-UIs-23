import 'package:flutter/material.dart';

class stack extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),

      body: Center(
        child: Stack(
          children: [
            Container(color: Colors.greenAccent,height: 800,width: 800,),
            Positioned(left: 20,right: 20, top: 50,bottom: 50,child: Container(color: Colors.red,height: 400,width: 400,),),
            Positioned(left: 30, top: 230,child: Container(color: Colors.blue,height: 200,width: 200,)),
            Positioned(left: 30, top: 70,child: Container(color: Colors.yellow,height: 150,width: 150,)),
          ]
        ),
      ),
    );
  }
}
