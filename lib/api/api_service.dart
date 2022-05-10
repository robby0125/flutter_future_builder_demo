import 'dart:convert';
import 'dart:developer';

import 'package:flutter_future_builder_demo/api/movies_response.dart';
import 'package:http/http.dart' as http;

abstract class ApiService {
  static const _baseUrl = 'https://api.themoviedb.org/3';
  static const _apiKey = 'YOUR_API_SERVICE_HERE';

  static Future<MoviesResponse> getMovies() async {
    final _response = await http.get(
      Uri.parse('$_baseUrl/discover/movie?api_key=$_apiKey'),
    );

    if (_response.statusCode == 200) {
      log(_response.body);
      return MoviesResponse.fromJson(jsonDecode(_response.body));
    } else {
      throw Exception('Failed to fetch Movie Discover');
    }
  }
}
