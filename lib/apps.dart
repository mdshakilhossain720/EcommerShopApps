
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'binding.dart';
import 'presentations/screen/splash_screen.dart';
import 'presentations/utility/appcolor.dart';

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      initialBinding: ControllerBinding(),
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primaryColor
          )
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        colorSchemeSeed: AppColors.primaryColor,
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColors.primaryColor,
        ),
        textTheme: _textTheme (),
        inputDecorationTheme:_inputDecorationTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              fixedSize: Size.fromWidth(double.maxFinite),
              padding: EdgeInsets.symmetric(horizontal: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              backgroundColor: AppColors.primaryColor,
              foregroundColor: Colors.white,
              textStyle: TextStyle(
                fontSize: 14,

              )
          ),
        ),



      ),




    );
  }

  TextTheme _textTheme ()=>TextTheme(

      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      headlineSmall: TextStyle(
        fontSize: 14,
        color: Colors.blueGrey,
      )

  );

  InputDecorationTheme _inputDecorationTheme()=>InputDecorationTheme(
    hintStyle: TextStyle(
      fontWeight: FontWeight.w400,
    ),
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    errorBorder: outlineInputBorder.copyWith(
      borderSide: BorderSide(color: Colors.red),
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),




  );

  OutlineInputBorder outlineInputBorder =OutlineInputBorder(
      borderSide: BorderSide(
          color: AppColors.primaryColor
      )
  );
}

