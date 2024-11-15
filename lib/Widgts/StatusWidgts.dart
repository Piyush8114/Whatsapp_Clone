import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusWidgts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey,width: 3)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("assets/image/status3.jpg",
                        height: 55,
                        width: 55,
                        fit: BoxFit.cover,),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("My Status",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                      Text("Today,12:50am",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  ),
                  Spacer(),
                  Container(
                    child: Icon(Icons.more_vert,color: Colors.green,),
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              // margin: EdgeInsets.symmetric(vertical: 10),
              child: Text("Resent update",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(1)),),
            ),

            Column(
              children: [
                for(int i=1; i<=3; i++)
                  Container(
                 margin: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.green,width: 3),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                        child: Image.asset("assets/image/status$i.jpg",
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Piyush Roy",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

                          Text("8:40 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                          SizedBox(height: 8,)
                        ],
                      ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  // margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Viewed update",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(1)),),
                ),
                for(int i=1; i<8; i++)
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.grey,width: 3),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset("assets/image/profile${i+4}.jpg",
                              height: 55,
                              width: 55,
                              fit: BoxFit.cover,),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Dear friends",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

                              Text("Yesterday, 5:40 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                              SizedBox(height: 8,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

              ],
            )
          ],
        ),
      ),
    );
  }
}