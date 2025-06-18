//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/exchange_rates_api.dart';
part 'api/metadata_api.dart';
part 'api/metrics_v1_api.dart';
part 'api/metrics_v2_api.dart';
part 'api/ohlcv_api.dart';
part 'api/options_api.dart';
part 'api/order_book_api.dart';
part 'api/order_book_l3_api.dart';
part 'api/quotes_api.dart';
part 'api/trades_api.dart';

part 'model/models_exchange_timeseries_item.dart';
part 'model/options_option_exchange_group.dart';
part 'model/options_strike.dart';
part 'model/v1_asset.dart';
part 'model/v1_chain.dart';
part 'model/v1_chain_network_address.dart';
part 'model/v1_exchange.dart';
part 'model/v1_exchange_rate.dart';
part 'model/v1_exchange_rates.dart';
part 'model/v1_exchange_rates_rate.dart';
part 'model/v1_exchange_rates_timeseries_item.dart';
part 'model/v1_general_data.dart';
part 'model/v1_icon.dart';
part 'model/v1_last_trade.dart';
part 'model/v1_listing_item.dart';
part 'model/v1_metric.dart';
part 'model/v1_metric_data.dart';
part 'model/v1_metric_info.dart';
part 'model/v1_order_book.dart';
part 'model/v1_order_book_base.dart';
part 'model/v1_order_book_depth.dart';
part 'model/v1_quote.dart';
part 'model/v1_quote_trade.dart';
part 'model/v1_symbol.dart';
part 'model/v1_symbol_mapping.dart';
part 'model/v1_timeseries_item.dart';
part 'model/v1_timeseries_period.dart';
part 'model/v1_trade.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
