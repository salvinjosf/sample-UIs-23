import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Hotel2(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Hotel2 extends StatelessWidget {
  const Hotel2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.cyan,
        leading: const Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          )
        ],
        bottom: AppBar(
          elevation: 0,
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: const Text(
            'Type your location',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.cyan,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 0, left: 20, right: 20, bottom: 20),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      label: const Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Fort Kochi, Ernakulam',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.cyan,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 80,
                      width: 90,
                      color: Colors.pink,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.hotel_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            'Hotel',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 80,
                      width: 90,
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.restaurant_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            'Restaurant',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 80,
                      width: 90,
                      color: Colors.orange,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.local_cafe_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            'Cafe',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.network(
                                'https://thumbs.dreamstime.com/b/hotel-room-beautiful-orange-sofa-included-43642330.jpg',
                                fit: BoxFit.cover),
                            const Positioned(
                              top: 10,
                              right: 10,
                              child: Icon(
                                Icons.star_border_outlined,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 10,
                              child: Container(
                                color: Colors.white,
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    '\$ 40',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 80,
                          child: const Center(
                            child: ListTile(
                              visualDensity: VisualDensity(vertical: 4),
                              title: Text(
                                'Budget Home Stay',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black, fontSize: 20),
                              ),
                              subtitle: Text(
                                'Fort Kochi, Ernakulam',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          height: 40,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.star, color: Colors.green[400],),
                                Icon(Icons.star, color: Colors.green[400],),
                                Icon(Icons.star, color: Colors.green[400],),
                                Icon(Icons.star, color: Colors.green[400],),
                                Icon(Icons.star, color: Colors.green[400],),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('(239 reviews)', style: TextStyle(color: Colors.grey, ),),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
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
