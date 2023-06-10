import 'package:flutter/material.dart';

class MediaQuery1 extends StatefulWidget {
  const MediaQuery1({super.key});

  @override
  State<MediaQuery1> createState() => _MediaQuery1State();
}

class _MediaQuery1State extends State<MediaQuery1> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Text('$screenWidth , $screenHeight', style: TextStyle(fontSize: 40),),
      ),
    );
  }
}