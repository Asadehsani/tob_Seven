import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tob_seven/English%20word.dart';
import 'package:tob_seven/Enlish%20Werds.dart';
import 'package:tob_seven/IconPlus.dart';
import 'package:tob_seven/Share%20Plus.dart';
import 'package:tob_seven/TestCall.dart';
import 'package:tob_seven/photoView.dart';
import 'package:tob_seven/rflu.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TopSeven(),
    )
  );
}

class TopSeven extends StatefulWidget {
  const TopSeven({Key? key}) : super(key: key);

  @override
  State<TopSeven> createState() => _TopSevenState();
}

class _TopSevenState extends State<TopSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('TopSeven Pakage', style: TextStyle(fontSize: 35),),
      ),
      body:
      Row(
        children: [
          Expanded(child:
          Column(
            children: [
              Expanded(child:  ListTile(
                title: Text('English Word', style: TextStyle(fontSize: 40.0),),
                leading: Icon(Icons.abc_sharp, size: 60, color: Colors.deepOrangeAccent,),
                subtitle: Text('tap for more information'),
                splashColor: Colors.purple,
                onTap:
                    (){
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp()));
                  });
                },
              ),),
              Expanded(child:  ListTile(
                title: Text('Awesome Font', style: TextStyle(fontSize: 40.0),),
                leading: Icon(Icons.font_download_outlined,size: 60,
                color: Colors.purple,),
                subtitle: Text('tap for more information'),
                splashColor: Colors.yellow,

                onTap:
                    (){
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Awsome()));
                  });
                },
              ),),
              Expanded(child:  ListTile(
                title: Text('IconPlus', style: TextStyle(fontSize: 40.0),),
                leading: Icon(Icons.add_box_outlined, size: 60,),
                subtitle: Text('tap for more information'),
                splashColor: Colors.purple,
                iconColor: Colors.purpleAccent,
                onTap:
                    (){
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  });
                },
              ),),
              Expanded(child:  ListTile(
                title: Text('TestCall', style: TextStyle(fontSize: 40.0),),
                leading: Icon(Icons.add_call, color: Colors.green, size: 60,),
                subtitle: Text('tap for more information'),
                splashColor: Colors.purple,
                onTap:
                    (){
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Call()));
                  });
                },
              ),),
              Expanded(child:  ListTile(
                title: Text('Photo View', style: TextStyle(fontSize: 40.0),),
                leading: Icon(Icons.photo, size: 60,),
                subtitle: Text('tap for more information'),
                splashColor: Colors.purple,
                iconColor: Colors.deepPurpleAccent,
                onTap:
                    (){
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Photo()));
                  });
                },
              ),),

              Expanded(child:  ListTile(
                title: Text('Share Plus', style: TextStyle(fontSize: 40.0),),
                leading: Icon(Icons.share, size: 60,),
                subtitle: Text('tap for more information'),
                splashColor: Colors.purple,
                iconColor: Colors.cyanAccent,
                onTap:
                    (){
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SharePlus()));
                  });
                },
              ),),
              Expanded(child:  ListTile(
                title: Text('rflutter Alert', style: TextStyle(fontSize: 40.0),),
                leading: Icon(Icons.add_alert_outlined, size: 60,),
                subtitle: Text('tap for more information'),
                splashColor: Colors.purple,
                iconColor: Colors.red,
                onTap:
                    (){
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => rflu()));
                  });
                },
              ),),
            ],

          ))
        ],
      ),
    );
  }
}
