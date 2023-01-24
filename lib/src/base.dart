import 'package:atomicassets_dart/src/assets.dart';
import 'package:atomicassets_dart/src/collections.dart';

class AtomicAssets {
  final String endpoint;

  AtomicAssets(this.endpoint);

  Collections newCollectionsApi() {
    return Collections(
        endpoint: endpoint, path: "/atomicassets/v1/collections");
  }

  Assets newAssetsApi() {
    return Assets(endpoint: endpoint, path: "/atomicassets/v1/assets");
  }
}

class FetchResponse {
  final bool success;
  final String? message;
  final int? queryTime;
  final dynamic data;

  FetchResponse(
      {required this.success, this.message, this.queryTime, this.data});

  factory FetchResponse.fromJson(Map<String, dynamic> json) {
    final message = json['message'] as String?;
    final queryTime = json["query_time"] as int?;
    final data = json["data"];

    return FetchResponse(
        success: json['success'] as bool,
        message: message,
        queryTime: queryTime,
        data: data);
  }
}
