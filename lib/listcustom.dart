import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCus extends StatelessWidget {
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
        title: const Text('List Custom', style: GoogleFonts.lacquer(),),
        backgroundColor: Colors.red,
      ),
      body: ListView.custom(
    ///sliverChildListDelegate
      //     childrenDelegate: SliverChildListDelegate(
      //     [
      //   Icon(Icons.skip_next_outlined),
      //   Icon(Icons.play_circle_fill_outlined),
      //   Icon(Icons.stop_circle),
      //   Icon(Icons.skip_previous_outlined),
      // ],
    // )
    ///SliverChildBuilderDelegate
    childrenDelegate: SliverChildBuilderDelegate(
        (ctx,index){
          return Card(
            color: Colors.red[color[index]],
            child: const Text('hi'),
          );
    },
    childCount: color.length
    ),
    ));
  }
  var color=[800,600,400,200];
}
