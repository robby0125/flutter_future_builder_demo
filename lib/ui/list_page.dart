import 'package:flutter/material.dart';
import 'package:flutter_future_builder_demo/api/api_service.dart';
import 'package:flutter_future_builder_demo/api/movies_response.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  late final Future<MoviesResponse> _futureMovies;

  @override
  void initState() {
    super.initState();
    _futureMovies = ApiService.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Discover'),
      ),
      body: FutureBuilder<MoviesResponse>(
        future: _futureMovies,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else {
            if (snapshot.hasData) {
              final _movies = snapshot.data!.results;

              return ListView.builder(
                itemCount: _movies.length,
                itemBuilder: (context, index) {
                  return Text(_movies[index].title);
                },
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                clipBehavior: Clip.none,
              );
            } else {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
          }
        },
      ),
    );
  }
}
