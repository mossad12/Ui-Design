import 'package:flutter/material.dart';
import 'package:roomtasks/widgets/circuler_image.dart';

import '../Style/AppColor.dart';

class BigCircle extends StatelessWidget {
  const BigCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 190,
          child:CircleAvatar(
            radius: 160,
            backgroundColor: AppColor.gray.withOpacity(0.2),
            child:CircleAvatar(
              radius: 158,
              backgroundColor: AppColor.white.withOpacity(0.5),
              child: CircleAvatar(
                radius: 110,
                backgroundColor: AppColor.lightBlue,
                child:CircleAvatar(
                  radius: 90,
                  backgroundColor: AppColor.white,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: AppColor.darkBlue,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: AppColor.white,
                      child:CirculerImage(
                        image: "assets/pic3.png",radius: 50,radius2: 45,
                      ),
                    )
                  )
                )
              )
            ) ,
          ),
        ),
        Positioned(
          top: 0,
          left: 150,
            child: CirculerImage(
            image: "assets/pic3.png",radius: 40,radius2: 38,)),
        Positioned(
          top: 100,
            left: 0,
            child: CirculerImage(
              image: "assets/pic3.png",radius: 40,radius2: 38,)),
        Positioned(
          top:100,
            right: 0,
            child: CirculerImage(
              image: "assets/pic3.png",radius: 40,radius2: 38,)),
        Positioned(
          bottom: 40,
            left: 40,
            child: CirculerImage(
              image: "assets/pic3.png",radius: 40,radius2: 38,)),
        Positioned(
          bottom: 40,
            right: 40,
            child: CirculerImage(
              image: "assets/pic3.png",radius: 40,radius2: 38,)),
      ],
    );
  }
}
