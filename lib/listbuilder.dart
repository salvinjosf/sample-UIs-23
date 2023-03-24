import 'package:flutter/material.dart';

class ListBuilder extends StatelessWidget {
  //const ListBuilder({Key? key}) : super(key: key);

  var name = ['apple', 'orange', 'banana', 'grape'];
  var images = [
    'assets/batman.png',
    'assets/Login.png',
    'assets/Logo1.png',
    'assets/Logo2.png'
  ];
  var price=[100,200,230,220];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Builder'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text('${price[index]}'),
            leading: CircleAvatar(backgroundImage:AssetImage(images[index]),),
          ),
        );
      },
      itemCount: name.length,),
    );
  }
}
