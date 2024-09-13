import 'package:flutter/material.dart';
import 'package:xylophone_1/tile.dart';


void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MusicTile(color: Color.fromARGB(255, 58, 144, 229), soundNumber: 1, padding: 10,),
          MusicTile(color: Color.fromARGB(255, 247, 138, 176), soundNumber: 2, padding: 25,),
          MusicTile(color: Color.fromARGB(255, 255, 230, 117), soundNumber: 3, padding: 40,),
          MusicTile(color: Color.fromARGB(255, 255, 104, 129), soundNumber: 4, padding: 55,),
          MusicTile(color: Color.fromARGB(255, 76, 180, 164), soundNumber: 5, padding: 70,),
          MusicTile(color: Color.fromARGB(255, 250, 182, 80), soundNumber: 6, padding: 85,),
          MusicTile(color: Color.fromARGB(255, 183, 89, 200), soundNumber: 7, padding: 100,),
        ],
      ),
    );
  }
}