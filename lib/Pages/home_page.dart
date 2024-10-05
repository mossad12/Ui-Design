import 'package:flutter/material.dart';
import 'package:roomtasks/Style/AppColor.dart';
import 'package:roomtasks/Taps/hometap.dart';

import '../Taps/balance_tap.dart';
import '../Taps/paymenttap.dart';
import '../Taps/profile_tap.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentIndex],
      bottomNavigationBar:Container(
               decoration: BoxDecoration(
                 color: AppColor.lightBlue,
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
               ),
        child: BottomNavigationBar(

          enableFeedback: true,
            elevation: 0,
            iconSize: 28,
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,

            items:const  [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.payment),
                label: 'Payment',

              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.attach_money_sharp),
                label: 'Balance',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: 'Profile',
              ),
            ] ,
            backgroundColor: AppColor.lightBlue,
            selectedItemColor: Colors.blue,
            unselectedItemColor: AppColor.black,
            showUnselectedLabels: false,


        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

        onPressed: (){},
      child: Icon(Icons.add,size: 30,),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  List<Widget> pages = [Hometap(),Paymenttap(),BalanceTap(),ProfileTap()];
}
