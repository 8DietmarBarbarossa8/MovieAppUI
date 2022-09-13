class Movie {
  final String name;
  final String image;
  final String video;
  final String category;
  final int year;
  final double rating;
  final Duration duration;

  const Movie(
      {required this.name,
      required this.image,
      required this.video,
      required this.category,
      required this.year,
      required this.rating,
      required this.duration});

  static const List<Movie> movie = [
    Movie(
        name: "Divine gym role game",
        image: "https://i.ytimg.com/vi/Et25w7eDuy4/maxresdefault.jpg",
        video: "https://www.youtube.com/watch?v=Et25w7eDuy4",
        category: "gachi",
        year: 2019,
        rating: 4.9,
        duration: Duration(hours: 0, minutes: 50)),
    Movie(
        name: "Shlepa",
        image:
            "https://cdn141.picsart.com/cb61f9f7-996a-475c-bfb7-f0c04bc77956/386272847003203.jpg",
        video: "https://www.youtube.com/watch?v=sBg5T78LHKU",
        category: "animals",
        year: 2021,
        rating: 3.9,
        duration: Duration(hours: 0, minutes: 8)),
    Movie(
        name: "Limitless",
        image: "https://flxt.tmsimg.com/assets/p8193447_p_v8_au.jpg",
        video: "https://www.youtube.com/watch?v=lrSJ00DHuCM",
        category: "thriller, sci-fi",
        year: 2011,
        rating: 4.6,
        duration: Duration(hours: 1, minutes: 45)),
    Movie(
        name: "Conspiracy Theory",
        image:
            "https://i.ytimg.com/an_webp/7HDw6AscqaU/mqdefault_6s.webp?du=3000&sqp=COiigpkG&rs=AOn4CLCOVKbGuoYOWN3qBfVCaYnAshK4Pw",
        video: "https://www.youtube.com/watch?v=7HDw6AscqaU",
        category: "action",
        year: 2022,
        rating: 4.7,
        duration: Duration(hours: 1, minutes: 29)),
    Movie(
        name: "Astral",
        image:
            "https://film-seekers.com/wp-content/uploads/2018/10/Astral_Artwork-scaled.jpg",
        video: "https://www.youtube.com/watch?v=FgzJ9pWmBMw",
        category: "horror",
        year: 2019,
        rating: 3.1,
        duration: Duration(hours: 1, minutes: 23)),
    Movie(
        name: "Requiem for a dream",
        image:
            "https://m.media-amazon.com/images/M/MV5BOTdiNzJlOWUtNWMwNS00NmFlLWI0YTEtZmI3YjIzZWUyY2Y3XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg",
        video: "https://www.youtube.com/watch?v=nL852kBeL7g",
        category: "drama",
        year: 2000,
        rating: 4.2,
        duration: Duration(hours: 1, minutes: 45)),
    Movie(
        name: "Sugar",
        image:
            "https://m.media-amazon.com/images/M/MV5BNTY0ODM0OTQ2M15BMl5BanBnXkFtZTgwNjE3MTE1NTE@._V1_.jpg",
        video: "https://watchdocumentaries.com/that-sugar-film/",
        category: "documentary",
        year: 2014,
        rating: 3.6,
        duration: Duration(hours: 1, minutes: 41)),
    Movie(
        name: "Gorillaz for real men",
        image:
            "https://i1.sndcdn.com/artworks-NVmzCBYpFNpfMrD0-2rrVSA-t500x500.jpg",
        video: "https://www.youtube.com/watch?v=u1QVBRRp0OQ",
        category: "gachi",
        year: 2021,
        rating: 9000.0,
        duration: Duration(hours: 10, minutes: 2)),
  ];
}
