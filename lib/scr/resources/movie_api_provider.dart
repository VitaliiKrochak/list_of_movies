import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/item_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = '5b13953b1ac29053912400f4af36dfad';

  Future<ItemModel> fetchMovieList() async {
    print("entered");
    final response = await client
        .get("https://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");
    print(response.body.toString());
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }

  }
  Future<ItemModel> fetchMovieListUpComing() async {
    print("entered");
    final response = await client
        .get("https://api.themoviedb.org/3/movie/upcoming?api_key=$_apiKey");
    print(response.body.toString());
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }

  }

}
