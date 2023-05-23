import 'package:flutter/material.dart';

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
    return const Placeholder();
  }
}
