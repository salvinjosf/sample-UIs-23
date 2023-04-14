import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myprojectfeb/Proj1(UrbanFashion)/home.dart';
import 'package:myprojectfeb/Proj1(UrbanFashion)/signupp.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: LoginValid(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class LoginValid extends StatefulWidget {
  // const LoginValid({Key? key}) : super(key: key);

  @override
  State<LoginValid> createState() => _LoginValidState();
}

class _LoginValidState extends State<LoginValid> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/bg2.png',
                ))),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 15, right: 100),
                child: Image.asset(
                  'assets/Login.png',
                  width: 300,
                  height: 240,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 150),
                child: TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.person_2_outlined),
                    hintText: 'Phone',
                    labelText: 'Phone',
                    helperText: 'Enter your phone number',
                  ),
                  validator: (phone) {
                    if (phone!.isEmpty || phone.length != 10) {
                      return 'Enter a valid phone number';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 150, top: 10, bottom: 30),
                child: TextFormField(
                  obscureText: showpass,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined),
                      ),
                      hintText: 'Password',
                      labelText: 'Password',
                      helperText: 'Enter your password'),
                  validator: (pass) {
                    if (pass!.isEmpty || pass.length < 8) {
                      return 'Incorrect password';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 280),
                child: ElevatedButton(
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[400]),
                    child: const Text('Login')),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200, top: 5),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    style:
                        TextButton.styleFrom(
                            foregroundColor: Colors.grey[400]),
                    child: const Text('Not a member? SignUp')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
