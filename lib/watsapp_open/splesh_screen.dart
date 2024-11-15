import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapps/HomePage.dart';
import 'package:whatsapps/watsapp_open/Language_Screeen.dart';

class Splash_Screen extends StatefulWidget{

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override

  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Language_Screen(),) );
    });
  }

  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          // child: Image.asset("assets/image/splash.png",height: 100,width: 100,),
          child: Image.asset("assets/image/logo.png",height: 100,width: 100,),
        ),

      ),
    );
  }
}