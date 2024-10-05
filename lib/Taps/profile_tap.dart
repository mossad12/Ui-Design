import 'package:flutter/material.dart';

import '../Style/AppColor.dart';
import '../widgets/big_circle.dart';

class ProfileTap extends StatelessWidget {
  const ProfileTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(Icons.arrow_back_ios),
        ),
        actions:const  [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.search,size: 30,),
          )
        ],
      ),
      backgroundColor: AppColor.lightBlue,
      body: Center(
        child: BigCircle(),
      ),
    );
  }
}
