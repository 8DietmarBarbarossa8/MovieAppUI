import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Movie.dart';

class MovieScreen extends StatelessWidget {
  final Movie movie;

  const MovieScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ..._buildBG(context, movie),
          _buildMovieInformation(context),
          _buildActions(context)
        ],
      ),
    );
  }

  Positioned _buildActions(BuildContext context) {
    return Positioned(
      bottom: 150,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    primary: const Color(0xFFFF7272),
                    fixedSize:
                        Size(MediaQuery.of(context).size.width * 0.425, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    )),
                onPressed: () async {
                  try {
                    await launch(movie.video);
                  // ignore: empty_catches
                  } catch (ignored) {}
                },
                child: RichText(
                  text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'Watch the movie',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned _buildMovieInformation(BuildContext context) {
    return Positioned(
      bottom: 250,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              movie.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              _getText(movie),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            RatingBar.builder(
              initialRating: movie.rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              ignoreGestures: true,
              itemCount: 5,
              itemSize: 20,
              unratedColor: Colors.white,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4),
              itemBuilder: (context, index) {
                return const Icon(
                  Icons.star,
                  color: Colors.amber,
                );
              },
              onRatingUpdate: (double value) {},
            )
          ],
        ),
      ),
    );
  }

  String _getText(Movie movie) {
    var hours = movie.duration.inHours;
    var minutes = movie.duration.inMinutes.remainder(60);
    return '${movie.year} | ${movie.category} | ${hours}h | ${minutes}m';
  }

  List<Widget> _buildBG(BuildContext context, Movie movie) {
    return [
      Container(
        height: double.infinity,
        color: const Color(0xFF000B49),
      ),
      Image.network(
        movie.image,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        fit: BoxFit.cover,
      ),
      const Positioned.fill(
          child: DecoratedBox(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.transparent,
            Color(0xFF000B49),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.3, 0.5],
        )),
      ))
    ];
  }
}
