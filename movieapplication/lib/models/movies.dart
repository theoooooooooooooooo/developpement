class Movies {
  final int id;
  final String title;
  final String overview;
  final String posterPath;

  Movies({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,

  });
  
  factory Movies.fromJson(Map<String, dynamic> json){
    return Movies(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      overview: json['overview'] ?? '', 
      posterPath: json['poster_path'] ?? '', 
    );
  }
}