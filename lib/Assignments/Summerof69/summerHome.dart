import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myprojectfeb/Assignments/Summerof69/SummerData.dart';
import 'package:myprojectfeb/Assignments/Summerof69/summerSecond.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Shome(),
      routes: {'secondpage': (context) => Sshome()},
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Shome extends StatelessWidget {
  // const Shome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Center(
          child: Row(
            children: [
              Text(
                'Go',
                style: GoogleFonts.asap(
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              Text(
                'Fast',
                style: GoogleFonts.asap(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/sj.jpg'),
            ),
          )
        ],
        bottom: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white24,
                label: Text('Search'),
                suffixIcon: Icon(Icons.search)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // alignment: Alignment.topLeft,
                  // height: MediaQuery.of(context).size.height*.15,
                  // width: MediaQuery.of(context).size.width*.5,
                  child: const Text(
                    'Popular places',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  // alignment: Alignment.centerRight,
                  // height: MediaQuery.of(context).size.height*.15,
                  // width: MediaQuery.of(context).size.width*.5,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View all',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38),
                    ),
                  ),
                )
              ],
            ),
            ListView(
              children: summerdata.map((summer) {
                // Note: Same code is applied for the TextFormField as well

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    // height: MediaQuery.of(context).size.height*.3,
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 600,
                            width: 400,
                            decoration: BoxDecoration(
                              // color: Colors.pink,
                              image: DecorationImage(
                                  image: NetworkImage('${summer['cover']}'), fit: BoxFit.fill),

                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        );
                      },
                      // itemCount: image.length,
                    ),
                  ),
                );
              }).toList(),
            ),

          ],
        ),
      ),
    );
  }
}


void goto(BuildContext context, place) {
  Navigator.of(context).pushNamed('secondpage', arguments: place);
}
