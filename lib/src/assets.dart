import 'package:atomicassets_dart/src/fetcher.dart';

class Assets extends Fetcher {
  final String endpoint;
  final String path;

  Assets({required this.endpoint, required this.path});

  /// Fetch asset logs.
  ///
  /// `/atomicassets/v1/assets/{ID}/logs`
  Future<List<Map<String, dynamic>>> getAssetIdLogs(String id,
      {int? page,
      String? order,
      String? actionWhitelist,
      String? actionBlacklist}) async {
    var params = <String, String>{};
    if (page != null) {
      params["page"] = page.toString();
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

    final url = Uri.https(endpoint, "$path/$id/logs", params);
    final resp = await get(url);

    final respData = resp.data as List;
    final data = List<Map<String, dynamic>>.from(
        respData.map((e) => e as Map<String, dynamic>));

    return data;
  }

  /// Fetch asset stats.
  ///
  /// `/atomicassets/v1/assets/{ID}/stats`
  Future<Map<String, dynamic>> getAssetIdStats(String id) async {
    final url = Uri.https(endpoint, "$path/$id/stats");
    final resp = await get(url);

    return resp.data as Map<String, dynamic>;
  }

  /// Fetch asset by ID.
  ///
  /// `/atomicassets/v1/assets/{ID}`
  Future<Map<String, dynamic>> getAssetId(String id) async {
    final url = Uri.https(endpoint, "$path/$id");
    final resp = await get(url);

    return resp.data as Map<String, dynamic>;
  }

  /// Fetch assets.
  ///
  /// `/atomicassets/v1/assets`
  Future<List<Map<String, dynamic>>> getAssets({
    String? collectionName,
    String? schemaName,
    int? templateId,
    bool? burned,
    String? owner,
    String? match,
    String? search,
    String? matchImmutableName,
    String? matchMutableName,
    bool? isTransferable,
    bool? isBurnable,
    String? collectionBlacklist,
    String? collectionWhitelist,
    bool? onlyDuplicateTemplates,
    bool? hasBackedTokens,
    String? authorizedAccount,
    String? templateWhitelist,
    String? templateBlacklist,
    String? hideTemplatesByAccounts,
    bool? hideOffers,
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
    if (templateId != null) {
      params["template_id"] = templateId.toString();
    }
    if (burned != null) {
      params["burned"] = burned.toString();
    }
    if (owner != null) {
      params["owner"] = owner;
    }
    if (match != null) {
      params["match"] = match;
    }
    if (search != null) {
      params["search"] = search;
    }
    if (matchImmutableName != null) {
      params["match_immutable_name"] = matchImmutableName;
    }
    if (matchMutableName != null) {
      params["match_mutable_name"] = matchMutableName;
    }
    if (isTransferable != null) {
      params["is_transferable"] = isTransferable.toString();
    }
    if (isBurnable != null) {
      params["is_burnable"] = isBurnable.toString();
    }
    if (collectionBlacklist != null) {
      params["collection_blacklist"] = collectionBlacklist;
    }
    if (collectionWhitelist != null) {
      params["collection_whitelist"] = collectionWhitelist;
    }
    if (onlyDuplicateTemplates != null) {
      params["only_duplicate_templates"] = onlyDuplicateTemplates.toString();
    }
    if (hasBackedTokens != null) {
      params["has_backed_tokens"] = hasBackedTokens.toString();
    }
    if (authorizedAccount != null) {
      params["authorized_account"] = authorizedAccount;
    }
    if (templateWhitelist != null) {
      params["template_whitelist"] = templateWhitelist;
    }
    if (templateBlacklist != null) {
      params["template_blacklist"] = templateBlacklist;
    }
    if (hideTemplatesByAccounts != null) {
      params["hide_templates_by_accounts"] = hideTemplatesByAccounts;
    }
    if (hideOffers != null) {
      params["hide_offers"] = hideOffers.toString();
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
