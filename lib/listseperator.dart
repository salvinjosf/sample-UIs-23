import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListSep extends StatelessWidget {
  //const ListSep({Key? key}) : super(key: key);

  var data = [
    'data1',
    'data2',
    'data3',
    'data4',
    'data5',
    'data6',
    'data7',
    'data8'
  ];
  var sepdata = [
    'item1',
    'item2',
    'item3',
    'item4',
    'item5',
    'item6',
    'item7',
    'item8'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('List Seperated', style: GoogleFonts.radley(),),
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/bg2.png'))),
        child: ListView.separated(
            itemBuilder: (ctx, index) {
              return Card(child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(data[index]),
              ));
            },
            separatorBuilder: (ctx,index){
              return Text(sepdata[index]);
            },
            itemCount: data.length),
      ),
    );
  }
}
