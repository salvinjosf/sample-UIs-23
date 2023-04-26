import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myprojectfeb/Assignments/Summerof69/SummerData.dart';

class Sshome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final secondpage = summerdata.firstWhere((page) => page['id'] == id);

    return const Placeholder();
  }
}
