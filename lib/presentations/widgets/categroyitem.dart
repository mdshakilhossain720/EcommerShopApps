
import 'package:ecommerceshop/presentations/screen/product_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/appcolor.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(ProductList(productlist: 'Electronic'));
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.desktop_windows,
              size: 48,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 5,),
          Text(
            "Electronics",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                letterSpacing: .2,
                color: AppColors.primaryColor),
          )
        ],
      ),
    );
  }
}