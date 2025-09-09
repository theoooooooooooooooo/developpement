import 'package:flutter/material.dart';

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
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Tous".toUpperCase(), style: TextStyle(color: Colors.purple, fontSize: 20),),
              Text("Westerne".toUpperCase(), style: TextStyle(color: Colors.purple, fontSize: 20),),
              Text("Horreur".toUpperCase(), style: TextStyle(color: Colors.purple, fontSize: 20),),
              Text("Comédie".toUpperCase(), style: TextStyle(color: Colors.purple, fontSize: 20),)
            ],
          ),
          Container(
            height: 20,
          ),
          Center(
            child: Image.asset(
              'assets/images/ET.webp',
              width: 400,
              height: 225,
              fit: BoxFit.cover,
            )
          ),
          Container(
            height: 20,
          ),
          Container(
            color: Colors.black,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/avatar.webp',
                  width: 200,
                  height: 190,
                  fit: BoxFit.cover,
                ),
                Text(
                  "test1",
                  style: TextStyle(
                    color: Colors.white, 
                  ),
                )
              ],
            ),
          ),
      //     Container(
      //       height: 50,
      //     ),
      //     Container(
      //       color: Colors.black,
      //       child: Row(
      //         children: [
      //           Image.asset(
      //             'assets/images/sinners.webp',
      //             width: 200,
      //             height: 200,
      //             fit: BoxFit.cover,
      //           ),
      //           Text(
      //             "test2",
      //             style: TextStyle(
      //               color: Colors.white, 
      //             ),
      //           )
      //         ],
      //       ),
      //     ),   
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Recherche"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}