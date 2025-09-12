import 'package:flutter/material.dart';

class cartapi extends StatelessWidget {
  final String img;
  final String titre;
  final String description;
  const cartapi({super.key, required this.img, required this.titre, required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Stack(
            children: [
              Image.network(
                img,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => const Icon(Icons.broken_image, color: Colors.white),
              ),
              const Positioned(
                top: 190,
                left: 115,
                child: Icon(Icons.play_circle, color: Colors.white, size: 30),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titre.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30, // j’ai réduit pour éviter que ça déborde
                ),
              ),
              Text(
                description,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
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
