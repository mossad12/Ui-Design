import 'package:flutter/material.dart';

import '../Style/AppColor.dart';

class BalanceRow extends StatelessWidget {
   BalanceRow({required this.balance}) ;
   String balance ;

  @override
  Widget build(BuildContext context) {
    return Text(balance,style: TextStyle(color: AppColor.darkBlue,fontSize: 22,fontWeight: FontWeight.bold),);
  }
}
