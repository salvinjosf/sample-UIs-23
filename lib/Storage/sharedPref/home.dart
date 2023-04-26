import 'package:flutter/material.dart';
import 'package:myprojectfeb/Storage/sharedPref/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late SharedPreferences data;
  // late String username;
  late String name;

  @override
  void initState() {
    fetchName();
    // TODO: implement initState
    super.initState();
  }

  void fetchName() async {
    data=await SharedPreferences.getInstance();
    setState(() {
      name = data.getString('name')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 50,),
            const Center(child: Text('Login Success')),
            Center(child: Text('Welcome, $name',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
            SizedBox(height: 60,),
            ElevatedButton(onPressed: (){
              data.setBool('newuser', true);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sp()));
            }, child: Text('Logout'))
          ],
        ),
      ),
    );
  }
}
