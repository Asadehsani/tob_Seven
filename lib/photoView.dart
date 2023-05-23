import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main (){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Photo(),
  ));
}

class Photo extends StatefulWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  State<Photo> createState() => _MyAppState();
}

class _MyAppState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo View"),
      ),
      body:
      Container(
          child: PhotoView(
            imageProvider: AssetImage("Images/buda.jpg"),
          )
      ),
    );
  }
}
