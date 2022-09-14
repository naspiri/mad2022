import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RandPic',
      home: ImagePage(),
    );
  }
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  String _url = 'https://picsum.photos/id/0/1000/2000';
  final Random _random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        child: SafeArea(
          child: Image.network(
            _url,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        onDoubleTap: () => setState(() {
          _url = 'https://picsum.photos/id/${_random.nextInt(1000)}/500/500';
        }),
      ),
    );
  }
}
