//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MetadataApi {
  MetadataApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List all assets by asset ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  ///   The asset ID.
  Future<Response> v1AssetsAssetIdGetWithHttpInfo(String assetId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/assets/{asset_id}'
      .replaceAll('{asset_id}', assetId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List all assets by asset ID
  ///
  /// Parameters:
  ///
  /// * [String] assetId (required):
  ///   The asset ID.
  Future<List<V1Asset>?> v1AssetsAssetIdGet(String assetId,) async {
    final response = await v1AssetsAssetIdGetWithHttpInfo(assetId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Asset>') as List)
        .cast<V1Asset>()
        .toList(growable: false);

    }
    return null;
  }

  /// List all assets
  ///
  /// Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterAssetId:
  ///   Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
  Future<Response> v1AssetsGetWithHttpInfo({ String? filterAssetId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/assets';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterAssetId != null) {
      queryParams.addAll(_queryParams('', 'filter_asset_id', filterAssetId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List all assets
  ///
  /// Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::
  ///
  /// Parameters:
  ///
  /// * [String] filterAssetId:
  ///   Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
  Future<List<V1Asset>?> v1AssetsGet({ String? filterAssetId, }) async {
    final response = await v1AssetsGetWithHttpInfo( filterAssetId: filterAssetId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Asset>') as List)
        .cast<V1Asset>()
        .toList(growable: false);

    }
    return null;
  }

  /// List all asset icons
  ///
  /// Gets the list of icons (of the given size) for all the assets.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] size (required):
  ///   The size of the icons.
  Future<Response> v1AssetsIconsSizeGetWithHttpInfo(int size,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/assets/icons/{size}'
      .replaceAll('{size}', size.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List all asset icons
  ///
  /// Gets the list of icons (of the given size) for all the assets.
  ///
  /// Parameters:
  ///
  /// * [int] size (required):
  ///   The size of the icons.
  Future<List<V1Icon>?> v1AssetsIconsSizeGet(int size,) async {
    final response = await v1AssetsIconsSizeGetWithHttpInfo(size,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Icon>') as List)
        .cast<V1Icon>()
        .toList(growable: false);

    }
    return null;
  }

  /// List all exchanges by exchange_id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   The ID of the exchange.
  Future<Response> v1ExchangesExchangeIdGetWithHttpInfo(String exchangeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/exchanges/{exchange_id}'
      .replaceAll('{exchange_id}', exchangeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List all exchanges by exchange_id
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   The ID of the exchange.
  Future<List<V1Exchange>?> v1ExchangesExchangeIdGet(String exchangeId,) async {
    final response = await v1ExchangesExchangeIdGetWithHttpInfo(exchangeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Exchange>') as List)
        .cast<V1Exchange>()
        .toList(growable: false);

    }
    return null;
  }

  /// List all exchanges
  ///
  /// Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterExchangeId:
  ///   Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
  Future<Response> v1ExchangesGetWithHttpInfo({ String? filterExchangeId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/exchanges';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterExchangeId != null) {
      queryParams.addAll(_queryParams('', 'filter_exchange_id', filterExchangeId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List all exchanges
  ///
  /// Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::
  ///
  /// Parameters:
  ///
  /// * [String] filterExchangeId:
  ///   Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
  Future<List<V1Exchange>?> v1ExchangesGet({ String? filterExchangeId, }) async {
    final response = await v1ExchangesGetWithHttpInfo( filterExchangeId: filterExchangeId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Exchange>') as List)
        .cast<V1Exchange>()
        .toList(growable: false);

    }
    return null;
  }

  /// List of icons for the exchanges
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] size (required):
  ///   The size of the icons.
  Future<Response> v1ExchangesIconsSizeGetWithHttpInfo(int size,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/exchanges/icons/{size}'
      .replaceAll('{size}', size.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List of icons for the exchanges
  ///
  /// Parameters:
  ///
  /// * [int] size (required):
  ///   The size of the icons.
  Future<List<V1Icon>?> v1ExchangesIconsSizeGet(int size,) async {
    final response = await v1ExchangesIconsSizeGetWithHttpInfo(size,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Icon>') as List)
        .cast<V1Icon>()
        .toList(growable: false);

    }
    return null;
  }

  /// List of symbols for the exchange
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   The ID of the exchange (from the Metadata -> Exchanges)
  ///
  /// * [String] filterSymbolId:
  ///   The filter for symbol ID.
  ///
  /// * [String] filterAssetId:
  ///   The filter for asset ID.
  Future<Response> v1SymbolsExchangeIdGetWithHttpInfo(String exchangeId, { String? filterSymbolId, String? filterAssetId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/symbols/{exchange_id}'
      .replaceAll('{exchange_id}', exchangeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterSymbolId != null) {
      queryParams.addAll(_queryParams('', 'filter_symbol_id', filterSymbolId));
    }
    if (filterAssetId != null) {
      queryParams.addAll(_queryParams('', 'filter_asset_id', filterAssetId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List of symbols for the exchange
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   The ID of the exchange (from the Metadata -> Exchanges)
  ///
  /// * [String] filterSymbolId:
  ///   The filter for symbol ID.
  ///
  /// * [String] filterAssetId:
  ///   The filter for asset ID.
  Future<List<V1Symbol>?> v1SymbolsExchangeIdGet(String exchangeId, { String? filterSymbolId, String? filterAssetId, }) async {
    final response = await v1SymbolsExchangeIdGetWithHttpInfo(exchangeId,  filterSymbolId: filterSymbolId, filterAssetId: filterAssetId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Symbol>') as List)
        .cast<V1Symbol>()
        .toList(growable: false);

    }
    return null;
  }

  /// List all symbols
  ///
  /// Retrieves all symbols with optional filtering.                :::info  \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges.  :::                :::info  You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.  :::                ### Symbol identifier                Our symbol identifier is created using a pattern that depends on symbol type.                Type | `symbol_id` pattern  --------- | ---------  SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}`  FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}`  OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}`  PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}`  INDEX | `{exchange_id}_IDX_{index_id}`  CREDIT | `{exchange_id}_CRE_{asset_id_base}`  CONTACT  | `{exchange_id}_COT_{contract_id}`                :::info  In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them.  :::info                ### Symbol types list (enumeration of `symbol_type` output variable)                Type | Name | Description  -------- | - | -----------  SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)*  FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time  OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date  PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time  INDEX | Index | Statistical composite that measures changes in the economy or markets.  CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate.  CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*                ### Additional output variables for `symbol_type = INDEX`                Variable | Description  --------- | -----------  index_id | Index identifier  index_display_name | Human readable name of the index *(optional)*  index_display_description | Description of the index *(optional)*                ### Additional output variables for `symbol_type = FUTURES`                Variable | Description  --------- | -----------  future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601  future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*  future_contract_unit_asset | Identifier of the asset used to denominate the contract unit                ### Additional output variables for `symbol_type = PERPETUAL`                Variable | Description  --------- | -----------  future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*  future_contract_unit_asset | Identifier of the asset used to denominate the contract unit                ### Additional output variables for `symbol_type = OPTION`                Variable | Description  --------- | -----------  option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options  option_strike_price | Price at which option contract can be exercised  option_contract_unit | Base asset amount of underlying spot which single option represents  option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN`  option_expiration_time | Option contract expiration time in ISO 8601                ### Additional output variables for `symbol_type = CONTRACT`                Variable | Description  --------- | -----------  contract_delivery_time | Predetermined time of contract delivery date in ISO 8601  contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)*  contract_unit_asset | Identifier of the asset used to denominate the contract unit  contract_id | Identifier of contract by the exchange
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterSymbolId:
  ///   Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`)
  ///
  /// * [String] filterExchangeId:
  ///   The filter for exchange ID.
  ///
  /// * [String] filterAssetId:
  ///   The filter for asset ID.
  Future<Response> v1SymbolsGetWithHttpInfo({ String? filterSymbolId, String? filterExchangeId, String? filterAssetId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/symbols';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterSymbolId != null) {
      queryParams.addAll(_queryParams('', 'filter_symbol_id', filterSymbolId));
    }
    if (filterExchangeId != null) {
      queryParams.addAll(_queryParams('', 'filter_exchange_id', filterExchangeId));
    }
    if (filterAssetId != null) {
      queryParams.addAll(_queryParams('', 'filter_asset_id', filterAssetId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List all symbols
  ///
  /// Retrieves all symbols with optional filtering.                :::info  \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges.  :::                :::info  You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.  :::                ### Symbol identifier                Our symbol identifier is created using a pattern that depends on symbol type.                Type | `symbol_id` pattern  --------- | ---------  SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}`  FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}`  OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}`  PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}`  INDEX | `{exchange_id}_IDX_{index_id}`  CREDIT | `{exchange_id}_CRE_{asset_id_base}`  CONTACT  | `{exchange_id}_COT_{contract_id}`                :::info  In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them.  :::info                ### Symbol types list (enumeration of `symbol_type` output variable)                Type | Name | Description  -------- | - | -----------  SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)*  FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time  OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date  PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time  INDEX | Index | Statistical composite that measures changes in the economy or markets.  CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate.  CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*                ### Additional output variables for `symbol_type = INDEX`                Variable | Description  --------- | -----------  index_id | Index identifier  index_display_name | Human readable name of the index *(optional)*  index_display_description | Description of the index *(optional)*                ### Additional output variables for `symbol_type = FUTURES`                Variable | Description  --------- | -----------  future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601  future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*  future_contract_unit_asset | Identifier of the asset used to denominate the contract unit                ### Additional output variables for `symbol_type = PERPETUAL`                Variable | Description  --------- | -----------  future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*  future_contract_unit_asset | Identifier of the asset used to denominate the contract unit                ### Additional output variables for `symbol_type = OPTION`                Variable | Description  --------- | -----------  option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options  option_strike_price | Price at which option contract can be exercised  option_contract_unit | Base asset amount of underlying spot which single option represents  option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN`  option_expiration_time | Option contract expiration time in ISO 8601                ### Additional output variables for `symbol_type = CONTRACT`                Variable | Description  --------- | -----------  contract_delivery_time | Predetermined time of contract delivery date in ISO 8601  contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)*  contract_unit_asset | Identifier of the asset used to denominate the contract unit  contract_id | Identifier of contract by the exchange
  ///
  /// Parameters:
  ///
  /// * [String] filterSymbolId:
  ///   Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`)
  ///
  /// * [String] filterExchangeId:
  ///   The filter for exchange ID.
  ///
  /// * [String] filterAssetId:
  ///   The filter for asset ID.
  Future<List<V1Symbol>?> v1SymbolsGet({ String? filterSymbolId, String? filterExchangeId, String? filterAssetId, }) async {
    final response = await v1SymbolsGetWithHttpInfo( filterSymbolId: filterSymbolId, filterExchangeId: filterExchangeId, filterAssetId: filterAssetId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1Symbol>') as List)
        .cast<V1Symbol>()
        .toList(growable: false);

    }
    return null;
  }

  /// List symbol mapping for the exchange
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   The ID of the exchange (from the Metadata -> Exchanges)
  Future<Response> v1SymbolsMapExchangeIdGetWithHttpInfo(String exchangeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/symbols/map/{exchange_id}'
      .replaceAll('{exchange_id}', exchangeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List symbol mapping for the exchange
  ///
  /// Parameters:
  ///
  /// * [String] exchangeId (required):
  ///   The ID of the exchange (from the Metadata -> Exchanges)
  Future<List<V1SymbolMapping>?> v1SymbolsMapExchangeIdGet(String exchangeId,) async {
    final response = await v1SymbolsMapExchangeIdGetWithHttpInfo(exchangeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<V1SymbolMapping>') as List)
        .cast<V1SymbolMapping>()
        .toList(growable: false);

    }
    return null;
  }
}
