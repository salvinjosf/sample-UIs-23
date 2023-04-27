import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myprojectfeb/Storage/sharedPref/home.dart';
import 'package:myprojectfeb/Storage/sharedPref/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: Center(
                child: Image.network(
                  'https://cdn1.iconfinder.com/data/icons/sports-2-24/3000/09_exercise-512.png',
                  height: MediaQuery.of(context).size.height * .4,
                  width: MediaQuery.of(context).size.width*.6,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: name_controller,
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.person_2_outlined),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)), labelText: 'Name'),
            ),
            const SizedBox(
              height: 15
            ),
            TextFormField(
              controller: username_controller,
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.email_outlined),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)), labelText: 'Username'),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              // controller: username_controller,
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.phone_outlined),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)), labelText: 'Phone'),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              obscureText: true,
              controller: password_controller,
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.visibility_outlined),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                     register();
                    },
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), backgroundColor: Colors.greenAccent),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text('SignUp'),
                    )),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?', style: TextStyle(color: Colors.grey),),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sp()));
                    },
                    child: const Text(
                      'Login',
                    )),
              ],
            )
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
