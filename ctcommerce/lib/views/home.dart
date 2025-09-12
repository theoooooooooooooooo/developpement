import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:ctcommerce/widget/articlecart.dart';
import 'package:ctcommerce/widget/categoriecart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 191, 191),
      appBar: AppBar(
        leading:CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage("assets/images/test.webp"),
        ),
        title: Column(
          children : [
            Text("CELEMANI Théo"),
            Text("CT Shopping", style: TextStyle(fontSize: 20, color: Colors.grey),),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.pink),
            tooltip: "Panier",
            onPressed: (){},
          ),
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.pink,),
            tooltip: "Notification",
            onPressed: (){},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            PreferredSize(
              preferredSize: Size.fromHeight(10.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Products',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.photo_camera),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0), 
              child: Image.asset(
                'assets/images/1.webp', 
                height: 250, 
                width: 370, 
                fit: BoxFit.cover
              )
            ),
            SizedBox(height: 20),
            Text("Categorie"),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Categoriecart(icon: Icon(Icons.checkroom, color: const Color.fromARGB(167, 158, 158, 158),), color: Colors.white,),
                  Categoriecart(icon: Icon(Icons.run_circle, color: const Color.fromARGB(167, 158, 158, 158),), color: Colors.white,),
                  Categoriecart(icon: Icon(Icons.shopping_bag, color: const Color.fromARGB(167, 158, 158, 158),), color: Colors.white,),
                  Categoriecart(icon: Icon(Icons.science, color: Colors.white,), color: Colors.pink,),
                  Categoriecart(icon: Icon(Icons.watch, color: const Color.fromARGB(167, 158, 158, 158),), color: Colors.white,),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [ 
                        Articlecart(img: "assets/images/test.webp", description: "Description3", prix: "10€00"),
                        Articlecart(img: "assets/images/test.webp", description: "Description4", prix: "10€00"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [ 
                        Articlecart(img: "assets/images/test.webp", description: "Description3", prix: "10€00"),
                        Articlecart(img: "assets/images/test.webp", description: "Description4", prix: "10€00"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [ 
                        Articlecart(img: "assets/images/test.webp", description: "Description5", prix: "10€00"),
                        Articlecart(img: "assets/images/test.webp", description: "Description6", prix: "10€00"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar : CircleNavBar(
        activeIndex: 0, 
        activeIcons: const [
          Icon(Icons.home, color: Colors.pink),
          Icon(Icons.list_alt, color: Colors.pink),
          Icon(Icons.settings, color: Colors.pink),
          Icon(Icons.person, color: Colors.pink),
        ], 
        inactiveIcons: const [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.list_alt, color: Colors.white),
          Icon(Icons.settings, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
        ], 
        color: Colors.pink,
        circleColor: Colors.white,
        height: 90,
        circleWidth: 90,
      ),
    );
  }
}