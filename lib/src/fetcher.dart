import 'dart:convert';
import 'package:atomicassets_dart/src/base.dart';
import 'package:http/http.dart' as http;

class Fetcher {
  Future<FetchResponse> get<T>(Uri url) async {
    final res = await http.get(url);
    final jsonData = json.decode(res.body) as Map<String, dynamic>;
    final data = FetchResponse.fromJson(jsonData);

    if (res.statusCode != 200) {
      throw FetchException(res.statusCode, url.toString(), data.message);
    }

    return data;
  }
}

class FetchException implements Exception {
  final String url;
  final int? statusCode;
  final String? message;

  FetchException(this.statusCode, this.url, this.message);

  @override
  String toString() {
    final buf = StringBuffer();
    buf.write("Failed to fetch: $url]");
    if (statusCode != null) {
      buf.write(" with a status code of $statusCode");
    }
    buf.write("\n");
    if (message != null) {
      buf.write("Message: $message");
    }

    return buf.toString();
  }
}
