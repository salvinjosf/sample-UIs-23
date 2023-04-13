import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      //theme: ThemeData(primarySwatch: Colors.blue),
      home: Drawerr(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Drawerr extends StatelessWidget {
  // const Drawerr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image:
                      DecorationImage(fit: BoxFit.cover,image: AssetImage('assets/app backgroud.png'))),
              accountName: Text('Salvin Joseph'),
              accountEmail: Text('salvin@xyz.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/batman.png'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
            ),
            ListTile(
              leading: Icon(Icons.settings_sharp),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help and Support'),
            ), ListTile(
              leading: Icon(Icons.shopping_cart_sharp),
              title: Text('Orders'),
            ),


          ],
        ),
      ),
    );
  }
}
