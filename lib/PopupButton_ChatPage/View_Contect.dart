import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class View_Contect extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          // color: Colors.green,
          margin: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back,color: Colors.black,size: 25,),
                  Spacer(),
                  PopupMenuButton(
                    elevation: 1,
                    color: Colors.white70,
                    iconSize: 28,
                    icon: Icon(Icons.more_vert,color: Colors.black,),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: Text("Share",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text("Edit",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text("View in address book",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      ),
                      PopupMenuItem(
                        value: 4,
                        child: Text("Label chat",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      ),
                      PopupMenuItem(
                        value: 5,
                        child: Text("Verify security code",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      ),
                    ],)
                ],
              ),

              Column(
                children: [
                  //**********************************************************************************
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.asset("assets/image/profile2.jpg",height: 110,width: 110,fit: BoxFit.cover,),
                    ),
                  ),

                  SizedBox(height: 5,),
                  //**********************************************************************************
                  Text('Coder',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,color: Colors.black),),

                  //**********************************************************************************

                  Text('+91 8051370133',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.black45),),

                  //**********************************************************************************
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            margin: EdgeInsets.all(8),
                            width: 90,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 0.1,
                                  spreadRadius: 0.0,
                                  // offset: Offset(2.0, 2.0), // shadow direction: bottom right
                                ),],
                            ),
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.call,size: 30,color: Colors.green,),
                                Text("Audio",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
                              ],
                            ),

                          ),
                        ),
                      ),

                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            margin: EdgeInsets.all(8),
                            width: 90,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 0.1,
                                  spreadRadius: 0.0,
                                  // offset: Offset(2.0, 2.0), // shadow direction: bottom right
                                ),],
                            ),
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.videocam,size: 30,color: Colors.green,),
                                Text("Video",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
                              ],
                            ),

                          ),
                        ),
                      ),

                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            margin: EdgeInsets.all(8),
                            width: 90,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 0.1,
                                  spreadRadius: 0.0,
                                  // offset: Offset(2.0, 2.0), // shadow direction: bottom right
                                ),],
                            ),
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.search,size: 30,color: Colors.green,),
                                Text("Search",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
                              ],
                            ),

                          ),
                        ),
                      ),

                    ],
                  ),

                  //**********************************************************************************
                  Divider(),

                  SizedBox(height: 5,),
                  Container(
                    margin: EdgeInsets.all(2),
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    height: 60,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.white70,blurRadius: 6.0)]
                    ),
                    child: Text("Hey there! i am using WhatsApp.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                  ),

                  //**********************************************************************************

                  Divider(),
                  //**********************************************************************************
                  Row(
                    children: [
                      Container(
                      child: Text("Media,links, and docs",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),),
                      ),
                      Spacer(),
                      Text("26",style: TextStyle(fontSize: 14,color: Colors.grey),),
                      Icon(Icons.arrow_forward_ios,size: 14,color: Colors.grey,)
                    ],
                  ),

                  //**********************************************************************************
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.centerLeft,

                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for(int i =1; i<=12; i++)
                          Padding(
                            padding: const EdgeInsets.only(right: 10,bottom: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 90,
                                width: 80,
                                child: Image.asset("assets/image/profile$i.jpg",height: 50,width: 30,fit: BoxFit.cover,),
                              ),
                            ),
                          ),

                          for(int i =1; i<=12; i++)
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 90,
                                  width: 80,
                                  child: Image.asset("assets/image/profile$i.jpg",height: 50,width: 30,fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),

                  //**********************************************************************************

                  Divider(),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.notifications,size: 30,color: Colors.black54,),
                          SizedBox(width: 15),
                          Text("Mute notifications",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                          Spacer(),
                          Icon(Icons.radio_button_on,size: 30,color: Colors.black38,)
                        ],
                      ),
                      SizedBox(height: 20,),

                      Row(
                        children: [
                          Icon(Icons.music_note,size: 30,color: Colors.black54,),
                          SizedBox(width: 15),
                          Text("Custom notifications",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                        ],
                      ),
                      SizedBox(height: 20,),

                      Row(
                        children: [
                          Icon(Icons.photo,size: 30,color: Colors.black54,),
                          SizedBox(width: 15),
                          Text("Media visibility",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                        ],
                      ),

                      SizedBox(height: 10,),

                      //**********************************************************************************
                      Divider(),

                      //**********************************************************************************
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.lock,size: 30,color: Colors.black54,),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Encryption",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Text("Messages and calls are end-to-end \nencrypted. Tap to verify",textAlign: TextAlign.start, style: TextStyle(color: Colors.grey,fontSize: 14),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.circle_outlined,size: 30,color: Colors.black54,),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Disappearing messages",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Text("Off",textAlign: TextAlign.start, style: TextStyle(color: Colors.grey,fontSize: 14),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.lock_open_rounded,size: 30,color: Colors.black54,),
                            SizedBox(width: 15,),
                            Text("Chat lock",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),)
                          ],
                        ),
                      ),

                      //**********************************************************************************

                      Divider(),
                    ],
                  )
                ],
              ),

              //**********************************************************************************
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.lock_open_rounded,size: 30,color: Colors.red,),
                    SizedBox(width: 15,),
                    Text("Chat lock",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.red),)
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.thumb_down,size: 30,color: Colors.red),
                    SizedBox(width: 15,),
                    Text("Report Coder",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.red),)
                  ],
                ),
              ),

              //**********************************************************************************

            ],
          ),
        ),
      ),

    );
  }
}