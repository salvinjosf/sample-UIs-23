import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Drawer2(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Drawer2 extends StatelessWidget {
  const Drawer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('New Drawer'),
        ),
        drawer: Drawer(
            child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.red,
                  Colors.deepOrange,
                  Colors.redAccent,
                  Colors.deepOrangeAccent,
                  Colors.red,
                  Colors.deepOrange,
                ]),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            'assets/pb.jpg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Patrick Bateman',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                          child: Text(
                            'Administator',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.dashboard_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Dashboard',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.dashboard_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Dashboard',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.leaderboard_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Leaderboard',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.leaderboard_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Leaderboard',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.leaderboard_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Leaderboard',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.leaderboard_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Leaderboard',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.leaderboard_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Leaderboard',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('Sign out')),
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
