import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  // const Hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //const Align(alignment: Alignment.topLeft),
            Image.asset(
              'assets/hotel.jpg',
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 350, left: 20),
                  child: Text(
                    'Crowne Plaza\nKochi, Kerala',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 15.0, right: 15, top: 5, bottom: 5),
                          child: Text(
                            '8.4/85 reviews',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.purple,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.purple,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.purple,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.purple,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 200, right: 20),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '\$200',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.purple,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: Icon(
                              Icons.location_on_sharp,
                              color: Colors.grey,
                              size: 14,
                            ),
                          ),
                          Text(
                            '8 km to Lulu Mall',
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 205, right: 20),
                            child: Text(
                              '/per night',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: SizedBox(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(330, 50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  backgroundColor: Colors.purple),
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 8.0, right: 8, top: 2, bottom: 2),
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                const ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Ramada Plaza Palm Grove',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                        'Feel the silence of the shores Ramada Resort is a poem.'
                            '\nWritten on the banks of a tranquil lake. You find the island'
                            '\nof silence just 17 km from Kochi, Kerala\'s metropolis, and'
                            '\n2 km from a busy national highway.'
                        '\n'
                            '\nThe Kumbalam backwaters is part of the famed Vembanad Lake.'
                            '\nAs the gates open, a sudden change in landscape, a riot'
                            '\nof greenery, and silence, greet you.'
                            '\nA harmonious mix of exhibitive desert trees and the'
                            '\nnatural flora of Kerala instil in you the same feeling you'
                            '\nexperience while watching your child take its first steps:'
                        '\nexcitement!'
                    ),
                  ),
                  isThreeLine: true,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
