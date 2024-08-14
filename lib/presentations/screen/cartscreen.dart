import 'package:counter_button/counter_button.dart';
import 'package:ecommerceshop/presentations/state_holders/bottomnavbarmain.dart';
import 'package:ecommerceshop/presentations/utility/appcolor.dart';
import 'package:ecommerceshop/presentations/utility/image_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

import '../widgets/cartproduct.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.find<BottomNavBarController>().backToHome();
        return false;
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text('Cart'),
            leading: IconButton(
                onPressed: () {
                  Get.find<BottomNavBarController>().backToHome();
                },
                icon: Icon(Icons.arrow_back_ios)),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                    itemBuilder: (context,index){
                  return CartProduct();
                }),
              ),

              _buildCheeckOut(),


            ],
          )),


    );
  }

  Widget _buildCheeckOut() {
    return Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color:AppColors.primaryColor.withOpacity(0.1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Total Prices",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),),
                      Text("1000",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),)


                    ],
                  ),
                  SizedBox(
                    width: 100,
                      child: ElevatedButton(onPressed: (){}, child: Text('CheeckOut')))
                ],
              ),
            );
  }
}
