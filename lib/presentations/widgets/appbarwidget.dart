import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    super.key, required this.icon, required this.ontab,
  });
  final IconData icon;
  final VoidCallback ontab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap:ontab,
      child: CircleAvatar(
        radius: 18,
        backgroundColor: Colors.grey.shade300,
        child: Icon(icon,color: Colors.grey,),
      ),
    );
  }
}