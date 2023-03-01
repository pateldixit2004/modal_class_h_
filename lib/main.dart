import 'dart:js';

import 'package:flutter/material.dart';
import 'package:modal_class_h/screen/homescreen.dart';
import 'package:modal_class_h/screen/mainscreem.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>HomeScreen(),
        'ui':(context)=>Screen(),
      },
    ),
  );
}