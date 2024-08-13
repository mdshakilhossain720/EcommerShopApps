import 'package:ecommerceshop/presentations/utility/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
    MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
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
