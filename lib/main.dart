import 'package:flutter/material.dart';
import 'package:whatsapps/Pages/ChatPage.dart';
import 'package:whatsapps/Pages/SettingPage.dart';
import 'package:whatsapps/watsapp_open/Language_Screeen.dart';
import 'package:whatsapps/watsapp_open/splesh_screen.dart';

import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color(0xFF075E55)
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black87.withOpacity(0)
        ),
        useMaterial3: true,
      ),
      routes: {
        "/" :(context) => Splash_Screen(),
        "Language_Screen":(context)=>Language_Screen(),
        "HomePage" :(context) => HomePage(),
        "SettingPage":(context) =>SettingPage(),
        "ChatPage":(context)=>ChatPage(),

      }
    );
  }
}

