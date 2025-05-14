-module(openapi_admin_auction_information_model).

-include("openapi.hrl").

-export([openapi_admin_auction_information_model/0]).

-export([openapi_admin_auction_information_model/1]).

-export_type([openapi_admin_auction_information_model/0]).

-type openapi_admin_auction_information_model() ::
  [ {'symbol', binary() }
  | {'timestamp_nanos', integer() }
  | {'timestamp', datetime() }
  | {'auction_type', integer() }
  | {'auction_type_code', binary() }
  | {'auction_type_text', binary() }
  | {'is_auction_type_opening', boolean() }
  | {'is_auction_type_closing', boolean() }
  | {'is_auction_type_ipo', boolean() }
  | {'is_auction_type_halt', boolean() }
  | {'is_auction_type_volatility', boolean() }
  | {'paired_shares', integer() }
  | {'reference_price', float() }
  | {'indicative_clearing_price', float() }
  | {'imbalance_shares', integer() }
  | {'imbalance_side', integer() }
  | {'imbalance_side_code', binary() }
  | {'imbalance_side_text', binary() }
  | {'is_imbalance_side_buy', boolean() }
  | {'is_imbalance_side_sell', boolean() }
  | {'is_imbalance_side_none', boolean() }
  | {'extension_number', integer() }
  | {'scheduled_auction_time_seconds', integer() }
  | {'scheduled_auction_time', datetime() }
  | {'auction_book_clearing_price', float() }
  | {'collar_reference_price', float() }
  | {'lower_auction_collar', float() }
  | {'upper_auction_collar', float() }
  ].


openapi_admin_auction_information_model() ->
    openapi_admin_auction_information_model([]).

openapi_admin_auction_information_model(Fields) ->
  Default = [ {'symbol', binary() }
            , {'timestamp_nanos', integer() }
            , {'timestamp', datetime() }
            , {'auction_type', integer() }
            , {'auction_type_code', binary() }
            , {'auction_type_text', binary() }
            , {'is_auction_type_opening', boolean() }
            , {'is_auction_type_closing', boolean() }
            , {'is_auction_type_ipo', boolean() }
            , {'is_auction_type_halt', boolean() }
            , {'is_auction_type_volatility', boolean() }
            , {'paired_shares', integer() }
            , {'reference_price', float() }
            , {'indicative_clearing_price', float() }
            , {'imbalance_shares', integer() }
            , {'imbalance_side', integer() }
            , {'imbalance_side_code', binary() }
            , {'imbalance_side_text', binary() }
            , {'is_imbalance_side_buy', boolean() }
            , {'is_imbalance_side_sell', boolean() }
            , {'is_imbalance_side_none', boolean() }
            , {'extension_number', integer() }
            , {'scheduled_auction_time_seconds', integer() }
            , {'scheduled_auction_time', datetime() }
            , {'auction_book_clearing_price', float() }
            , {'collar_reference_price', float() }
            , {'lower_auction_collar', float() }
            , {'upper_auction_collar', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

