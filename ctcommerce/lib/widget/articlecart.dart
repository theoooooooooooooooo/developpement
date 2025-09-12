import 'package:flutter/material.dart';

class Articlecart extends StatelessWidget {
  final String img;
  final String description;
  final String prix;
  const Articlecart({super.key, required this.img, required this.description, required this.prix});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 210,
          height: 210,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child :Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0), 
              child: Image.asset(img, 
              height: 190, 
              width: 190, 
              fit: BoxFit.cover)
            ),
          ),
        ),
        Text(description),
        Text(prix),
      ],
    );
  }
}