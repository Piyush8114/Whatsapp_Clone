import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatSemple extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(right: 80),
        child: ClipPath(
          clipper: UpperNipMessageClipperTwo(MessageType.receive),
          child: Container(
            padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Text("Hi, Developer, How are you?",style: TextStyle(fontSize: 17),),
          ),
        ),
        ),

        Container(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(top: 20,left: 60,bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 20),
              decoration: BoxDecoration(
                  color: Color(0xFFE4FDCA),
              ),
              child: Text("Hi, Programmer, i am fine and well, thanks for asking and what about you,i hope you will be also fine.",style: TextStyle(fontSize: 17),),
            ),
          ),
        ),

        ClipPath(
          clipper: UpperNipMessageClipperTwo(MessageType.receive),
          child: Container(
            padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: Text("I'm fine thanks... How is everything",style: TextStyle(fontSize: 17),),
          ),
        ),

        Container(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(top: 20,left: 60,bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 20),
              decoration: BoxDecoration(
                color: Color(0xFFE4FDCA),
              ),
              child: Text("What i meant by 'what's up' is why did you message me",style: TextStyle(fontSize: 17),),
            ),
          ),
        ),

        ClipPath(
          clipper: UpperNipMessageClipperTwo(MessageType.receive),
          child: Container(
            padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: Text("Chill bro... Can't I atlest greet you ?",style: TextStyle(fontSize: 17),),
          ),
        ),
        SizedBox(height: 10,),
        ClipPath(
          clipper: UpperNipMessageClipperTwo(MessageType.receive),
          child: Container(
            margin: EdgeInsets.only(right: 40),
            padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: Text("I only asked how is everything to know how you are doing.",style: TextStyle(fontSize: 17),),
          ),
        ),

        Container(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(top: 20,left: 60,bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 20),
              decoration: BoxDecoration(
                color: Color(0xFFE4FDCA),
              ),
              child: Text("Okey,you want to know how I'm doing? i need my 30k back, that's what's going on",style: TextStyle(fontSize: 17),),
            ),
          ),
        ),

        ClipPath(
          clipper: UpperNipMessageClipperTwo(MessageType.receive),
          child: Container(
            padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: Text("Chill bro, it's still hasn't been to long since i borrowed it from you... Trust me, I can't run away with your money",style: TextStyle(fontSize: 17),),
          ),
        ),

        Container(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(top: 20,left: 60,bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 20),
              decoration: BoxDecoration(
                color: Color(0xFFE4FDCA),
              ),
              child: Text("What's your own definition of long?",style: TextStyle(fontSize: 17),),
            ),
          ),
        ),

        ClipPath(
          clipper: UpperNipMessageClipperTwo(MessageType.receive),
          child: Container(
            padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: Text("Okey by",style: TextStyle(fontSize: 17),),
          ),
        ),

        Container(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(top: 20,left: 60,bottom: 0),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 20),
              decoration: BoxDecoration(
                color: Color(0xFFE4FDCA),
              ),
              child: Text("Okey By ",style: TextStyle(fontSize: 17),),
            ),
          ),
        ),
      ],
    );
  }
}