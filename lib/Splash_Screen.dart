import 'dart:async';


import 'package:demo/main.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget{
  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {

    super.initState();

    Timer(Duration(seconds: 5),(){

      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> MyHomePage()));

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(child: Text("Classic",style: TextStyle(fontSize: 34,fontWeight: FontWeight.w700,color: Colors.white),)),

      ),

    );
  }
}