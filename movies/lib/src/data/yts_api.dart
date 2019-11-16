// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'package:meta/meta.dart';
import 'package:root/root.dart';

class YtsApi {
  const YtsApi({@required HttpService httpService})
      : assert(httpService != null),
        _httpService = httpService;

  final HttpService _httpService;

  Future<List<Movie>> getMovies(RequestState request) async {
    final String query = request.json.keys.map((String key) => '$key=${request.json[key]}').join('&');
    final Map<String, dynamic> data = await _httpService.getMap('/api/v2/list_movies.json?$query');

    return List<Map<String, dynamic>>.from(data['data']['movies'])
        .map((Map<String, dynamic> json) => Movie.fromJson(json))
        .toList();
  }
}
