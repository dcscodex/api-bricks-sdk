//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/admin_admin_message_model.dart';
import 'package:openapi/src/model/admin_auction_information_model.dart';
import 'package:openapi/src/model/admin_official_price_model.dart';
import 'package:openapi/src/model/admin_operational_halt_status_model.dart';
import 'package:openapi/src/model/admin_retail_liquidity_indicator_model.dart';
import 'package:openapi/src/model/admin_security_directory_model.dart';
import 'package:openapi/src/model/admin_security_event_model.dart';
import 'package:openapi/src/model/admin_short_sale_price_test_status_model.dart';
import 'package:openapi/src/model/admin_system_event_model.dart';
import 'package:openapi/src/model/admin_trading_status_model.dart';
import 'package:openapi/src/model/fin_feed_api_exchange_model.dart';
import 'package:openapi/src/model/fin_feed_api_symbol_model.dart';
import 'package:openapi/src/model/level1_quote_update_model.dart';
import 'package:openapi/src/model/level2_price_level_update_model.dart';
import 'package:openapi/src/model/level3_add_order_model.dart';
import 'package:openapi/src/model/level3_clear_book_model.dart';
import 'package:openapi/src/model/level3_delete_order_model.dart';
import 'package:openapi/src/model/level3_executed_order_model.dart';
import 'package:openapi/src/model/level3_modify_order_model.dart';
import 'package:openapi/src/model/level3_order_book_model.dart';
import 'package:openapi/src/model/ohlcv_exchange_timeseries_item.dart';
import 'package:openapi/src/model/ohlcv_timeseries_item.dart';
import 'package:openapi/src/model/ohlcv_timeseries_period.dart';
import 'package:openapi/src/model/trade_trade_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  AdminAdminMessageModel,
  AdminAuctionInformationModel,
  AdminOfficialPriceModel,
  AdminOperationalHaltStatusModel,
  AdminRetailLiquidityIndicatorModel,
  AdminSecurityDirectoryModel,
  AdminSecurityEventModel,
  AdminShortSalePriceTestStatusModel,
  AdminSystemEventModel,
  AdminTradingStatusModel,
  FinFeedAPIExchangeModel,
  FinFeedAPISymbolModel,
  Level1QuoteUpdateModel,
  Level2PriceLevelUpdateModel,
  Level3AddOrderModel,
  Level3ClearBookModel,
  Level3DeleteOrderModel,
  Level3ExecutedOrderModel,
  Level3ModifyOrderModel,
  Level3OrderBookModel,
  OHLCVExchangeTimeseriesItem,
  OHLCVTimeseriesItem,
  OHLCVTimeseriesPeriod,
  TradeTradeModel,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TradeTradeModel)]),
        () => ListBuilder<TradeTradeModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AdminAdminMessageModel)]),
        () => ListBuilder<AdminAdminMessageModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OHLCVExchangeTimeseriesItem)]),
        () => ListBuilder<OHLCVExchangeTimeseriesItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(FinFeedAPISymbolModel)]),
        () => ListBuilder<FinFeedAPISymbolModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AdminSystemEventModel)]),
        () => ListBuilder<AdminSystemEventModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Level1QuoteUpdateModel)]),
        () => ListBuilder<Level1QuoteUpdateModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Level3OrderBookModel)]),
        () => ListBuilder<Level3OrderBookModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OHLCVTimeseriesPeriod)]),
        () => ListBuilder<OHLCVTimeseriesPeriod>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(FinFeedAPIExchangeModel)]),
        () => ListBuilder<FinFeedAPIExchangeModel>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OHLCVTimeseriesItem)]),
        () => ListBuilder<OHLCVTimeseriesItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Level2PriceLevelUpdateModel)]),
        () => ListBuilder<Level2PriceLevelUpdateModel>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
