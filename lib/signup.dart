import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: SignUp(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/bg2.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 100),
              child: Image.asset('assets/SignUp.png', width: 320, height: 240),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 100),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.person_2_outlined),
                    hintText: 'Full Name',
                    helperText: 'Enter your full name'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 100),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.alternate_email_outlined),
                    hintText: 'Email',
                    helperText: 'Enter your email address'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 100),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.phone_iphone_outlined),
                    hintText: 'Phone',
                    helperText: 'Enter your 10 digit phone number'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 100, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    hintText: 'Password',
                    helperText: 'Enter a strong password'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 100, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    hintText: 'Confirm password',
                    helperText: 'Confirm your password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child:
                  ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[400]), child: const Text('SignUp')),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 200, top: 5),
              child: TextButton(
                  onPressed: () {}, style: ElevatedButton.styleFrom(foregroundColor: Colors.grey[400]),child: const Text('Already a member? LogIn')),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80, left: 10, top: 20),
              child: Text(
                'Hi, Welcome! ',
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
