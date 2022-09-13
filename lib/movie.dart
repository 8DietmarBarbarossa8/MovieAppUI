class Movie {
  final String name;
  final String image;
  final String video;
  final String category;
  final int year;
  final Duration duration;

  const Movie(
      {required this.name,
      required this.image,
      required this.video,
      required this.category,
      required this.year,
      required this.duration});

  static const List<Movie> movie = [
    Movie(
        name: "Divine gym role game",
        image: "https://i.ytimg.com/vi/Et25w7eDuy4/maxresdefault.jpg",
        video: "https://www.youtube.com/watch?v=Et25w7eDuy4",
        category: "category",
        year: 2019,
        duration: Duration(hours: 0, minutes: 50)
    ),
    Movie(
        name: "Divine gym role game",
        image: "https://i.ytimg.com/vi/Et25w7eDuy4/maxresdefault.jpg",
        video: "https://www.youtube.com/watch?v=Et25w7eDuy4",
        category: "category",
        year: 2022,
        duration: Duration(hours: 1, minutes: 30)
    ),
    Movie(
        name: "Divine gym role game",
        image: "https://i.ytimg.com/vi/Et25w7eDuy4/maxresdefault.jpg",
        video: "https://www.youtube.com/watch?v=Et25w7eDuy4",
        category: "category",
        year: 2022,
        duration: Duration(hours: 1, minutes: 30)
    ),
    Movie(
        name: "Divine gym role game",
        image: "https://i.ytimg.com/vi/Et25w7eDuy4/maxresdefault.jpg",
        video: "https://www.youtube.com/watch?v=Et25w7eDuy4",
        category: "category",
        year: 2022,
        duration: Duration(hours: 1, minutes: 30)
    ),
    Movie(
        name: "Divine gym role game",
        image: "https://i.ytimg.com/vi/Et25w7eDuy4/maxresdefault.jpg",
        video: "https://www.youtube.com/watch?v=Et25w7eDuy4",
        category: "category",
        year: 2022,
        duration: Duration(hours: 1, minutes: 30)
    ),
  ];
}
