import 'package:createresume/screen/dataScreen.dart';
import 'package:createresume/screen/personIInformation.dart';
import 'package:createresume/screen/resumeSelectScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => Myclass(),
        'second' : (context) => Personlinformation(),
        'resumeselextscreen' : (context) => ResumeSelectScreen(),
      },
    ),
  );
}
