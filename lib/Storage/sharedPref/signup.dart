import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myprojectfeb/Storage/sharedPref/home.dart';
import 'package:myprojectfeb/Storage/sharedPref/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: regis(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class regis extends StatefulWidget {
  const regis({Key? key}) : super(key: key);

  @override
  State<regis> createState() => _regisState();
}

class _regisState extends State<regis> {

  late SharedPreferences data;

  final name_controller = TextEditingController();
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    name_controller.dispose();
    password_controller.dispose();
    username_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Shared preference Signup',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: name_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Name'),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: username_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Username'),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: password_controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                 register();
                },
                child: const Text('Signup'))
          ],
        ),
      ),
    );
  }

  void register() async{
    data= await SharedPreferences.getInstance();
    String name= name_controller.text;
    String uname= username_controller.text;
    String pass= password_controller.text;

    if(uname != '' && pass != '' && name !=''){
      data.setString('name', name);
      data.setString('uname', uname);
      data.setString('pass', pass);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Sp()));
    }
  }

}
