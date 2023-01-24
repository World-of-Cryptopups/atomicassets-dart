import 'fetcher.dart';

class Collections extends Fetcher {
  final String endpoint;
  final String path;

  Collections({required this.endpoint, required this.path});

  /// Fetch collection logs
  ///
  /// `/atomicassets/v1/{collectionName}/logs`
  Future<List<Map<String, dynamic>>> getCollectionNameLogs(
      String collectionName,
      {int? page,
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

    final url = Uri.https(endpoint, "$path/$collectionName/logs", params);
    final resp = await get(url);

    final respData = resp.data as List;
    final data = List<Map<String, dynamic>>.from(
        respData.map((e) => e as Map<String, dynamic>));

    return data;
  }

  /// Get stats about collection.
  ///
  /// `/atomicassets/v1/{collectionName}/stats`
  Future<Map<String, dynamic>> getCollectionNameStats(
      String collectionName) async {
    final url = Uri.https(endpoint, "$path/$collectionName/stats");
    final resp = await get(url);

    return resp.data as Map<String, dynamic>;
  }

  /// Find collection by its name.
  ///
  /// `/atomicassets/v1/collections/{collectionName}`
  Future<Map<String, dynamic>> getCollectionName(String collectionName) async {
    final url = Uri.https(endpoint, "$path/$collectionName");
    final resp = await get(url);

    return resp.data as Map<String, dynamic>;
  }

  /// Fetch collections.
  ///
  /// `/atomicassets/v1/collections`
  Future<List<Map<String, dynamic>>> getCollections({
    String? author,
    String? match,
    String? authorizedAccount,
    String? notifyAccount,
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
    if (author != null) {
      params["author"] = author;
    }
    if (match != null) {
      params["match"] = match;
    }
    if (authorizedAccount != null) {
      params["authorized_account"] = authorizedAccount;
    }
    if (notifyAccount != null) {
      params["notify_account"] = notifyAccount;
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
