import 'package:flutter/material.dart';

class Categoriecart extends StatelessWidget {
  final Icon icon;
  final Color color;
  const Categoriecart({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color
      ),
      child: icon
    );
  }
}