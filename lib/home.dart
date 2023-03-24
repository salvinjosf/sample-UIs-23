import 'package:flutter/material.dart';
import 'package:myprojectfeb/listseperator.dart';
import 'package:myprojectfeb/signupp.dart';

import 'loginn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Welcome',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 20),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 22,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 22,
                )),
            PopupMenuButton(itemBuilder: (context){
              return[
                const PopupMenuItem(child: Text('New Broadcast')),
                const PopupMenuItem(child: Text('New Group')),
                const PopupMenuItem(child: Text('Link Device')),
                const PopupMenuItem(child: Text('Starred Messages')),
                const PopupMenuItem(child: Text('Settings')),
              ];
            })
          ],
          bottom: TabBar(
              labelPadding: EdgeInsets.zero,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.grey,
              tabs: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .2,
                  child: const Tab(
                    icon: Icon(Icons.supervisor_account_rounded),
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    child: const Tab(text: 'Orders')),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    child: const Tab(text: 'Login')),
              ]),
          backgroundColor: Colors.brown[400],
        ),
        body: TabBarView(children: [
          SignUpValid(),
          ListSep(),
          LoginValid(),
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/app backgroud.png'))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/Logo2.png',
                    height: 260,
                    width: 290,
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
