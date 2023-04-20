import 'package:flutter/material.dart';

import 'datapage.dart';

class second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final secondpage = datapage.firstWhere((page) => page['id'] == id);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  '${secondpage['cover']}',
                  fit: BoxFit.contain,
                )),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${secondpage['name']}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              '${secondpage['description']}',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Places to Visit',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: NetworkImage(
                            '${secondpage['image1']}',
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
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: NetworkImage(
                            '${secondpage['image2']}',
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
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: NetworkImage(
                            '${secondpage['image3']}',
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: Colors.purple[900],
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text('Explore'))
          ],
        ),
      ),
    );
  }
}
