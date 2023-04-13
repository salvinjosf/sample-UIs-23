import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: profile1(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class profile1 extends StatelessWidget {
  //const profile1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(.7),
        elevation: .5,
        title: const Text("Profile"),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/sj.jpg'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 40,
                    ),
                    color: Colors.blue[700],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.twitter,
                      size: 40,
                    ),
                    color: Colors.blueAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.linkedin,
                      size: 40,
                    ),
                    color: Colors.blue[900],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.github,
                        size: 40,
                      )),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: ListTile(
                title: Center(
                    child: Text(
                  'Salvin',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                )),
                subtitle: Center(
                    child: Text(
                  '@salvin.josf',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Center(
                  child: Text(
                'Android Flutter Developer',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .4,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200]),
                          height: 50,
                          width: 330,
                          child: const ListTile(
                            title: Text('Privacy',
                                style: TextStyle(color: Colors.black)),
                            leading: Icon(
                              Icons.privacy_tip_outlined,
                              color: Colors.black,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200]),
                          height: 50,
                          width: 330,
                          child: const ListTile(
                            title: Text('Purcahse History',
                                style: TextStyle(color: Colors.black)),
                            leading: Icon(
                              Icons.history_sharp,
                              color: Colors.black,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200]),
                          height: 50,
                          width: 330,
                          child: const ListTile(
                            title: Text('Help & Support',
                                style: TextStyle(color: Colors.black)),
                            leading: Icon(
                              Icons.help_outline,
                              color: Colors.black,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200]),
                          height: 50,
                          width: 330,
                          child: const ListTile(
                            title: Text('Settings',
                                style: TextStyle(color: Colors.black)),
                            leading: Icon(
                              Icons.settings,
                              color: Colors.black,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200]),
                          height: 50,
                          width: 330,
                          child: const ListTile(
                            title: Text('Invite a friend',
                                style: TextStyle(color: Colors.black)),
                            leading: Icon(
                              Icons.add_reaction_outlined,
                              color: Colors.black,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200]),
                          height: 50,
                          width: 330,
                          child: const ListTile(
                            title: Text(
                              'Share',
                              style: TextStyle(color: Colors.black),
                            ),
                            leading: Icon(
                              Icons.share,
                              color: Colors.black,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200]),
                          height: 50,
                          width: 320,
                          child: const ListTile(
                            title: Text(
                              'Log out',
                              style: TextStyle(color: Colors.black),
                            ),
                            leading: Icon(
                              Icons.logout,
                              color: Colors.black,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
