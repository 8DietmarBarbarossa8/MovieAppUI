import 'package:flutter/material.dart';

import 'Movie.dart';
import 'movie_list_item.dart';
import 'movie_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Movie> movies = Movie.movie;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: _CustomerClipper(),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFF000B49),
            child: Center(
              child: Text(
                "Explore",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 150.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.headline6,
                      children: [
                    TextSpan(
                      text: 'Featured',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(text: ' movies'),
                  ])),
              const SizedBox(
                height: 20,
              ),
              for (var movie in movies)
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MovieScreen(movie: movie)));
                    },
                    child: getMovieCard(movie))
            ],
          ),
        ),
      ),
    );
  }

  Widget getMovieCard(Movie movie) {
    var year = movie.year;
    var category = movie.category;
    var hours = movie.duration.inHours;
    var minutes = movie.duration.inMinutes.remainder(60);
    return MovieListItem(
      image: movie.image,
      name: movie.name,
      information: '$year | $category | ${hours}h | ${minutes}m',
    );
  }
}

class _CustomerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    return Path()
      ..lineTo(0, height - 50)
      ..quadraticBezierTo(width / 2, height, width, height - 50)
      ..lineTo(width, 0)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
