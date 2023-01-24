import 'fetcher.dart';

class Schemas extends Fetcher {
  final String endpoint;
  final String path;

  Schemas({required this.endpoint, required this.path});

  /// Fetch schema logs.
  ///
  /// `/atomicassets/v1/schemas/{collectionName}/{schemaName}/logs`
  Future<List<Map<String, dynamic>>> getSchemaNameLogs(
      {required String collectionName,
      required String schemaName,
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
        Uri.https(endpoint, "$path/$collectionName/$schemaName/logs", params);
    final resp = await get(url);

    final respData = resp.data as List;
    final data = List<Map<String, dynamic>>.from(
        respData.map((e) => e as Map<String, dynamic>));

    return data;
  }

  /// Get stats about a specific schema.
  ///
  /// `/atomicassets/v1/schemas/{collectionName}/{schemaName}/stats`
  Future<Map<String, dynamic>> getSchemaNameStats(
      {required String collectionName, required String schemaName}) async {
    final url = Uri.https(endpoint, "$path/$collectionName/$schemaName/stats");
    final resp = await get(url);

    return resp.data as Map<String, dynamic>;
  }

  /// Find schema by name.
  ///
  /// `/atomicassets/v1/schemas/{collectionName}/{schemaName}`
  Future<Map<String, dynamic>> getSchemaName(
      {required String collectionName, required String schemaName}) async {
    final url = Uri.https(endpoint, "$path/$collectionName/$schemaName");
    final resp = await get(url);

    return resp.data as Map<String, dynamic>;
  }

  /// Fetch schemas.
  ///
  /// `/atomicassets/v1/schemas`
  Future<List<Map<String, dynamic>>> getSchemas({
    String? collectionName,
    String? authorizedAccount,
    String? schemaName,
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
    if (authorizedAccount != null) {
      params["authorized_account"] = authorizedAccount;
    }
    if (schemaName != null) {
      params["schema_name"] = schemaName;
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
    if (ids != null) {
      params["ids"] = ids;
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
