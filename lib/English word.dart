import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Awsome(),
    )
  );
}

class Awsome extends StatefulWidget {
  const Awsome({Key? key}) : super(key: key);

  @override
  State<Awsome> createState() => _AwsomeState();
}

class _AwsomeState extends State<Awsome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Font Awesome"),
      ),
      body:
      Container(
        child: Center(
          child: Column(
            children: [
              Icon(FontAwesomeIcons.wheatAwn, size: 50, color: Colors.lightGreen,),
              FaIcon(FontAwesomeIcons.brandsFontAwesome, size: 50, color: Colors.lightGreen,),
              FaIcon(FontAwesomeIcons.person, size: 50, color: Colors.lightGreen,),
              FaIcon(FontAwesomeIcons.prescription, size: 50, color: Colors.lightGreen,),
              FaIcon(FontAwesomeIcons.cube, size: 50, color: Colors.lightGreen,),
              FaIcon(FontAwesomeIcons.apple, size: 50, color: Colors.lightGreen,),
              FaIcon(FontAwesomeIcons.orcid, size: 50, color: Colors.lightGreen,),
              FaIcon(FontAwesomeIcons.arrowRightArrowLeft, size: 50, color: Colors.lightGreen,),
            ],
          ),
        ),
      ),
    );;
  }
}
