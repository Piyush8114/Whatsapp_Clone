import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapps/Widgts/ChatWidgts.dart';

class Brodcast extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(top: 6),
            child: Row(
              children: [
                Column(
                  children: [
                    Text("New brodcast",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.white),),
                    Text("0 of 145 selected",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.white),)
                  ],
                ),
                Spacer(),
                Icon(Icons.search,color: Colors.white,size: 30,)
              ],
            ),
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 00, vertical: 0),
        child: ChatWidgts(),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        backgroundColor:  Color(0xFF075E55),
        child: Icon(Icons.check,color: Colors.black,size: 30,),
      ),
    );
  }
}