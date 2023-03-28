import 'package:flutter/material.dart';

class Grid4 extends StatelessWidget {
  //const Grid2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'Grid 4',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        body: GridView.custom(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            childrenDelegate: SliverChildBuilderDelegate((context, index) {
              return const Card(
                child: Icon(Icons.headset_off),
              );
            }, childCount: 7)

            // SliverChildListDelegate([
            //   const Card(child: Center(child: Icon(Icons.headphones))),
            //   const Card(child: Center(child: Icon(Icons.widgets_outlined))),
            //   const Card(child: Center(child: Icon(Icons.phone_iphone_outlined))),
            //   const Card(child: Center(child: Icon(Icons.login))),
            //   const Card(child: Center(child: Icon(Icons.set_meal_rounded))),
            //
            // ])
            ));
  }
}
