import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

void main (){
  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SharePlus(),
  ));
}

class SharePlus extends StatefulWidget {
  const SharePlus({Key? key}) : super(key: key);

  @override
  State<SharePlus> createState() => _MyAppState();

  static void share(String s) {}
}

class _MyAppState extends State<SharePlus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Share Plus'),),
      body: Container(
        child: IconButton(onPressed: (){
          Share.share('www.google.com');
        }, icon: Icon(Icons.link)),
      ),
    );
  }
}
