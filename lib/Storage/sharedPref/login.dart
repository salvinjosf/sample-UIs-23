import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myprojectfeb/Storage/sharedPref/home.dart';
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


  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();

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

  void checkUser() async{
    data=await SharedPreferences.getInstance();
    newuser=(data.getBool('newuser') ?? true);
    if(newuser==false){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    }
  }

  void getValue()async {
    data= await SharedPreferences.getInstance();

    setState(() {
      uname=data.getString('uname')!;
      pwd=data.getString('pass')!;
      name=data.getString('name')!;
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
      appBar: AppBar(
        title: const Text(
          'Login',

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            const Text('Shared preference login',style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,),),
            const SizedBox(
              height: 15,
            ),
             TextField(
               controller: username,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Username'),
            ),
            const SizedBox(
              height: 15,
            ),
             TextField(
               controller: password,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Password',),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: () {

              String usename = username.text;
              String pass = password.text;

              if (usename != '' && pass != ''
              &&
              usename == uname && pass == pwd
              ) {
                print('Login success');

                data.setString('username', uname);
                data.setBool('newuser', false);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              }
            }, child: const Text('Login'))
          ],
        ),
      ),
    );
  }


}
