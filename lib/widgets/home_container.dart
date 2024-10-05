import 'package:flutter/material.dart';
import 'package:roomtasks/widgets/balance_column.dart';
import 'package:roomtasks/widgets/balance_row.dart';

import '../Style/AppColor.dart';
import 'circuler_image.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height:height*0.4 ,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: const [BoxShadow(color: AppColor.lightBlue, spreadRadius: 3, blurRadius: 5)],
        borderRadius: BorderRadius.circular(20),

      ),
      child: Column(

        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.segment_rounded,size: 25,),
              Icon(Icons.more_vert_outlined,size: 25,),
            ],
          ),
          const SizedBox(height: 20,),
          CirculerImage(
            image: "assets/pic3.png",
          ),
          const SizedBox(height: 20,),
          const Text("Mossad Badawy",style: TextStyle(color: AppColor.darkBlue,fontSize: 18,fontWeight: FontWeight.bold),),
          const SizedBox(height: 5,),
          Text("Flutter Dev",style: TextStyle(color: AppColor.darkBlue,fontSize: 18,),),
          const SizedBox(height: 20,),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 BalanceColumn(balance: "\$8900",text: "Income",),
                const VerticalDivider(
                  color: Colors.black,
                  thickness: 1,
                ),
                 BalanceColumn(balance: "\$5500",text: "Expenses",),
                const VerticalDivider(
                  color: Colors.black,
                  thickness: 1,
                ),
                 BalanceColumn(balance: "\$890",text: "Loan",),

              ],
            ),
          )
        ],
      ),
    );
  }
}
