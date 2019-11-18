// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

abstract class HttpService {
  Future<dynamic> get(String path, {Map<String, dynamic> headers});

  Future<Map<String, dynamic>> getMap(String path, {Map<String, dynamic> headers});

  Future<List<dynamic>> getList(String path, {Map<String, dynamic> headers});
}
