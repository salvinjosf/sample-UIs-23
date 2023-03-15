import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: Login(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Hi, '),
      //   backgroundColor: Colors.brown[700],
      //   shadowColor: Colors.orange[50],
      // ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/bg2.png',
                ))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 15, right: 100),
              child: Image.asset(
                'assets/Login.png',
                width: 320,
                height: 240,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 150),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.call_outlined),
                    hintText: 'Phone',
                    helperText: 'Enter your phone number'),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 150, top: 10, bottom: 50),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(CupertinoIcons.eye_slash),
                    hintText: 'Password',
                    helperText: 'Enter your password '),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400]),
                  child: const Text('Login')),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50, right: 200, top: 5),
              child: TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.grey[400]),
                  child: const Text('Not a member? SignUp')),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80, left: 10, top: 170),
              child: Text(
                'Welcome Back! ',
                textAlign: TextAlign.left,
                style: GoogleFonts.pacifico(
                    fontSize: 40,
                    //fontWeight: FontWeight.bold,
                    color: Colors.brown[400]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
