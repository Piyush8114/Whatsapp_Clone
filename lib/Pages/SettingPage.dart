import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Setting",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10,left: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("assets/image/profile4.jpg",height: 70,width: 70,fit: BoxFit.cover,),
                    )
                  ),

                  Padding(padding: EdgeInsets.only(left: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Programmer",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(height: 6,),
                      Text("Hey there, i am using whatsapp.",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black45),),
                    ],
                  ),
                  ),
                  Spacer(),
                  Icon(Icons.qr_code_2,size: 30,color: Colors.green,)
                ],
              ),
              SizedBox(height: 5,),
              Divider(),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.key,size: 25,),
                ),
                title: Text("Account",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black87),),
                subtitle: Text("Privacy, Security. change number",style: TextStyle(fontSize: 15)),

              ),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.message,size: 25,),
                ),
                title: Text("Chats",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black87),),
                subtitle: Text("Theme, wallpaper, chat history",style: TextStyle(fontSize: 15)),

              ),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.notifications,size: 25,),
                ),
                title: Text("Notifications",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black87),),
                subtitle: Text("Message,group & call tones",style: TextStyle(fontSize: 15)),

              ),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.circle_outlined,size: 25,),
                ),
                title: Text("Storage & data",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black87),),
                subtitle: Text("Network using, auto download",style: TextStyle(fontSize: 15)),

              ),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.language,size: 25,),
                ),
                title: Text("App language",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black87),),
                subtitle: Text("English(device's language",style: TextStyle(fontSize: 15)),

              ),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.help_outline,size: 25,),
                ),
                title: Text("Help",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black87),),
                subtitle: Text("Help center, contect us, privacy policy",style: TextStyle(fontSize: 15)),
              ),

              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.group,size: 25,),
                ),
                title: Text("Invite a contact",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black87),),
              ),

              Padding(padding: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  Text("From",style: TextStyle(fontSize: 15),),
                  Text("Facebook",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                ],
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}