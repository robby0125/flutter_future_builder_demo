// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesResponse _$MoviesResponseFromJson(Map<String, dynamic> json) =>
    MoviesResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => _Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_Movie _$MovieFromJson(Map<String, dynamic> json) => _Movie(
      id: json['id'] as int,
      backdropPath: json['backdrop_path'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String,
      title: json['title'] as String,
      releaseDate: DateTime.parse(json['release_date'] as String),
      voteAverage: (json['vote_average'] as num).toDouble(),
    );
