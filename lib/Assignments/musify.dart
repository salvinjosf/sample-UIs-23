import 'dart:html';

import 'package:device_preview/device_preview.dart';
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

class Musify extends StatelessWidget {
  // const Musify({Key? key}) : super(key: key);

  var images = [
    'https://marketplace.canva.com/EAFBJzJGXNg/1/0/1600w/canva-pink-and-blue-anime-chill-lofi-music-sleep-playlist-cover-9JGwHt0-utA.jpg',
    'https://marketplace.canva.com/EAFSGSqc3MM/1/0/1600w/canva-red-minimalist-night-ride-playlist-cover-e46cEKrpFhQ.jpg',
    'https://cms-fym.imgix.net/ox_Yn_AX_Da_R2_Cw_Rrnhv_Eal_515f388034.png?auto=compress,format&fit=fillmax&ch=Save-Data&w=1200&max-h=1200',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGuZTAH50h06eKb5U5-A383b3W33BC340TIoQwt8YjMQy6Ilz9Q5Q1J2BtiPl3UaKFnH0',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa1jF1XrqwYWtOEXGwXrq6qcpiPdzIklqDvpOvi6Sz7fSvwgkHJC_rIpTi-FQCPjVZhpM',
    'data:image/png;base64,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',
    'https://marketplace.canva.com/EAFSNmv0C0k/1/0/1600w/canva-orange-illustration-relaxing-playlist-cover-G1lOYn2PS28.jpg',
    'https://assets.fontsinuse.com/static/use-media-items/117/116881/full-1400x1400/5f05cc77/Night_Shift_cover_web.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Musify.',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
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
                      'Artist',
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
      ),
    );
  }
}
