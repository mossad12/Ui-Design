import 'package:flutter/material.dart';
import 'package:roomtasks/widgets/card.dart';
import 'package:roomtasks/widgets/home_container.dart';

import '../Style/AppColor.dart';

class Hometap extends StatelessWidget {
   Hometap({Key? key}) : super(key: key);
 final  Date =DateTime.now().day.toString()+"/"+DateTime.now().month.toString()+"/"+DateTime.now().year.toString();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.lightBlue ,
      body: Container(
        margin: EdgeInsets.all(28),
        child: SingleChildScrollView(
          child: Column(
            children:[
              HomeContainer(),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Overview",style: TextStyle(color: AppColor.darkBlue,fontSize: 30,fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Icon(Icons.notifications_active_outlined,color: AppColor.black,size: 30,),
                    ],
                  ),
                  Text(Date,style: TextStyle(color: AppColor.black,fontSize: 18,fontWeight: FontWeight.bold),),
          
                ],
              ),
              SizedBox(height: 20,),
              CustomCard(icon: Icons.arrow_upward_rounded, title: "Sent", subtitle: "Sent payment to client", balance: "\$1000",),
              SizedBox(height: 20,),
              CustomCard(icon: Icons.arrow_downward, title: "Receive", subtitle: "Receive from Comp", balance: "\$1000",),
              SizedBox(height: 20,),
              CustomCard(icon: Icons.attach_money_sharp, title: "Loan", subtitle: "Loan For The Car", balance: "\$1000",),
          
            ],
          ),
        ),
      ),
    );
  }
}
