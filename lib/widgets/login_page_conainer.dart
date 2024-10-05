import 'package:flutter/material.dart';

import '../Style/AppColor.dart';

class LoginPageConainer extends StatelessWidget {
   LoginPageConainer({Key? key,required this.value,required this.title,required this.icon}) : super(key: key);
   String title;
   IconData icon ;
   IconData? icon2 ;
   String value ;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: TextStyle(color: AppColor.gray,fontSize: 20,),),

         const SizedBox(height: 20,),
          Row(
            children: [
              Icon(icon,color: AppColor.black,size: 30,),
              SizedBox(width: 20,),
              Text(value,style: TextStyle(color: AppColor.black,fontSize: 25),),

              Icon(icon2,color: AppColor.gray,size: 25,),
            ],
          )
        ],
      ),
    );
  }
}
