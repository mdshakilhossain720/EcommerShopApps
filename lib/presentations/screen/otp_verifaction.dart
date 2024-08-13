

import 'package:ecommerceshop/presentations/screen/complete_profile.dart';
import 'package:ecommerceshop/presentations/utility/appcolor.dart';
import 'package:ecommerceshop/presentations/widgets/app_loog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerifactions extends StatefulWidget {
   final String email;
   OtpVerifactions({super.key, required this.email});

  @override
  State<OtpVerifactions> createState() => _OtpVerifactionsState();
}

class _OtpVerifactionsState extends State<OtpVerifactions> {
  TextEditingController otpltextEditingController=TextEditingController();
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
            Text("Enter your Otp Code",style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 8),

            Text("Enter your Otp Code"),
            SizedBox(height: 16,),
            _pincode(),





            SizedBox(height: 16,),
            ElevatedButton(onPressed: (){
              Get.to(()=>CompleteProfile());
            },


                child:Text('NEXT')),
            SizedBox(height: 16),
            _buildResendCode(),
            TextButton(onPressed: (){}, child: Text('Resend')),

          ],
        ),
      ),


    );
  }

 Widget _buildResendCode() {
    return RichText(text: TextSpan(
            style: TextStyle(
              color: Colors.grey,fontWeight: FontWeight.w400,

            ),
            children: [
              TextSpan(
                text: 'Code will be experie in '
              ),
              TextSpan(
                text: '100ms',style: TextStyle(color:AppColors.primaryColor),
              )
            ]
          ));
  }
  Widget _pincode(){
    return PinCodeTextField(
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      keyboardType: TextInputType.number,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.transparent,
        selectedFillColor: AppColors.primaryColor,
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.blue.shade50,
      enableActiveFill: true,

      controller: otpltextEditingController,
      onCompleted: (v) {
        print("Completed");
      },
      // onChanged: (value) {
      //   print(value);
      //   setState(() {
      //     currentText = value;
      //   });
      // },
      appContext: context,
    );
  }


  @override
  void dispose(){
    super.dispose();
    otpltextEditingController.dispose();



  }
}
