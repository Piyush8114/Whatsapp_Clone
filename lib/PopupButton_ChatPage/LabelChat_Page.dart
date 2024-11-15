import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabelChat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        // height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50,bottom: 10),
                    //Animations
                    child: Hero(
                        tag: "Background",
                        child: Text("Label chat",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25,color: Colors.black),)),
                  ),
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 15),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.black
                      ),
                      child: Icon(Icons.add,size: 30,color: Colors.white,),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("New label",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),)
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 15),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.blue
                      ),
                      child: Icon(Icons.shopify,size: 30,color: Colors.white,),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("New customer",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),),
                Spacer(),
                  Icon(Icons.square_outlined,size: 25,)

                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 15),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.yellow
                      ),
                      child: Icon(Icons.shopify,size: 30,color: Colors.white,),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("New order",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),),
                  Spacer(),
                  Icon(Icons.square_outlined,size: 25,)

                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 15),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.pinkAccent.shade200
                      ),
                      child: Icon(Icons.shopify,size: 30,color: Colors.white,),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Pending payment",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),),
                  Spacer(),
                  Icon(Icons.square_outlined,size: 25,)

                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 15),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.purpleAccent.shade200
                      ),
                      child: Icon(Icons.shopify,size: 30,color: Colors.white,),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Paid",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),),
                  Spacer(),
                  Icon(Icons.square_outlined,size: 25,)

                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 15),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.greenAccent.shade200
                      ),
                      child: Icon(Icons.shopify,size: 30,color: Colors.white,),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Order complete",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),),
                  Spacer(),
                  Icon(Icons.square_outlined,size: 25,)

                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 15),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.red.shade200
                      ),
                      child: Icon(Icons.shopify,size: 30,color: Colors.white,),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Important",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),),
                  Spacer(),
                  Icon(Icons.square_outlined,size: 25,)

                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 15),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.green.shade200
                      ),
                      child: Icon(Icons.shopify,size: 30,color: Colors.white,),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Follow up",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),),
                  Spacer(),
                  Icon(Icons.square_outlined,size: 25,)

                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 15),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.deepPurple.shade300
                      ),
                      child: Icon(Icons.shopify,size: 30,color: Colors.white,),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Lead",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),),
                  Spacer(),
                  Icon(Icons.square_outlined,size: 25,)

                ],
              ),

              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                child: CupertinoButton(onPressed: (){

                },
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black38,
                child: Text("Save",style: TextStyle(color: CupertinoColors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                ),
              )
            ],
          ),
        ),
      )
    ) ;
  }
}