import 'package:flutter/material.dart';
import 'package:roomtasks/widgets/big_circle.dart';
import 'package:roomtasks/widgets/button.dart';
import 'package:roomtasks/widgets/card.dart';

import '../Style/AppColor.dart';

class Paymenttap extends StatelessWidget {
  const Paymenttap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightBlue,
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
      body: Container(
        padding: const EdgeInsets.all(15),
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Resent Transaction",style: TextStyle(color: AppColor.darkBlue,fontSize: 28,fontWeight: FontWeight.bold),),
                  Text("See All",style: TextStyle(color: AppColor.gray,fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 10,),
              DefaultTabController(
                length: 3,
                child: TabBar(
                    tabs: const [
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 0.1,horizontal: 30),
                    child: Tab(child: Text("All",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 0.1,horizontal: 20),
                    child: Tab(child: Text("Sent",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 0.1,horizontal: 10),
                    child: Tab(child: Text("Received",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
                  ),
                ],
          
          
                  indicator: BoxDecoration(
                    color: AppColor.darkBlue,
          
          
                    borderRadius: BorderRadius.circular(30)
                    ,
                  ),
                  labelColor: AppColor.white,
                  dividerColor: Colors.transparent,
                  indicatorColor: AppColor.gray,
                   unselectedLabelColor: AppColor.gray,
          
                )
              ),
              const SizedBox(height: 10,),
              const Text("Today",style: TextStyle(color: AppColor.darkBlue,fontSize: 22,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              CustomCard(icon: Icons.mark_as_unread_outlined, title: "payment", subtitle: "payment from Anderea", balance: "\$30.00",),
              const SizedBox(height: 10,),
              const BigCircle(),
              
              Button(
                text: "See Details",
              )
          
            ],
          ),
        ),
      ),
    );
  }
}
