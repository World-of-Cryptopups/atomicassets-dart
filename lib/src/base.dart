import 'package:atomicassets_dart/src/assets.dart';
import 'package:atomicassets_dart/src/collections.dart';
import 'package:atomicassets_dart/src/offers.dart';
import 'package:atomicassets_dart/src/templates.dart';
import 'package:atomicassets_dart/src/transfers.dart';

import 'schemas.dart';

class AtomicAssets {
  final String endpoint;

  AtomicAssets(this.endpoint);

  Transfers newTransfersApi() {
    return Transfers(endpoint: endpoint, path: "/atomicassets/v1/transfers");
  }

  Offers newOffersApi() {
    return Offers(endpoint: endpoint, path: "/atomicassets/v1/offers");
  }

  Templates newTemplatesApi() {
    return Templates(endpoint: endpoint, path: "/atomicassets/v1/templates");
  }

  Schemas newSchemasApi() {
    return Schemas(endpoint: endpoint, path: "/atomicassets/v1/schemas");
  }

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
