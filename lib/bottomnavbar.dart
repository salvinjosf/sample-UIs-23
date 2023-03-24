import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List screens = const[
    Text('Home'),
    Text('Favourites'),
    Text('Community'),
    Text('More'),
  ];
  int index=0;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: const Text('Nav Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        currentIndex: index,
        onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
        },
        items: const
        [ BottomNavigationBarItem(icon: Icon(Icons.home),label: 'HOME', backgroundColor: Colors.red),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'FAVOURITES'),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt),label: "COMMUNITY"),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert_rounded),label: 'MORE'),
        ],
      ),
      body: Center(
        child: screens[index],
      ),
    );
  }
}
