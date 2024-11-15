import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatButom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      // color: Colors.white,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(38),
            ),
            child: Row(
              children: [
                Icon(Icons.emoji_emotions_outlined,size: 30,color: Colors.black38,),
                SizedBox(width: 10,),
                Container(
                  width: 155,
                  child: TextField(
                    style: TextStyle(fontSize: 19),

                    decoration: InputDecoration(
                        hintText: "Message",
                        border: InputBorder.none
                    ),
                  ),
                ),
                Icon(Icons.attachment_outlined,color: Colors.black38,),
                SizedBox(width: 15,),
                Icon(Icons.camera_alt,color: Colors.black38,size: 30,)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF00887A),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Icon(Icons.mic,color: Colors.white,size: 30,),
          )
        ],
      ),
    );
  }
}