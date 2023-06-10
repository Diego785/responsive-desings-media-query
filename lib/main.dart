import 'package:flutter/material.dart';
import 'package:media_query_flutter/MediaQuery1.dart';
import 'package:media_query_flutter/MediaQuery2.dart';
import 'package:media_query_flutter/MediaQueryOrientation.dart';
import 'package:media_query_flutter/MediaQueryOrientation2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MediaQueryOrientation2(),
    );
  }
}
