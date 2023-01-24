import 'fetcher.dart';

class Templates extends Fetcher {
  final String endpoint;
  final String path;

  Templates({required this.endpoint, required this.path});

  /// Fetch template logs
  ///
  /// `/atomicassets/v1/templates/{collectionName}/{templateId}/logs`
  Future<List<Map<String, dynamic>>> getTemplateIdLogs(
      {required String collectionName,
      required int templateId,
      int? page,
      int? limit,
      String? order,
      String? actionWhitelist,
      String? actionBlacklist}) async {
    var params = <String, String>{};
    if (page != null) {
      params["page"] = page.toString();
    }
    if (limit != null) {
      params["limit"] = limit.toString();
    }
    if (order != null) {
      params["order"] = order;
    }
    if (actionWhitelist != null) {
      params["action_whitelist"] = actionWhitelist;
    }
    if (actionBlacklist != null) {
      params["action_blacklist"] = actionBlacklist;
    }

    final url =
        Uri.https(endpoint, "$path/$collectionName/$templateId/logs", params);
    final resp = await get(url);

    final respData = resp.data as List;
    final data = List<Map<String, dynamic>>.from(
        respData.map((e) => e as Map<String, dynamic>));

    return data;
  }

  /// Get stats about a specific template
  ///
  /// `/atomicassets/v1/templates/{collectionName}/{templateId}/stats`
  Future<Map<String, dynamic>> getTemplateIdStats(
      {required String collectionName, required int templateId}) async {
    final url = Uri.https(endpoint, "$path/$collectionName/$templateId/stats");
    final resp = await get(url);

    return resp.data as Map<String, dynamic>;
  }

  /// Find template by id.
  ///
  /// `/atomicassets/v1/templates/{collectionName}/{templateId}`
  Future<Map<String, dynamic>> getTemplateId(
      {required String collectionName, required int templateId}) async {
    final url = Uri.https(endpoint, "$path/$collectionName/$templateId");
    final resp = await get(url);

    return resp.data as Map<String, dynamic>;
  }

  /// Fetch templates
  ///
  /// `/atomicassets/v1/templates`
  Future<List<Map<String, dynamic>>> getTemplates({
    String? collectionName,
    String? schemaName,
    int? issuedSupply,
    int? minIssuedSupply,
    int? maxIssuedSupply,
    bool? hasAssets,
    int? maxSupply,
    bool? isBurnable,
    bool? isTransferable,
    String? authorizedAccount,
    String? match,
    String? collectionBlacklist,
    String? collectionWhitelist,
    String? ids,
    String? lowerBound,
    String? upperBound,
    int? before,
    int? after,
    int? page,
    int? limit,
    String? order,
    String? sort,
  }) async {
    var params = <String, String>{};
    if (collectionName != null) {
      params["collection_name"] = collectionName;
    }
    if (schemaName != null) {
      params["schema_name"] = schemaName;
    }
    if (issuedSupply != null) {
      params["issued_supply"] = issuedSupply.toString();
    }
    if (minIssuedSupply != null) {
      params["min_issued_supply"] = minIssuedSupply.toString();
    }
    if (maxIssuedSupply != null) {
      params["max_issued_supply"] = maxIssuedSupply.toString();
    }
    if (hasAssets != null) {
      params["has_assets"] = hasAssets.toString();
    }
    if (maxSupply != null) {
      params["max_supply"] = maxSupply.toString();
    }
    if (isBurnable != null) {
      params["is_burnable"] = isBurnable.toString();
    }
    if (isTransferable != null) {
      params["is_transferable"] = isTransferable.toString();
    }
    if (authorizedAccount != null) {
      params["authorized_account"] = authorizedAccount;
    }
    if (match != null) {
      params["match"] = match;
    }
    if (collectionBlacklist != null) {
      params["collection_blacklist"] = collectionBlacklist;
    }
    if (collectionWhitelist != null) {
      params["collection_whitelist"] = collectionWhitelist;
    }
    if (lowerBound != null) {
      params["lower_bound"] = lowerBound;
    }
    if (upperBound != null) {
      params["upper_bound"] = upperBound;
    }
    if (before != null) {
      params["before"] = before.toString();
    }
    if (after != null) {
      params["after"] = after.toString();
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
    if (sort != null) {
      params["sort"] = sort;
    }

    final url = Uri.https(endpoint, path, params);
    final resp = await get(url);

    final respData = resp.data as List;
    final data = List<Map<String, dynamic>>.from(
        respData.map((e) => e as Map<String, dynamic>));

    return data;
  }
}
