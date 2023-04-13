import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      //theme: ThemeData(primarySwatch: Colors.blue),
      home: Contact(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Contact extends StatelessWidget {
  // const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text(
            'Recents',
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_rounded,
                  size: 32,
                ))
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Missed',
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20, left: 8, right: 8),
              child: TextField(style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_rounded, color: Colors.white24,),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white24),
                    enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white24, width: 1),
                        borderRadius: BorderRadius.circular(150))),
              ),
            ),
            const Card(
              color: Colors.white10,
              child: ListTile(
                title: Text('ME', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),),
                subtitle: Text('My card', style: TextStyle(color: Colors.white38, fontSize: 12),),
                leading: CircleAvatar(backgroundImage: AssetImage('assets/batman.png')),
                //trailing: Text('6:27 PM'),
              ),
            ),

            const ListTile(
              title: Text('MOM (2)',style: TextStyle(color: Colors.red, fontSize: 20),),
              subtitle: Text('mobile',style: TextStyle(color: Colors.white38),),
              leading: Icon(Icons.call_missed_rounded, color: Colors.red,),
              trailing: Text('10:21 PM', style: TextStyle(color: Colors.white38),),

            ),
            const ListTile(
              title: Text('Betty HR',style: TextStyle(color: Colors.white, fontSize: 20),),
              subtitle: Text('mobile',style: TextStyle(color: Colors.white38),),
              leading: Icon(Icons.call_missed_outgoing_rounded, color: Colors.white,),
              trailing: Text('5:39 PM', style: TextStyle(color: Colors.white38),),

            ),
            const ListTile(
              title: Text('BOSS!',style: TextStyle(color: Colors.white, fontSize: 20),),
              subtitle: Text('work',style: TextStyle(color: Colors.white38),),
              leading: Icon(Icons.call_received_rounded, color: Colors.white,),
              trailing: Text('4:05 PM', style: TextStyle(color: Colors.white38),),

            ),
            const ListTile(
              title: Text('Andrew',style: TextStyle(color: Colors.red, fontSize: 20),),
              subtitle: Text('mobile', style: TextStyle(color: Colors.white38),),
              leading: Icon(Icons.call_missed_outlined, color: Colors.red,),
              trailing: Text('3:46 PM', style: TextStyle(color: Colors.white38),),

            ),
            const ListTile(
              title: Text('John Bro',style: TextStyle(color: Colors.white, fontSize: 20),),
              subtitle: Text('FaceTime Audio',style: TextStyle(color: Colors.white38),),
              leading: Icon(Icons.call_made_rounded, color: Colors.white,),
              trailing: Text('1:23 PM', style: TextStyle(color: Colors.white38),),

            ),
            const ListTile(
              title: Text('Anto',style: TextStyle(color: Colors.white, fontSize: 20),),
              subtitle: Text('mobile',style: TextStyle(color: Colors.white38),),
              leading: Icon(Icons.call_received_rounded, color: Colors.white,),
              trailing: Text('11:08 AM', style: TextStyle(color: Colors.white38),),

            ),
            const ListTile(
              title: Text('Sarah',style: TextStyle(color: Colors.red, fontSize: 20),),
              subtitle: Text('WhatsApp Audio',style: TextStyle(color: Colors.white38),),
              leading: Icon(Icons.call_missed_rounded, color: Colors.red,),
              trailing: Text('Yesterday', style: TextStyle(color: Colors.white38),),

            ),
            const ListTile(
              title: Text('Steve',style: TextStyle(color: Colors.white, fontSize: 20),),
              subtitle: Text('mobile',style: TextStyle(color: Colors.white38),),
              leading: Icon(Icons.call_received_rounded, color: Colors.white,),
              trailing: Text('Wednesday', style: TextStyle(color: Colors.white38),),

            ),

          ],
        ),
      ),
    );
  }
}
