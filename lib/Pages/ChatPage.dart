import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapps/PopupButton_ChatPage/LabelChat_Page.dart';
import 'package:whatsapps/PopupButton_ChatPage/More_Page.dart';
import 'package:whatsapps/PopupButton_ChatPage/SearchPage.dart';
import 'package:whatsapps/PopupButton_ChatPage/Wallpaper.dart';
import 'package:whatsapps/Widgts/ChatButom.dart';
import 'package:whatsapps/Widgts/ChatSimple.dart';

import '../PopupButton_ChatPage/View_Contect.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(top: 10, left: 15),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Colors.white,
                )),
          ),
          leadingWidth: 30,
          title: Padding(
            padding: EdgeInsets.only(top: 6),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/image/profile5.jpg",
                    height: 45,
                    width: 45,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Programmer",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Text(
                          "online",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: Colors.white),
                        )
                      ],
                    )),
              ],
            ),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(top: 10, right: 20),
                child: Icon(
                  Icons.videocam,
                  size: 35,
                  color: Colors.white,
                )),
            Padding(
                padding: EdgeInsets.only(top: 10, right: 8),
                child: Icon(
                  Icons.call,
                  size: 25,
                  color: Colors.white,
                )),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 0),
              child: PopupMenuButton(
                onSelected: (select){
                  if(select == 1){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LabelChat(),));
                  }
                  else if(select == 2){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => View_Contect(),) );
                  }
                  else if(select == 3){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Search_Page(),) );
                  }
                  else if(select == 4){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => WallPaper(),) );
                  }
                  else if(select == 5){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => More_Page(),) );
                  }
                },
                elevation: 10,
                iconSize: 28,
                color: Colors.white,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    //Animations
                  child: Hero(
                        tag: "Background",
                        child: Text("Label chat",style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),)),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("View contact", style:TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("Search", style:TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text("Wallpaper",style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                    value: 4,
                  ),
                  PopupMenuItem(
                    child: Text("More", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                    value: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image/backimg.jpg"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 80, left: 8, right: 8),
            child: Column(
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xFFFFF3C2),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 8,
                        ),
                      ]),
                  child: Text(
                    "Message and calls are end-to-end encrypted, No one outside of this chat can read or listen,tap to learn more ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                ChatSemple(),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: ChatButom(),
    );
  }
}
