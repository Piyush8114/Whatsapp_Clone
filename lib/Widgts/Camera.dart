import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {

  late File imageFile;
  var FnameController = TextEditingController();

  void selectImage(ImageSource source) async {
    XFile? PickedFile = await ImagePicker().pickImage(source: source);

    if(PickedFile != null){
      cropImage(PickedFile);
    }
  }

  Future<void> cropImage(XFile file) async {
    File? croppedImage =await ImageCropper().cropImage(sourcePath: file.path,
        compressQuality: 20
    ) as File?;

    if(croppedImage != null){
      setState(() {
        imageFile = croppedImage;
      });
    }
  }

  void ShowPhotoOptions(){
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        // title: Text('Upload Profile Picture'),

        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ListTile(
            //   onTap: (){
            //     selectImage(ImageSource.gallery);
            //   },
            //   leading: Icon(Icons.photo_album),
            //   title: Text("Select from gallery"),
            // ),

            ListTile(
              onTap: (){
                selectImage(ImageSource.camera);
              },
              leading: Icon(Icons.camera_alt),
              title: Text("Take form camera"),
            )
          ],
        ),
      );
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   // title:Text("Complete Profile"),
      //   // centerTitle: true,
      // ),

      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child:ListView(
            children: [
              SizedBox(height: 20,),
              CupertinoButton(
                onPressed: (){
                  ShowPhotoOptions();
                },
                // child: CircleAvatar(
                //   radius: 60,
                  child: Icon(Icons.person,size: 60,),
                // ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
