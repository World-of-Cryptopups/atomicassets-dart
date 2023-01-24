import 'fetcher.dart';

class Offers extends Fetcher {
  final String endpoint;
  final String path;

  Offers({required this.endpoint, required this.path});

  /// Fetch offers
  ///
  /// `/atomicassets/v1/offers`
  Future<List<Map<String, dynamic>>> getOffers({
    String? account,
    String? sender,
    String? recipient,
    String? memo,
    String? matchMemo,
    String? state,
    bool? isRecipientContract,
    String? assetId,
    String? templateId,
    String? schemaName,
    String? collectionName,
    String? accountWhitelist,
    String? accountBlacklist,
    String? senderAssetWhitelist,
    String? senderAssetBlacklist,
    String? recipientAssetWhitelist,
    String? recipientAssetBlacklist,
    bool? hideContracts,
    bool? hideEmptyOffers,
    String? ids,
    String? lowerBound,
    String? upperBound,
    int? before,
    int? after,
    String? collectionBlacklist,
    String? collectionWhitelist,
    int? page,
    int? limit,
    String? order,
    String? sort,
  }) async {
    var params = <String, String>{};
    if (account != null) {
      params["account"] = account;
    }
    if (sender != null) {
      params["sender"] = sender;
    }
    if (recipient != null) {
      params["recipient"] = recipient;
    }
    if (memo != null) {
      params["memo"] = memo;
    }
    if (matchMemo != null) {
      params["match_memo"] = matchMemo;
    }
    if (state != null) {
      params["state"] = state;
    }
    if (isRecipientContract != null) {
      params["is_recipient_contract"] = isRecipientContract.toString();
    }
    if (assetId != null) {
      params["asset_id"] = assetId;
    }
    if (templateId != null) {
      params["template_id"] = templateId;
    }
    if (schemaName != null) {
      params["schema_name"] = schemaName;
    }
    if (collectionName != null) {
      params["collection_name"] = collectionName;
    }
    if (accountWhitelist != null) {
      params["account_whitelist"] = accountWhitelist;
    }
    if (accountBlacklist != null) {
      params["account_blacklist"] = accountBlacklist;
    }
    if (senderAssetWhitelist != null) {
      params["sender_asset_whitelist"] = senderAssetWhitelist;
    }
    if (senderAssetBlacklist != null) {
      params["sender_asset_blacklist"] = senderAssetBlacklist;
    }
    if (recipientAssetWhitelist != null) {
      params["recipient_asset_whitelist"] = recipientAssetWhitelist;
    }
    if (recipientAssetBlacklist != null) {
      params["recipient_asset_blacklist"] = recipientAssetBlacklist;
    }
    if (hideContracts != null) {
      params["hide_contracts"] = hideContracts.toString();
    }
    if (hideEmptyOffers != null) {
      params["hide_empty_offers"] = hideEmptyOffers.toString();
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
    if (collectionBlacklist != null) {
      params["collection_blacklist"] = collectionBlacklist;
    }
    if (collectionWhitelist != null) {
      params["collection_whitelist"] = collectionWhitelist;
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
