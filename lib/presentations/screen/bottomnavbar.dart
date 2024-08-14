import 'package:ecommerceshop/presentations/screen/wishlist.dart';
import 'package:ecommerceshop/presentations/state_holders/bottomnavbarmain.dart';
import 'package:ecommerceshop/presentations/utility/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cartscreen.dart';
import 'category_list_screen.dart';
import 'home_page.dart';

class BottomNavBar extends StatefulWidget {
   BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final BottomNavBarController bottomNavBarController=Get.find<BottomNavBarController>();
 List<Widget>screen=[
   HomePage(),
   CategroyList(),
   CartScreen(),
   WishList()


 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNavBarController>(builder: (_){
        return screen[bottomNavBarController.selectIndex];
      }),
      bottomNavigationBar: GetBuilder<BottomNavBarController>(
        builder: (_) {
          return BottomNavigationBar(
              currentIndex: bottomNavBarController.selectIndex,
              onTap: bottomNavBarController.changeIndex,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,

              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: 'Categroy'),
                BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label:'Cart'),
                BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'WishList'),

              ]);
        },

      ),

    );
  }
}
