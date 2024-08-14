import 'package:flutter/material.dart';

import '../utility/appcolor.dart';
import '../utility/image_path.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: Colors.white,
      child: SizedBox(
        width: 150,
        child: Column(
          children: [
            Container(

              width: 150,
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(.1),
                borderRadius: BorderRadius.circular(8),
              ),

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(ImagePath.shoes),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Nike Special 30k good sheos",
                    maxLines: 2,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Wrap(
                    spacing: 10,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "\$30",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.primaryColor),
                      ),
                      Wrap(
                        children: [
                          Icon(Icons.star,color: Colors.amber,size: 20,),
                          Text("0.4"),

                        ],
                      ),
                      Wrap(
                        children: [
                          Card(
                            color: AppColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(Icons.favorite,color: Colors.white),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}