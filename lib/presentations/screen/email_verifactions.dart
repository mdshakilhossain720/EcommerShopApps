

import 'package:ecommerceshop/presentations/screen/otp_verifaction.dart';
import 'package:ecommerceshop/presentations/widgets/app_loog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerifactions extends StatefulWidget {
  const EmailVerifactions({super.key});

  @override
  State<EmailVerifactions> createState() => _EmailVerifactionsState();
}

class _EmailVerifactionsState extends State<EmailVerifactions> {
  TextEditingController emailtextEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppLogo(),
            SizedBox(height: 16,),
            Text("Welcome Back",style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 8),

            Text("Enter your email address"),
            SizedBox(height: 16,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'email',
              ),
            ),
            SizedBox(height: 16,),
            ElevatedButton(onPressed: (){
              Get.to(()=>OtpVerifactions(email: emailtextEditingController.text));
            },


                child:Text('NEXT')),

          ],
        ),
      ),


    );
  }

  @override
  void dispose(){
    super.dispose();
    emailtextEditingController.dispose();


  }
}
