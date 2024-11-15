import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Starred_message extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Starred messages",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
                height:150,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xFF075E55),
                  borderRadius: BorderRadius.circular(120),
                ),
                child: Icon(Icons.star,color: Colors.white,size: 100,)),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 180,
            padding: EdgeInsets.only(top: 20),
            child: Text("Tap and hold on any message in any chat to star it, so you can easily find it later.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16,color: Colors.black45,
             ),
            ),
          )
        ],
      ),
    );
  }
}