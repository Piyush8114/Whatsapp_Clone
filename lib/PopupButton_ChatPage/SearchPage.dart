import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapps/Widgts/ChatSimple.dart';

class Search_Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.grey.shade400,
          automaticallyImplyLeading: false,
          title: Container(
            height: 40,
            // alignment: Alignment.center,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back,color: Colors.black,size: 25,)),
                SizedBox(width: 10,),
                Container(
                  width: 215,
                  // color: Colors.white,
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search"
                    ),
                  ),
                ),
                Spacer(),
                Icon(Icons.keyboard_arrow_up,size: 20,color: Colors.black,),
                SizedBox(width: 10,),
                Icon(Icons.keyboard_arrow_down,size: 20,color: Colors.black,)
              ],
            ),
          ),
          ),
        ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: ChatSemple(),
          ),
        ),
      ),
    );
  }
}