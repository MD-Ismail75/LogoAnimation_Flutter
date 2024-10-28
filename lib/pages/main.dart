import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iiuc_student_portal/pages/animation.dart';
import 'package:iiuc_student_portal/pages/test.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int i = 0;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationWork(),
    );
  }
}