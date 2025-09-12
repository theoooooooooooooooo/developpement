import 'package:flutter/material.dart';
import 'package:movieapplication/service/apiService.dart';
import 'package:movieapplication/models/movies.dart';
import 'package:movieapplication/widget/cartapi.dart';

class Dynamiquehome extends StatefulWidget {
  const Dynamiquehome({super.key});

  @override
  State<Dynamiquehome> createState() => _DynamiquehomeState();
}

class _DynamiquehomeState extends State<Dynamiquehome> {
  late Future<List<Movies>> futureMovies;

  @override
  void initState() {
    super.initState();
    futureMovies = Apiservice.fetchPopularMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          //Titre d'application
          AppBar(
            backgroundColor: Colors.purple,
            title: const Text(
              "Movies",
              style: TextStyle(color: Colors.white, fontSize: 90),
            ),
            centerTitle: true,
            toolbarHeight: 100,
          ),

          const SizedBox(height: 10),

          //Menu (statique pour l’instant)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("TOUS", style: TextStyle(color: Colors.purple, fontSize: 20)),
              Text("WESTERNE", style: TextStyle(color: Colors.purple, fontSize: 20)),
              Text("HORREUR", style: TextStyle(color: Colors.purple, fontSize: 20)),
              Text("COMÉDIE", style: TextStyle(color: Colors.purple, fontSize: 20)),
            ],
          ),

          const SizedBox(height: 10),

          // image de couverture (fixe pour l'instant)
          Center(
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/ET.webp',
                  width: 400,
                  height: 225,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  top: 190,
                  left: 350,
                  child: Icon(Icons.play_circle, color: Colors.white, size: 30),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Liste des films (depuis API)
          Expanded(
            child: FutureBuilder<List<Movies>>(
              future: futureMovies,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator(color: Colors.purple));
                } else if (snapshot.hasError) {
                  return Center(child: Text("Erreur : ${snapshot.error}", style: const TextStyle(color: Colors.white)));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text("Aucun film trouvé", style: TextStyle(color: Colors.white)));
                }

                final movies = snapshot.data!;

                return SingleChildScrollView(
                  child: Column(
                    children: movies.map((movie) {
                      return Column(
                        children: [
                          cartapi(
                            img: "https://image.tmdb.org/t/p/w500${movie.posterPath}",
                            titre: movie.title,
                            description: movie.overview,
                          ),
                          const SizedBox(height: 10),
                          const Divider(color: Colors.white),
                        ],
                      );
                    }).toList(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
