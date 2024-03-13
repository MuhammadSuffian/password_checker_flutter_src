import 'package:flutter/material.dart';

import 'main_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Password Strength Checker",style: TextStyle(fontSize: 14),)),
          backgroundColor:Colors.transparent ,
        ),
        body: main_screen(),
       // backgroundColor: ,
      ),
    ),
  );
}
