import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myprojectfeb/passing%20data/dummydata.dart';
import 'package:myprojectfeb/passing%20data/pdtlist.dart';

void main() {
  runApp(MaterialApp(
    home: PdtMain(),
    routes: {'secondpage': (context)=>PdtList()},
  ));
}

class PdtMain extends StatelessWidget {
  const PdtMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Home'),

      ),

      body: ListView(
        padding: EdgeInsets.all(10),
        children:
          dummyProducts.map((pdt) {
            return TextButton(onPressed: ()=>gotoNext(context,pdt['id']), child:Text('${pdt['name']}'));
          }).toList(),
      ),
    );
  }

 void gotoNext(BuildContext context, pdt) {
    Navigator.of(context).pushNamed('secondpage', arguments: pdt);
 }
}
