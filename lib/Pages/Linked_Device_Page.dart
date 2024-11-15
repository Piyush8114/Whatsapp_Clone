import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Linked_Device extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      title: Text("Linked Devices",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
      ),
      body: Container(
        color: Colors.white54,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 170,
                margin: EdgeInsets.only(top: 25,),
                // padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                child: Padding(
                  padding: const EdgeInsets.only(right: 32),
                  child: Image.asset("assets/image/metting.png",height: 250,width: 250,),
                ),
              ),
            ),

            Padding(padding: EdgeInsets.only(bottom: 14),
            child: Text("Use WhatsApp on other devices",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25,color: Colors.black),),
            ),

            Padding(padding: EdgeInsets.symmetric(horizontal: 15,),
              child: Text("Link up to 4 devices to your whatsApp \n account and name each device",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black),),
            ),

            SizedBox(height: 15,),

            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
              ),
              child: CupertinoButton(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFF075E55),
                onPressed: (){

              },
              child: Text("Link a devices",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white,)),
              ),
            )
          ],
        ),
      ),
    );
  }
}