import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapps/watsapp_open/welcome.dart';

class Language_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.lightBlue,
        margin: EdgeInsets.only(top: 120),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,),
          child: Column(
            children: [
              Container(
                width: 300,
                height: 160,
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset("assets/image/language.png",height: 135,width: 275,fit: BoxFit.cover,color: Colors.green.shade200,),
                ),
              ),
              ListTile(
                title: Text("Welcome to whatsapp",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87),),
             subtitle: Text("Choose your language to get started",textAlign: TextAlign.center, style:TextStyle(fontWeight: FontWeight.w500,fontSize: 16) ,),
              ),
              SizedBox(height: 25,),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.circle_outlined,size: 25,color: Colors.green,),
                                title: Text("English",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                subtitle: Text("(device's language)"),
                              ),
                              ListTile(
                                leading: Icon(Icons.circle_outlined,size: 25),
                                title: Text("हिन्दी",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                subtitle: Text("Hindi"),
                              ),
                              ListTile(
                                leading: Icon(Icons.circle_outlined,size: 25),
                                title: Text("বাংলা",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                subtitle: Text("Bengali"),
                              ),
                              ListTile(
                                leading: Icon(Icons.circle_outlined,size: 25),
                                title: Text("मराठी",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                subtitle: Text("Marathi"),
                              ),
                              ListTile(
                                leading: Icon(Icons.circle_outlined,size: 25),
                                title: Text("தமிழ்",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                subtitle: Text("Tamil"),
                              ),
                              ListTile(
                                leading: Icon(Icons.circle_outlined,size: 25),
                                title: Text("हગુજરાતી",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                subtitle: Text("Gujarati"),
                              ),
                              ListTile(
                                leading: Icon(Icons.circle_outlined,size: 25),
                                title: Text("اُردُو",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                subtitle: Text("Urdu"),
                              ),
                              ListTile(
                                leading: Icon(Icons.circle_outlined,size: 25),
                                title: Text("हಕನ್ನಡ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                subtitle: Text("Kannada"),
                              ),
                              ListTile(
                                leading: Icon(Icons.circle_outlined,size: 25),
                                title: Text("ଓଡ଼ିଆ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                subtitle: Text("Odia"),
                              ),
                              ListTile(
                                leading: Icon(Icons.circle_outlined,size: 25),
                                title: Text("हമലയാളം",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                subtitle: Text("Malayalam"),
                              ),
                              ListTile(
                                leading: Icon(Icons.circle_outlined,size: 25),
                                title: Text("বਪੰਜਾਬੀپنجابی",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                subtitle: Text("Punjabi"),
                              ),
                              ListTile(
                                leading: Icon(Icons.circle_outlined,size: 25),
                                title: Text("हঅসমীয়া",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                subtitle: Text("Assamese"),
                              ),
                              ListTile(
                                leading: Icon(Icons.circle_outlined,size: 25),
                                title: Text("বमैथिली",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                subtitle: Text("Maithili"),
                              ),

                              // Icon(Icons.circle_outlined,size: 20,color: Colors.green,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade400,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome_Whatsapp(),));
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}