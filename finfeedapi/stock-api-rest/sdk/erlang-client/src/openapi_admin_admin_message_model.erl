-module(openapi_admin_admin_message_model).

-export([encode/1]).

-export_type([openapi_admin_admin_message_model/0]).

-type openapi_admin_admin_message_model() ::
    #{ 'trading_status' => openapi_admin_trading_status_model:openapi_admin_trading_status_model(),
       'official_price' => openapi_admin_official_price_model:openapi_admin_official_price_model(),
       'security_event' => openapi_admin_security_event_model:openapi_admin_security_event_model(),
       'auction_information' => openapi_admin_auction_information_model:openapi_admin_auction_information_model(),
       'short_sale_price_test' => openapi_admin_short_sale_price_test_status_model:openapi_admin_short_sale_price_test_status_model(),
       'operational_halt_status' => openapi_admin_operational_halt_status_model:openapi_admin_operational_halt_status_model(),
       'retail_liquidity_indicator' => openapi_admin_retail_liquidity_indicator_model:openapi_admin_retail_liquidity_indicator_model(),
       'system_event' => openapi_admin_system_event_model:openapi_admin_system_event_model(),
       'security_directory' => openapi_admin_security_directory_model:openapi_admin_security_directory_model()
     }.

encode(#{ 'trading_status' := TradingStatus,
          'official_price' := OfficialPrice,
          'security_event' := SecurityEvent,
          'auction_information' := AuctionInformation,
          'short_sale_price_test' := ShortSalePriceTest,
          'operational_halt_status' := OperationalHaltStatus,
          'retail_liquidity_indicator' := RetailLiquidityIndicator,
          'system_event' := SystemEvent,
          'security_directory' := SecurityDirectory
        }) ->
    #{ 'trading_status' => TradingStatus,
       'official_price' => OfficialPrice,
       'security_event' => SecurityEvent,
       'auction_information' => AuctionInformation,
       'short_sale_price_test' => ShortSalePriceTest,
       'operational_halt_status' => OperationalHaltStatus,
       'retail_liquidity_indicator' => RetailLiquidityIndicator,
       'system_event' => SystemEvent,
       'security_directory' => SecurityDirectory
     }.
