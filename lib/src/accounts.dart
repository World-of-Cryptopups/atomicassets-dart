import 'package:atomicassets_dart/src/fetcher.dart';

class Accounts extends Fetcher {
  final String endpoint;
  final String path;

  Accounts({required this.endpoint, required this.path});

  /// Retrieves the template and schema count for the given account and collection name.
  ///
  /// `/atomicassets/v1/accounts/{account}/{collectionName}`
  Future<Map<String, dynamic>> getAccountCollectionName(
      {required String? account, required String collectionName}) async {
    final url = Uri.https(endpoint, "$path/$account/$collectionName");
    final resp = await get(url);

    return resp.data as Map<String, dynamic>;
  }

  /// Get a specific account stats.
  ///
  /// `/atomicassets/v1/accounts/{account}`
  Future<Map<String, dynamic>> getAccount(
      {required String account,
      bool? hideOffers,
      String? collectionBlacklist,
      String? collectionWhitelist}) async {
    var params = <String, String>{};
    if (hideOffers != null) {
      params["hide_offers"] = hideOffers.toString();
    }
    if (collectionBlacklist != null) {
      params["collection_blacklist"] = collectionBlacklist;
    }
    if (collectionWhitelist != null) {
      params["collection_whitelist"] = collectionWhitelist;
    }

    final url = Uri.https(endpoint, "$path/$account", params);
    final resp = await get(url);

    return resp.data as Map<String, dynamic>;
  }

  /// Get accounts which own atomicassets NFTs.
  ///
  /// `/atomicassets/v1/accounts`
  Future<List<Map<String, dynamic>>> getAccounts({
    String? matchOwner,
    String? collectionName,
    String? schemaName,
    int? templateId,
    bool? burned,
    bool? hideOffers,
    String? collectionBlacklist,
    String? collectionWhitelist,
    String? ids,
    String? lowerBound,
    String? upperBound,
    int? page,
    int? limit,
    String? order,
  }) async {
    var params = <String, String>{};
    if (matchOwner != null) {
      params["match_owner"] = matchOwner;
    }
    if (collectionName != null) {
      params["collection_name"] = collectionName;
    }
    if (schemaName != null) {
      params["schema_name"] = schemaName;
    }
    if (templateId != null) {
      params["template_id"] = templateId.toString();
    }
    if (burned != null) {
      params["burned"] = burned.toString();
    }
    if (hideOffers != null) {
      params["hide_offers"] = hideOffers.toString();
    }
    if (collectionBlacklist != null) {
      params["collection_blacklist"] = collectionBlacklist;
    }
    if (collectionWhitelist != null) {
      params["collection_whitelist"] = collectionWhitelist;
    }
    if (ids != null) {
      params["ids"] = ids;
    }
    if (lowerBound != null) {
      params["lower_bound"] = lowerBound;
    }
    if (upperBound != null) {
      params["upper_bound"] = upperBound;
    }
    if (page != null) {
      params["page"] = page.toString();
    }
    if (limit != null) {
      params["limit"] = limit.toString();
    }
    if (order != null) {
      params["order"] = order;
    }

    final url = Uri.https(endpoint, path, params);
    final resp = await get(url);

    final respData = resp.data as List;
    final data = List<Map<String, dynamic>>.from(
        respData.map((e) => e as Map<String, dynamic>));

    return data;
  }
}
