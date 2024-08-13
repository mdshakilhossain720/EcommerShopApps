
import 'package:flutter/material.dart';

class Hearsection extends StatelessWidget {
  final String title;
  final VoidCallback ontab;
  const Hearsection({
    super.key, required this.title, required this.ontab,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
        TextButton(onPressed:ontab, child: Text("See All",style: TextStyle(
          fontWeight: FontWeight.w400,fontSize: 16,
        ),))
      ],
    );
  }
}