import 'package:flutter/material.dart';
import 'package:myprojectfeb/stack.dart';

class CustomWidget extends StatelessWidget {

  final Color? bgColor;
  final Text title;
  final Icon icon;
  VoidCallback onpress;

  CustomWidget({required this.bgColor, required this.title, required this.onpress,required this.icon });
  //const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgColor,
      child: ListTile(
        leading: icon,
        title: title,
        onTap: onpress,
      ),
    );
  }
}
