import 'dart:math';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:text_to_speech/text_to_speech.dart';

void main (){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('English word'),
        actions: [IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (c)=>RandomeWordPage()));
        }, icon: Icon(FontAwesomeIcons.random))],
      ),

      body: Container(
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (c, i) {
              return ListTile(title:
              Text("Noun = ${nouns[i]} adjective = ${adjectives[i]}"),
              );
            }
        ),
      ),
    );
  }
}

class RandomeWordPage extends StatelessWidget {
  RandomeWordPage({Key? key}) : super(key: key);

  var newGenerateWords = adjectives[Random().nextInt(500)];
  var colors = [Colors.red, Colors.green, Colors.blue,Colors.orange];
  TextToSpeech tts = TextToSpeech();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          tts.speak(newGenerateWords);
          print(newGenerateWords);
        },
        onDoubleTap: (){
          Navigator.pop(context);
        },
        child:  Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text(newGenerateWords, style:
            TextStyle(fontSize: 100, color:
            colors[Random().nextInt(colors.length)],
            ),
            ),
          ),
        ),
      ),
    );
  }
}
