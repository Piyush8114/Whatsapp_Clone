import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WallPaper extends StatefulWidget{
  @override
  State<WallPaper> createState() => _WallPaperState();
}

class _WallPaperState extends State<WallPaper> {
  RangeValues values = RangeValues(1, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.start.toString());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBar(
          title: Text("Custom Wallpaper",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,),
              child: Column(
                children: [
                  Container(
                    // color: Colors.green,
                    height: 450,
                    width: 350,
                    child: Image.asset("assets/image/wallpapers.png",width: 100,height: 200,),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Text("Change",style: TextStyle(color: Color(0xFF075E55),fontWeight: FontWeight.w700,fontSize: 16),),
                  ),
                  Divider(),

                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text("Wallpaper Dimming",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: RangeSlider(
              values: values,
              labels: labels,
              divisions: 5,
              inactiveColor: Colors.grey,
              activeColor:  Color(0xFF075E55),
              min: 0,
              max: 100,
              onChanged: (newvalue) {
              values = newvalue;

              setState(() {

              });
            },
            ),
          ),


        ],
      ),
    );
  }
}