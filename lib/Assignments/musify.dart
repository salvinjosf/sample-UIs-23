import 'package:device_preview/device_preview.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Musify(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Musify extends StatefulWidget {
  @override
  State<Musify> createState() => _MusifyState();
}

class _MusifyState extends State<Musify> {
  // const Musify({Key? key}) : super(key: key);

  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text(
          'Musify.',
          style: TextStyle(
              color: Colors.white70, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Suggested playlists',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      height: 200,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://i.scdn.co/image/ab67706f000000028db2eff84e356c34857f86b4',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      height: 200,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://cms-fym.imgix.net/ox_Yn_AX_Da_R2_Cw_Rrnhv_Eal_515f388034.png?auto=compress,format&fit=fillmax&ch=Save-Data&w=1200&max-h=1200',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      height: 200,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://marketplace.canva.com/EAFSGSqc3MM/1/0/1600w/canva-red-minimalist-night-ride-playlist-cover-e46cEKrpFhQ.jpg',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      height: 200,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa1jF1XrqwYWtOEXGwXrq6qcpiPdzIklqDvpOvi6Sz7fSvwgkHJC_rIpTi-FQCPjVZhpM',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Recommended for you',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),

              //******************************************************************************************//

              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: 0),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://i1.sndcdn.com/artworks-000205850947-gsozvl-t500x500.jpg',
                  ),
                ),
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 5.0, left: 10),
                  child: Text(
                    'Coastline',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 10),
                  child: Text(
                    'Hollow Coves',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                trailing: Wrap(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star_border_outlined),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.download_outlined),
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: 0),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://i.scdn.co/image/ab67616d0000b273a7c10595167c713a2df0f187',
                  ),
                ),
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 5.0, left: 10),
                  child: Text(
                    'Let Her Go',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 10),
                  child: Text(
                    'Passengers',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                trailing: Wrap(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star_border_outlined),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.download_outlined),
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: 0),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://i.scdn.co/image/ab67616d0000b2733e42854096da9a3b1ca901c9',
                  ),
                ),
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 5.0, left: 10),
                  child: Text(
                    'All I Want',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 10),
                  child: Text(
                    'Kodaline',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                trailing: Wrap(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star_border_outlined),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.download_outlined),
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: 0),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://i1.sndcdn.com/artworks-9ihozGVVoS5d-0-t500x500.jpg',
                  ),
                ),
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 5.0, left: 10),
                  child: Text(
                    'Atlantis',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 10),
                  child: Text(
                    'Seafret',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                trailing: Wrap(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star_border_outlined),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.download_outlined),
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: 0),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://m.media-amazon.com/images/I/61ur3nQ+-mL._AC_SY450_.jpg',
                  ),
                ),
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 5.0, left: 10),
                  child: Text(
                    'As It Was',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 10),
                  child: Text(
                    'Harry Styles',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                trailing: Wrap(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star_border_outlined),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.download_outlined),
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: 0),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://assets.fontsinuse.com/static/use-media-items/117/116881/full-1400x1400/5f05cc77/Night_Shift_cover_web.jpeg',
                  ),
                ),
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 5.0, left: 10),
                  child: Text(
                    'This Town',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 10),
                  child: Text(
                    'Niall Horan',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                trailing: Wrap(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star_border_outlined),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.download_outlined),
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FlashyTabBar(
        backgroundColor: Colors.black87,
        selectedIndex: _selectedindex,
        showElevation: true,
        onItemSelected: (index) {
          setState(() {
            _selectedindex = index;
          });
        },
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.playlist_play),
            title: Text('PLaylist'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.more_horiz_rounded),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
