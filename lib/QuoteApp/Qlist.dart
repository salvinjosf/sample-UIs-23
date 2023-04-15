import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Qdata.dart';

class Qlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // fetching id from prev page
    final id = ModalRoute.of(context)?.settings.arguments;

    final product = Qdata.firstWhere((topic) => topic['id'] == id);

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 2,
        title: Text(
          '${product['topic']} Quotes',
          style: GoogleFonts.sacramento(
              color: Colors.greenAccent,
              fontWeight: FontWeight.w500,
              letterSpacing: 2,
              fontSize: 32),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(FontAwesomeIcons.quoteLeft,size: 60,color: Colors.greenAccent,),
              ],
            ),
            ListTile(
                title: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                '${product['description']}',
                style:
                    const TextStyle(fontSize: 20,
                        color: Colors.white70,),
              ),
            )),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(FontAwesomeIcons.quoteRight,size: 60,color: Colors.greenAccent,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
