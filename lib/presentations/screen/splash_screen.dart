import 'package:ecommerceshop/presentations/screen/home_page.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../widgets/app_loog.dart';
import 'bottomnavbar.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState(){
    super.initState();
    _moveto();
  }

  Future<void> _moveto()async{
   await Future.delayed(Duration(seconds: 3));
   Get.off(()=> BottomNavBar());

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            AppLogo(),
            Spacer(),
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text("1.0"),
            SizedBox(height: 16),


          ],
        ),
      ),

    );
  }
}


