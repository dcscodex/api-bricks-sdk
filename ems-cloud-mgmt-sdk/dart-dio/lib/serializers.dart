//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:openapi/model/account_data.dart';
import 'package:openapi/model/account_endpoint.dart';
import 'package:openapi/model/account_info.dart';
import 'package:openapi/model/exchange_login_require.dart';
import 'package:openapi/model/get_account.dart';
import 'package:openapi/model/key_value.dart';
import 'package:openapi/model/locations.dart';
import 'package:openapi/model/update_account.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  AccountData,
  AccountEndpoint,
  AccountInfo,
  ExchangeLoginRequire,
  GetAccount,
  KeyValue,
  Locations,
  UpdateAccount,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(GetAccount)]),
        () => ListBuilder<GetAccount>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AccountEndpoint)]),
        () => ListBuilder<AccountEndpoint>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ExchangeLoginRequire)]),
        () => ListBuilder<ExchangeLoginRequire>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Locations)]),
        () => ListBuilder<Locations>(),
      )
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
