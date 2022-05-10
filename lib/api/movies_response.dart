import 'package:json_annotation/json_annotation.dart';

part 'movies_response.g.dart';

@JsonSerializable(createToJson: false)
class MoviesResponse {
  final List<_Movie> results;

  MoviesResponse({required this.results});

  factory MoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class _Movie {
  final int id;
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @JsonKey(name: 'original_title')
  final String originalTitle;
  final String overview;
  @JsonKey(name: 'poster_path')
  final String posterPath;
  final String title;
  @JsonKey(name: 'release_date')
  final DateTime releaseDate;
  @JsonKey(name: 'vote_average')
  final double voteAverage;

  _Movie({
    required this.id,
    required this.backdropPath,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.title,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory _Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
