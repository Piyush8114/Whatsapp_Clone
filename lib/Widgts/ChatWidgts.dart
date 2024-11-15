import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapps/Pages/ChatPage.dart';

class ChatWidgts extends StatelessWidget{
  var currentdate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Column(
          children: [
            for(int i=1; i<12; i++)
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage(),));
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset("assets/image/profile$i.jpg",
                        height: 65,
                        width: 65,
                      fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Programmer",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                        SizedBox(height: 6,),
                        Text("Hello friends,it's my ui",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                      ],
                    ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text("${currentdate.hour}:${currentdate.minute}",style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.w500),),
                        // Text("12:30",style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.w500),),

                    SizedBox(height: 6,),

                        Container(
                          alignment: Alignment.center,
                          width: 27,
                          height: 27,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text("2",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 16),),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}