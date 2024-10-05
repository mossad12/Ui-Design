import 'package:flutter/material.dart';
import 'package:roomtasks/Pages/home_page.dart';
import 'package:roomtasks/widgets/circuler_image.dart';
import 'package:roomtasks/widgets/login_page_conainer.dart';

import '../Style/AppColor.dart';
import '../widgets/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xd7b9d8e0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text('Login Page',style: TextStyle(color: AppColor.white,fontSize: 28,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             CirculerImage(image: "assets/pic3.png",radius2: 70,radius: 73,),
            const SizedBox(height: 80,),
            LoginPageConainer(
              title: "Email Address",
              value: "Username@gmail.com",
            icon: Icons.email_outlined,),
            const SizedBox(height: 30,),
            LoginPageConainer(title: "Password",
              value: "**********",
            icon: Icons.lock_outline_sharp,
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Button(
                text: "Login",
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Text("Forget Password?",style: TextStyle(color: AppColor.white,fontSize: 18,),),

                TextButton(onPressed: (){}, child: Text("Sign Up",style: TextStyle(color: AppColor.darkBlue,fontSize: 18,fontWeight: FontWeight.bold),))
              ],
            ),


          ],
        ),
      )
    );
  }
}
