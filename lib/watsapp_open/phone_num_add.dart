import 'package:flutter/material.dart';
import 'package:whatsapps/HomePage.dart';

class Phone_Number extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title:Text("Enter your phone number",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500, color: Color(0xFF075E55)),),
          centerTitle: true,
          actions: [
            PopupMenuButton(itemBuilder: (context) => [
              PopupMenuItem(
                  value: 1,
                  child: Text("Link as companion device")),
              PopupMenuItem(
                  value: 1,
                  child: Text("Help")),
            ],)
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text("WhatsApp will need to verify your account.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                 Text("What's",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.blue.shade200),)
                  ],
                ),
                Text("my number?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.blue.shade200),),

                SizedBox(height: 25,),

                Container(
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.green)
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("India",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w400),),
                     SizedBox(width: 30,),
                      Icon(Icons.arrow_drop_down_outlined, size: 30,color: Colors.green,)
                    ],
                  )
                ),

                // SizedBox(height: 15,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        width: 268,
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.green)
                          ),
                        ),
                       child: Row(

                         children: [
                           Text("+  91",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),

                           SizedBox(width: 25,),

                           Container(
                             width: 200,
                             decoration: BoxDecoration(
                               border: Border(
                                   bottom: BorderSide(color: Colors.green,width: 1)
                               ),
                             ),
                             child: TextField(
                               decoration: InputDecoration(
                                   hintText: "Phone number"
                               ),
                             ),
                           ),
                         ],
                       ),
                    ),
                  ],
                ),

                SizedBox(height: 15,),
                
                Text("International carrier charges may apply",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
              ],
            )
          ],
        ),
      ),
      bottomSheet: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF075E55)),
          ),
          child: Text("Next",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
