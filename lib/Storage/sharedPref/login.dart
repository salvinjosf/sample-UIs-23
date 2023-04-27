import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myprojectfeb/Storage/sharedPref/home.dart';
import 'package:myprojectfeb/Storage/sharedPref/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: Sp(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Sp extends StatefulWidget {
  @override
  State<Sp> createState() => _SpState();
}

class _SpState extends State<Sp> {
  // const Sp({Key? key}) : super(key: key);

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  late SharedPreferences data;
  late bool newuser;

  late String uname;
  late String name;
  late String pwd;

  @override
  void initState() {
    checkUser();
    getValue();
    // TODO: implement initState
    super.initState();
  }

  void checkUser() async {
    data = await SharedPreferences.getInstance();
    newuser = (data.getBool('newuser') ?? true);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Home()));
    }
  }

  void getValue() async {
    data = await SharedPreferences.getInstance();

    setState(() {
      uname = data.getString('uname')!;
      pwd = data.getString('pass')!;
      name = data.getString('name')!;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    username.dispose();
    password.dispose();
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
                  'https://cdn4.iconfinder.com/data/icons/workout-exercise-set/1000/Workout-06-512.png',
                  height: MediaQuery.of(context).size.height * .4,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: username,
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.email_outlined),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                labelText: 'Email',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.visibility_outlined),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.red),
                    )),
                ElevatedButton(
                    onPressed: () {
                      String usename = username.text;
                      String pass = password.text;

                      if (usename != '' &&
                          pass != '' &&
                          usename == uname &&
                          pass == pwd) {
                        print('Login success');

                        data.setString('username', uname);
                        data.setBool('newuser', false);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Home()));
                      }
                    },
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),backgroundColor: Colors.greenAccent),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text('Login'),
                    ))
              ],
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?',style: TextStyle(color: Colors.grey),),
                  TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const regis()));
                  }, child: const Text('Sign Up'))
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
