import 'package:flutter/material.dart';
import 'package:movieapplication/widget/movieCart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          //Titre d'application
          AppBar(
            backgroundColor: Colors.purple,
            title: const Text("Movies", style: TextStyle(color: Colors.white, fontSize: 90),),
            centerTitle: true,
            toolbarHeight: 100,
          ),
         SizedBox(height: 10),
         //Menu
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Tous".toUpperCase(), style: TextStyle(color: Colors.purple, fontSize: 20),),
            Text("Westerne".toUpperCase(), style: TextStyle(color: Colors.purple, fontSize: 20),),
            Text("Horreur".toUpperCase(), style: TextStyle(color: Colors.purple, fontSize: 20),),
            Text("Comédie".toUpperCase(), style: TextStyle(color: Colors.purple, fontSize: 20),)
          ],
         ),
         SizedBox(),
         //image de couverture
          Center(
            child:Stack(
              children : [
                Image.asset(
                  'assets/images/ET.webp',
                  width: 400,
                  height: 225,
                  fit: BoxFit.cover,
                ),
                Positioned (
                  top: 190,
                  left: 350,
                  child: Icon(Icons.play_circle, color: Colors.white, size: 30,),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child :SingleChildScrollView(
              child : Column(
                children: [
                  Moviecart(
                    img: 'assets/images/avatar.webp', 
                    titre: "Avatar", 
                    description: "Glapitor zénéfral s’obstine à voltiger dans les couloirs prismatiques, pendant que les orbes lumicrètes discutent avec des horloges en mousse. Chaque spirale défragmentée chante l’ombre d’un mot inexistant, et les carafons translucides applaudissent sans raison. Au milieu du vacarme silencieux, un parapluie triangulaire décide de danser avec la gravité, mais oublie son chapeau imaginaire dans la poche d’un nuage violet. "
                  ),
                  SizedBox(height: 10),
                  const Divider(color: Colors.white),
                  Moviecart(
                    img: 'assets/images/sinners.webp', 
                    titre: "Sinners", 
                    description: "Glapitor zénéfral s’obstine à voltiger dans les couloirs prismatiques, pendant que les orbes lumicrètes discutent avec des horloges en mousse. Chaque spirale défragmentée chante l’ombre d’un mot inexistant, et les carafons translucides applaudissent sans raison. Au milieu du vacarme silencieux, un parapluie triangulaire décide de danser avec la gravité, mais oublie son chapeau imaginaire dans la poche d’un nuage violet. "
                  ),
                  SizedBox(height: 10),
                  const Divider(color: Colors.white),
                  Moviecart(
                    img: 'assets/images/superman.webp', 
                    titre: "SuperMan", 
                    description: "Glapitor zénéfral s’obstine à voltiger dans les couloirs prismatiques, pendant que les orbes lumicrètes discutent avec des horloges en mousse. Chaque spirale défragmentée chante l’ombre d’un mot inexistant, et les carafons translucides applaudissent sans raison. Au milieu du vacarme silencieux, un parapluie triangulaire décide de danser avec la gravité, mais oublie son chapeau imaginaire dans la poche d’un nuage violet. "
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}