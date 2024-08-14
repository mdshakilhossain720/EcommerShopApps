import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

import '../utility/appcolor.dart';
import '../utility/image_path.dart';
class CartProduct extends StatefulWidget {
  const CartProduct({super.key});

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  int _counterValue=1;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      surfaceTintColor: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              ImagePath.shoes,
              width: 100,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text("Nike show 123556825",maxLines:1,style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black
                            ),),
                            Wrap(
                              spacing: 16,
                              children: [
                                Text("Color Red :",style: TextStyle(
                                    color: Colors.black
                                ),),
                                Text("Size:X",style:TextStyle(
                                  color: Colors.black,
                                ),),
                              ],
                            )
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.delete)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$142",style: TextStyle(
                        color:AppColors.primaryColor,
                      ),),
                      buildItemCount(),

                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildItemCount() {
    return ItemCount(
                      initialValue: _counterValue,
                      minValue: 0,
                      maxValue: 10,
                      decimalPlaces: 0,
                      onChanged: (value) {
                        _counterValue=value as int;
                        setState(() {

                        });
                        // Handle counter value changes
                        print('Selected value: $value');
                      },
                    );
  }
}
