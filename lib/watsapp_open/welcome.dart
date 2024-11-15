import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapps/watsapp_open/phone_num_add.dart';

class Welcome_Whatsapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                margin: EdgeInsets.all(20),
                child: Image.asset("assets/image/circle.png",color: Colors.green,fit: BoxFit.cover,),
              ),
            ),
          ),
          Text("Welcome to whatsapp",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Colors.black87),),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            // width: 300,
            // color: Colors.green,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Read our ",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14),),
                    Text("Privacy Policy. ",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14,color: Colors.blue),),
                    Text("Tap 'Agree and continue' ",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text("to accepg the ",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14,),),
                    Text("Terms of Service",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14,color: Colors.blue),),

                  ],
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            width: 150,
            // color: Colors.black12,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.05),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.language,color: Colors.green.shade400,),
                  SizedBox(width: 10,),
                  Text("English",style: TextStyle(color: Colors.green.shade400),),
                  SizedBox(width: 10,),
                  Icon(Icons.keyboard_arrow_down,color: Colors.green.shade400,)
                ],
              ),
            ),
          ),

          SizedBox(height: 200,),
          Container(
            margin:EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            child: CupertinoButton(child: Text("Agree and contunue"),
            color: Color(0xFF075E55),
                borderRadius: BorderRadius.circular(40),
                onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Phone_Number(),));
            }),
          )
        ],
      ),
    );
  }
}