import 'package:flutter/material.dart';

import '../Style/AppColor.dart';
import 'balance_row.dart';

class BalanceColumn extends StatelessWidget {
   BalanceColumn({required this.balance,required this.text});
   String balance ;
   String text ;
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        BalanceRow(
          balance: balance,
        ),
        Text(text,style: const TextStyle(color: AppColor.black,fontSize: 18,fontWeight: FontWeight.bold),),
      ],
    );
  }
}
