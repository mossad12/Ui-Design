import 'package:flutter/material.dart';
import 'package:roomtasks/Style/AppColor.dart';

class CirculerImage extends StatelessWidget {
   CirculerImage({required this.image,this.radius,this.radius2});
  String image;
  double? radius ;
   double? radius2 ;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColor.white,
      radius: radius??62,
      child:CircleAvatar(
          radius: radius2??60,
          backgroundColor: AppColor.lightBlue,
          child: Image.asset(image,width:100 ,height:100,)),
    );
  }
}
