import 'package:flutter/material.dart';
import 'package:second_app/gradient_container.dart';

void main() {
  runApp( 
     MaterialApp( 
      home: Scaffold( 
        body: GradientContainer(
          color1: Color.fromARGB(255, 33, 5, 109), 
        color2: Color.fromARGB(255, 68, 21, 149),),
      ),
    ),
  );
}