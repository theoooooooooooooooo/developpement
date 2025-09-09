import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});
  
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 108, 157),
      appBar: AppBar(
        title: const Text("CELEFLIX"),
        leading: IconButton( 
          icon: const Icon(Icons.menu),
          onPressed: (){
            print("Menu cliqué");
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Recherche");
            }, 
            icon: const Icon(Icons.search))
        ],
      ),
//////// Liste
      body: ListView(),



//////// Expandite
      // body: Row(
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: 200, 
      //         height: 200, 
      //         color: Colors.blue, 
      //         child: Center(
      //           child: Text(
      //               "Test de container",
      //               style: TextStyle(color: Colors.white, 
      //               fontSize: 10,
      //               fontFamily: "Starborn"),
      //             ),
      //           ),
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: 200, 
      //         height: 200, 
      //         color: Colors.orange,
      //         child: Image.asset(
      //           'assets/images/image.webp',
      //           width: 200,
      //           height: 200,
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     )
      //   ],
      // ),


//////// Utilisation slack pour mettre un container en position absolu dans un autre container
      // body: Stack(
      //   children: [
      //     Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.blue,
      //     ),
      //     Positioned(
      //       top: 20,
      //       left: 20,
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         child: Image.asset(
      //           'assets/images/image.webp',
      //           width: 200,
      //           height: 200,
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

////////// Mettre une image dans un container
        // body: Center (
        // child: Container(
        //     width: 200,
        //     height: 200,
        //     decoration: BoxDecoration(
        //       color: Colors.cyan,
        //       borderRadius: BorderRadius.circular(20),
        //       border: Border.all(
        //         color: Colors.black,
        //         width: 3,
        //       ),
        //       boxShadow: [
        //         BoxShadow(
        //           color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
        //           blurRadius: 10,
        //           offset: Offset(4, 4),
        //         ),
        //       ],
        //     ),
        //   child: Image.asset(
        //     'assets/images/image.webp',
        //     width: 200,
        //     height: 200,
        //     fit: BoxFit.cover,
        //   )
        // ),
        // ),


//////// Initialiser un body
      // body: Center(
      //   child: Text(
      //     "Emjy a péter".toUpperCase(),
      //     style: TextStyle(color: Colors.white, 
      //     fontSize: 50,
      //     fontFamily: "Starborn"),
      //   )
      // ),
    );
  } 
}