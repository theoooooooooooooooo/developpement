import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';

import 'package:movieapplication/models/movies.dart';

class Apiservice {
  
  static const String _apiKey = '20a699fb69b82aaac4aca9f0179e8594';
  static const String _baseUrl = 'https://api.themoviedb.org/3';
  
  static Future<List<Movies>> fetchPopularMovies() async {
    final url = Uri.parse("$_baseUrl/movie/popular?api_key=$_apiKey&language=fr-FR");
    final response = await http.get(url);

    if(response.statusCode == 200){
      final data = json.decode(response.body);
      final List results = data['results'];

      log('Film reçu : ${jsonEncode(results[0])}', name: 'fetchPopularMovies');

      return results.map((json) => Movies.fromJson(json)).toList();
    } else {
      throw Exception("Erreur lors du chargement des films");
    }
  }

}