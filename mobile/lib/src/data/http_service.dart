// File created by
// Lung Razvan <long1eu>
// on 16/11/2019

import 'dart:convert';

import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:root/root.dart' as root;

class HttpService implements root.HttpService {
  const HttpService({
    @required String host,
    @required Client client,
  })  : assert(host != null),
        assert(client != null),
        _host = host,
        _client = client;

  final String _host;
  final Client _client;

  @override
  Future<dynamic> get(String path, {Map<String, dynamic> headers}) async {
    final Response response = await _client.get('https://$_host$path', headers: headers);

    if (response.statusCode >= 200) {
      return Future<dynamic>.error(root.ApiError(response.body));
    } else {
      return jsonDecode(response.body);
    }
  }

  @override
  Future<List<dynamic>> getList(String path, {Map<String, dynamic> headers}) async {
    final Response response = await _client.get('https://$_host$path', headers: headers);

    if (response.statusCode >= 200) {
      return Future<dynamic>.error(root.ApiError(response.body));
    } else {
      return List<dynamic>.from(jsonDecode(response.body));
    }
  }

  @override
  Future<Map<String, dynamic>> getMap(String path, {Map<String, dynamic> headers}) async {
    final Response response = await _client.get('https://$_host$path', headers: headers);

    if (response.statusCode >= 200) {
      return Future<dynamic>.error(root.ApiError(response.body));
    } else {
      return Map<String, dynamic>.from(jsonDecode(response.body));
    }
  }
}