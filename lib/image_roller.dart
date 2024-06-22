import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class ImageRoller extends StatefulWidget {
  const ImageRoller ({super.key});

  @override
  State<ImageRoller> createState(){
    return _ImageRollerState();
  }
}

class _ImageRollerState extends State<ImageRoller>{
  var currentImageRoll = 2;

  ImageRoll(){
    setState(() {
     currentImageRoll = randomizer.nextInt(4)+1;
    });
  }

  @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/pic-$currentImageRoll.png',
          width: 300,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: ImageRoll, 
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text ('most handsome'))
      ],
    );
  }
}

