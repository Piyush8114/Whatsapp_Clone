import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallWidgets extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 25,
                    child: Icon(Icons.link,size: 30,color: Colors.white,),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  Text("Create call link",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text("Share a link for your WhatsApp call",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                 ],
               ),
                )
              ],
            ),
          ),

          Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Text("Recent",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.5)),),
            ),
          ),

          // SizedBox(height: 5,),

          Column(
            children: [
              for(int i =8; i<=12; i++)
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child:  Image.asset("assets/image/profile$i.jpg",height: 55,width: 55,fit: BoxFit.cover,),
                      )
                    ),

                    Padding(padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Coder friends",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                       Row(
                         children: [
                           Icon(Icons.call_made_sharp,color: Colors.green,),
                           SizedBox(width: 5,),
                           Text("(2) 13 December, 5:34 pm",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                         ],
                       )
                      ],
                    ),
                    ),
                    Spacer(),
                    Icon(Icons.videocam,size: 30,color: Colors.green,),
                  ],
                ),
              ),


              for(int i=4; i<=9; i++)
              Container(
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child:  Image.asset("assets/image/profile$i.jpg",height: 55,width: 55,fit: BoxFit.cover,),
                        )
                    ),

                    Padding(padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("My friends",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                          Row(
                            children: [
                              Icon(Icons.call_received,color: Colors.red,size: 23,),
                              SizedBox(width: 5,),
                              Text("(5) 1 January, 2:23 am",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.call_outlined,size: 30,color: Colors.green,),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}