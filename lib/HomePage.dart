import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapps/Pages/Brodcast_Page.dart';
import 'package:whatsapps/Pages/Linked_Device_Page.dart';
import 'package:whatsapps/Pages/New_group_page.dart';
import 'package:whatsapps/Pages/SettingPage.dart';
import 'package:whatsapps/Pages/Starred_message.dart';
import 'package:whatsapps/Widgts/CallWidgets.dart';
import 'package:whatsapps/Widgts/Camera.dart';
import 'package:whatsapps/Widgts/ChatWidgts.dart';
import 'package:whatsapps/Widgts/StatusWidgts.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: 4,
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text("WhatsApp",style: TextStyle(fontSize: 21,color: Colors.white,fontWeight: FontWeight.bold),),
          ),
          actions: [
            Padding(padding: EdgeInsets.only(top: 12,right: 15),
            child: Icon(
              Icons.search,size: 28,
              color: Colors.white,
            ),
            ),
            PopupMenuButton(
              onSelected: (selected){
                if(selected == 5){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingPage(),));
                }
                else if(selected ==4){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Starred_message(),));
                }
                else if(selected ==3){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Linked_Device(),));
                }
                else if(selected ==2){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Brodcast(),));
                }
                else if(selected ==1){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => New_Group(),));
                }
              },
              elevation: 10,
              iconSize: 28,
              color: Colors.white,
              itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("New Group",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("New brodcast",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
              ),
              PopupMenuItem(
                value: 3,
                child: Text("Linked device",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
              ),
              PopupMenuItem(
                value: 4,
                child: Text("Starred message",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
              ),
              PopupMenuItem(
                value: 5,
                child: Text("Setting",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
              ),
            ],)
          ],
        ),
      ),
          body: Column(
            children: [
              Container(
                color: Color(0xFF075E55),
                child: TabBar(
                  isScrollable: true,
                  indicatorWeight: 4,
                  indicatorColor: Colors.white,
                  labelStyle: TextStyle(fontSize: 16),

                  tabs: [
                    Container(
                      width: 24,
                      child: Tab(
                        icon: Icon(Icons.camera_alt,color: Colors.white70,),
                      ),
                    ),

                    //tab 1
                    Container(
                      width: 90,
                      child: Tab(
                        child: Row(
                          children: [
                          Text("  CHATS",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500),),
                          SizedBox(width: 8,),
                            Container(
                              alignment: Alignment.center,
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text("10",style: TextStyle(color: Color(0xFF075E55),fontSize: 13),),
                            ),
                          ],
                        ),
                      )
                    ),

                    //2
                    Container(
                      width: 70,
                      child: Text(" UPDATE",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500),),
                    ),

                    //3
                    Container(
                      width: 70,
                      child: Text("  CALLS",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500),),
                    )
                  ],
                ),
              ),

              Flexible(
                  flex: 1,
                  child: TabBarView(
                children: [

                  //tab 1
                  Container(
                    child: const CompleteProfile()
                  ),

                  //tab 2 chatswidgts
                  Container(
                    child: ChatWidgts(),
                  ),

                  //tab 3 StatusWidgts
                  Container(
                    child: StatusWidgts(),
                  ),

                  //tab 4 CallWidgets
                  Container(
                    child: CallWidgets(),
                  ),

                ],
              ))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
            },
            // backgroundColor: Color(0xFF075E55),
            backgroundColor: Colors.green,
            child: Icon(Icons.message),
          ),
    )

    );
  }
}