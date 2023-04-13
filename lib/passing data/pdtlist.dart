import 'package:flutter/material.dart';
import 'package:myprojectfeb/passing%20data/dummydata.dart';

class PdtList extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    // fetching id from prev page
    final id = ModalRoute.of(context)?.settings.arguments;

    final product=dummyProducts.firstWhere((pdt) => pdt['id']==id);

    return Scaffold(
      appBar:
      AppBar(
        title: Text('Products'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Image.network(product['image']),
            Text('${product['name']}', style: TextStyle(fontSize: 30),),
            Text('${product['description']}'),
          ],
        ),
      ),
    );
  }
}
