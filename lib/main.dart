import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer player = AudioPlayer();
  void _sounds(String sou) async {
    await player.setAsset(sou);
    player.play();
  }

  Expanded buildkey1(int num) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          setState(() {
            _sounds("sounds/puppy$num.wav");
          });
        },
        child: Image.asset('images/puppy.png'),
      ),
    );
  }

  Expanded buildkey2(int num) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          setState(() {
            _sounds("sounds/cat$num.wav");
          });
        },
        child: Image.asset('images/cat.png'),
      ),
    );
  }

  Expanded buildkey3(int num) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          setState(() {
            _sounds("sounds/bird$num.wav");
          });
        },
        child: Image.asset('images/bird.png'),
      ),
    );
  }

  Expanded buildkey4(int num) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          setState(() {
            _sounds("sounds/monkey$num.wav");
          });
        },
        child: Image.asset('images/monkey.png'),
      ),
    );
  }

  Expanded buildkey5(int num) {
    return Expanded(
      flex: 3,
      child: TextButton(
        onPressed: () {
          setState(() {
            _sounds("sounds/horse$num.wav");
          });
        },
        child: Image.asset('images/horse.png'),
      ),
    );
  }

  Expanded buildkey6(int num) {
    return Expanded(
      flex: 5,
      child: TextButton(
        onPressed: () {
          setState(() {
            _sounds("sounds/lion$num.wav");
          });
        },
        child: Image.asset('images/lion.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'Animal Sounds',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            backgroundColor: Colors.white,
          ),
          body: Column(
            children: [
              Row(
                children: [
                  buildkey1(1),
                  buildkey2(Random().nextInt(2) + 1),
                ],
              ),
              Row(
                children: [
                  buildkey3(Random().nextInt(2) + 1),
                  buildkey4(Random().nextInt(2) + 1),
                ],
              ),
              Row(
                children: [
                  buildkey5(1),
                  buildkey6(Random().nextInt(1) + 1),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
