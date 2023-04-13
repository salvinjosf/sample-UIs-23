import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myprojectfeb/Proj1(UrbanFashion)/home.dart';
import 'package:myprojectfeb/Proj1(UrbanFashion)/loginn.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          home: LoginValid(),
          debugShowCheckedModeBanner: false,
        ),
  ));
}

class SignUpValid extends StatefulWidget {
  //const SignUpValid({Key? key}) : super(key: key);

  @override
  State<SignUpValid> createState() => _SignUpValidState();
}

class _SignUpValidState extends State<SignUpValid> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  var confirmpass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('assets/bg2.png'))),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 15, right: 100),
                  child: Image.asset(
                      'assets/SignUp.png', width: 320, height: 220),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 110),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.person_2_outlined),
                        hintText: 'Full Name',
                        //labelText: 'Full Nameeee',
                        helperText: 'Enter your full name'
                    ),
                    validator: (name) {
                      if (name!.isEmpty) {
                        return 'Enter full name';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 110),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.call_outlined),
                        hintText: 'Phone',
                        //labelText: 'Phone',
                        helperText: 'Enter your 10 digit phone number'
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
                  padding: const EdgeInsets.only(left: 20, right: 110),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.alternate_email_outlined),
                        hintText: 'Email',
                        //labelText: 'Email',
                        helperText: 'Enter your email address'
                    ),
                    validator: (email) {
                      if (email!.isEmpty || !email.contains('@') ||
                          !email.contains('.')) {
                        return 'Enter a valid email address';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 110),
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
                                : Icons.visibility_outlined)
                        ),
                        hintText: 'Password',
                        //labelText: 'Password',
                        helperText: 'Enter a strong password'
                    ),
                    validator: (pass) {
                      confirmpass=pass;
                      if (pass!.isEmpty || pass.length < 8) {
                        return 'Password should contain minimum 8 character';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 110),
                  child: TextFormField(
                    obscureText: showpass,
                    decoration:  InputDecoration(
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
                                : Icons.visibility_outlined)
                        ),
                        hintText: 'Confirm Password',
                        //labelText: 'Confirm Password',
                        helperText: 'Confirm your password'
                    ),
                    validator: (cpass) {
                      if (cpass!=confirmpass || cpass!.isEmpty) {
                        return 'Password mismatch';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280, top: 30),
                  child:
                  ElevatedButton(
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
                      child: const Text('SignUp')),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, right: 200, top: 5),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginValid()));
                      },
                      style:
                      TextButton.styleFrom(
                          foregroundColor: Colors.grey[400]),
                      child: const Text('Already a member? LogIn')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
