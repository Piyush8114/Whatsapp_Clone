import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapps/Widgts/ChatWidgts.dart';

class New_Group extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: Size.fromHeight(55),
      child: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Padding(
            padding: EdgeInsets.only(top: 6),
            child: Row(
              children: [
                Column(
                  children: [
                    Text("New group",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.white),),
                    Text("Add members",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.white),)
                  ],
                ),
                Spacer(),
                Icon(Icons.search,size: 30,color: Colors.white,)
              ],
            )
        ),
      ),
    ),
    body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
      child: ChatWidgts(),
    ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        backgroundColor:  Color(0xFF075E55),
        child: Icon(Icons.arrow_forward,color: Colors.black,size: 30,),
      ),
    );
  }
}
