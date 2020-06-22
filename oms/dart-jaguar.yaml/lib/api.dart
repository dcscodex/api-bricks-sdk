library openapi.api;

import 'package:http/http.dart' as http;
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:openapi/auth/api_key_auth.dart';
import 'package:openapi/auth/basic_auth.dart';
import 'package:openapi/auth/oauth.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';

import 'package:openapi/api/balances_api.dart';
import 'package:openapi/api/orders_api.dart';
import 'package:openapi/api/positions_api.dart';

import 'package:openapi/model/balance.dart';
import 'package:openapi/model/balance_data.dart';
import 'package:openapi/model/cancel_all_order.dart';
import 'package:openapi/model/cancel_order.dart';
import 'package:openapi/model/create_order400.dart';
import 'package:openapi/model/messages.dart';
import 'package:openapi/model/messages_info.dart';
import 'package:openapi/model/messages_ok.dart';
import 'package:openapi/model/new_order.dart';
import 'package:openapi/model/order.dart';
import 'package:openapi/model/order_data.dart';
import 'package:openapi/model/order_live.dart';
import 'package:openapi/model/order_status.dart';
import 'package:openapi/model/position.dart';
import 'package:openapi/model/position_data.dart';
import 'package:openapi/model/time_in_force.dart';



final _jsonJaguarRepo = JsonRepo()
..add(BalanceSerializer())
..add(BalanceDataSerializer())
..add(CancelAllOrderSerializer())
..add(CancelOrderSerializer())
..add(CreateOrder400Serializer())
..add(MessagesSerializer())
..add(MessagesInfoSerializer())
..add(MessagesOkSerializer())
..add(NewOrderSerializer())
..add(OrderSerializer())
..add(OrderDataSerializer())
..add(OrderLiveSerializer())

..add(PositionSerializer())
..add(PositionDataSerializer())

;
final Map<String, CodecRepo> defaultConverters = {
    MimeTypes.json: _jsonJaguarRepo,
};



final _defaultInterceptors = [OAuthInterceptor(), BasicAuthInterceptor(), ApiKeyAuthInterceptor()];

class Openapi {
    List<Interceptor> interceptors;
    String basePath = "http://localhost:3001";
    Route _baseRoute;
    final Duration timeout;

    /**
    * Add custom global interceptors, put overrideInterceptors to true to set your interceptors only (auth interceptors will not be added)
    */
    Openapi({List<Interceptor> interceptors, bool overrideInterceptors = false, String baseUrl, this.timeout = const Duration(minutes: 2)}) {
        _baseRoute = Route(baseUrl ?? basePath).withClient(globalClient ?? http.Client());
        if(interceptors == null) {
            this.interceptors = _defaultInterceptors;
        }
        else if(overrideInterceptors){
            this.interceptors = interceptors;
        }
        else {
            this.interceptors = List.from(_defaultInterceptors)..addAll(interceptors);
        }

        this.interceptors.forEach((interceptor) {
            _baseRoute.before(interceptor.before);
            _baseRoute.after(interceptor.after);
        });
    }

    void setOAuthToken(String name, String token) {
        (_defaultInterceptors[0] as OAuthInterceptor).tokens[name] = token;
    }

    void setBasicAuth(String name, String username, String password) {
        (_defaultInterceptors[1] as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }

    void setApiKey(String name, String apiKey) {
        (_defaultInterceptors[2] as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }

    
    /**
    * Get BalancesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    BalancesApi getBalancesApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return BalancesApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get OrdersApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    OrdersApi getOrdersApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return OrdersApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get PositionsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    PositionsApi getPositionsApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return PositionsApi(base: base, converters: converters, timeout: timeout);
    }

    
}
