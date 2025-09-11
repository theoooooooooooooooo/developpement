import 'package:flutter/material.dart';

class Moviecart extends StatelessWidget {
  final String img;
  final String titre;
  final String description;
  const Moviecart({super.key, required this.img, required this.titre, required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child:Stack(
            children : [
              Image.asset(
                this.img,
                fit: BoxFit.cover,
              ),
              Positioned (
                top: 190,
                left: 115,
                child: Icon(Icons.play_circle, color: Colors.white, size: 30,),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children : [
              Text(
                this.titre.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
              Text(
                this.description,
                style: TextStyle(
                  color: Colors.white, 
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}