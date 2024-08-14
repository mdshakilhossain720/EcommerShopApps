import 'package:ecommerceshop/presentations/state_holders/bottomnavbarmain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async {
        Get.find<BottomNavBarController>().backToHome();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
          leading: IconButton(onPressed: (){
            Get.find<BottomNavBarController>().backToHome();
          }, icon:Icon(Icons.arrow_back_ios)),




        ),
      ),
    );
  }
}
