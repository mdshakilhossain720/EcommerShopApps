import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utility/appcolor.dart';

class CaruelSlider extends StatefulWidget {
  const CaruelSlider({
    super.key,
  });

  @override
  State<CaruelSlider> createState() => _CaruelSliderState();
}

class _CaruelSliderState extends State<CaruelSlider> {
  final ValueNotifier<int> selectindex=ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(height: 180.0,viewportFraction: 1,onPageChanged: (index,_){
            selectindex.value=index;

          }),
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),

                    decoration: BoxDecoration(

                      color: AppColors.primaryColor,
                    ),

                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 4,),
        ValueListenableBuilder(
          valueListenable: selectindex,
          builder: (context,currentPage,_){
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(var i=0; i<5;i++)
                  Container(
                    height: 15,
                    width: 15,
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      color: i == currentPage ? AppColors.primaryColor :null,
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(50),

                    ),
                  )
              ],
            );
          },

        )
      ],
    );
  }
}