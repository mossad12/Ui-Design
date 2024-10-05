import 'package:flutter/material.dart';

import '../Style/AppColor.dart';

class Button extends StatelessWidget {
   Button({required this.text,this.onPressed,Key? key}) : super(key: key);
  String text ;
  Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(300, 50),
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
            backgroundColor: AppColor.darkBlue,
          ),
          onPressed: onPressed??(){},
            child: Text(
              text,style: TextStyle(color: AppColor.white,fontSize: 22,fontWeight: FontWeight.bold),),),
      ],
    );
  }
}
