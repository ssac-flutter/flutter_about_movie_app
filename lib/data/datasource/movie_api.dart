import 'dart:convert';
import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';
import 'package:http/http.dart' as http;
import '../../api_keys/api_keys.dart';

class MovieApi {
  Future<List<AboutMovieModel>> getMovieList() async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=$ssam_api_keys&language=ko-KR&page=1');

    http.Response response = await http.get(url);
    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);
    Iterable result = json['results'];
    return result.map((e) => AboutMovieModel.fromJson(e)).toList();
  }
}
