import 'package:flutter/material.dart';
import 'package:roomtasks/widgets/balance_row.dart';

import '../Style/AppColor.dart';
import 'circuler_image.dart';


class CustomCard extends StatelessWidget {
   CustomCard({required this.icon,required this.title,required this.subtitle,required this.balance});
   IconData icon;
   String title;
   String balance;
   String subtitle;

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: AppColor.white,
      elevation: 5,
      margin: EdgeInsets.all(3),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading:Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColor.lightBlue,
            borderRadius: BorderRadius.circular(10),
          ),
            child: Icon(icon,size: 25,)),
        title: Text(title,style: TextStyle(color: AppColor.darkBlue,fontSize: 20,fontWeight: FontWeight.bold),),
        subtitle: Text(subtitle,style: TextStyle(color: AppColor.darkBlue,fontSize: 18,),),
        trailing: Text(balance,style: TextStyle(color: AppColor.darkBlue,fontSize: 16,fontWeight: FontWeight.bold),),

      ),
    );
  }
}
