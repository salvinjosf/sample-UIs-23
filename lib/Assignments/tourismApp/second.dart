import 'package:flutter/material.dart';

import 'datapage.dart';

class second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final secondpage = datapage.firstWhere((page) => page['id'] == id);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network('${secondpage['cover']}')),
            const SizedBox(height: 20,),
            Text('${secondpage['name']}', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
            const SizedBox(height: 30,),
            Text('${secondpage['description']}'),
            SizedBox(height: 10,),
            const Text('Places to Visit',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 100,
                    width: 100,
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
                    height: 100,
                    width: 100,
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
                    height: 100,
                    width: 100,
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
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Explore'))
          ],
        ),
      ),
    );
  }
}
