


import 'package:ecommerceshop/presentations/screen/otp_verifaction.dart';
import 'package:ecommerceshop/presentations/widgets/app_loog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  TextEditingController firstnameController=TextEditingController();
  TextEditingController lastnameController=TextEditingController();
  TextEditingController mobilenameController=TextEditingController();
  TextEditingController citynameController=TextEditingController();
  TextEditingController shippingaddressnameController=TextEditingController();

  final GlobalKey<FormState>_formkey=GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formkey,
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
                controller: firstnameController,
                decoration: InputDecoration(
                  hintText: 'Frist Name',
                ),
              ),
              SizedBox(height: 8,),
              TextFormField(
                controller: lastnameController,
                decoration: InputDecoration(
                  hintText: 'Last Name',
                ),
              ),
              SizedBox(height: 8,),
              TextFormField(
                controller: mobilenameController,
                decoration: InputDecoration(
                  hintText: 'Mobile',
                ),
              ),
              SizedBox(height: 8,),
              TextFormField(
                controller: citynameController,
                decoration: InputDecoration(
                  hintText: 'city',
                ),
              ),
              SizedBox(height: 8,),
              TextFormField(
                controller: shippingaddressnameController,
                maxLines: 3,
                decoration: InputDecoration(

                  hintText: 'shipping address',
                ),
              ),
              SizedBox(height: 16,),
              ElevatedButton(onPressed: (){
                //Get.to(()=>OtpVerifactions(email: emailtextEditingController.text));
              },


                  child:Text('NEXT')),

            ],
          ),
        ),
      ),


    );
  }

  @override
  void dispose(){
    super.dispose();
    firstnameController.dispose();
    lastnameController.dispose();
    citynameController.dispose();
    mobilenameController.dispose();
    shippingaddressnameController.dispose();




  }
}
