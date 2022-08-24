import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';
import 'package:flutter_about_movie_app/data/model/detail_movie_model.dart';

import '../../data/datasource/detail_api.dart';

class MovieDetailViewModel extends ChangeNotifier {
  final AboutMovieModel movie;

  MovieDetailViewModel(this.movie);

  String getPosterUrl(DetailMovie movie) {
    return 'https://image.tmdb.org/t/p/w500${movie.posterPath}';
  }

  String getMoviesName(DetailMovie movie) {
    return movie.title!;
  }
}
