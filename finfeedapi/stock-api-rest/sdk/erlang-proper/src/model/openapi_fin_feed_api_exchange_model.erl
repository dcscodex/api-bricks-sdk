-module(openapi_fin_feed_api_exchange_model).

-include("openapi.hrl").

-export([openapi_fin_feed_api_exchange_model/0]).

-export([openapi_fin_feed_api_exchange_model/1]).

-export_type([openapi_fin_feed_api_exchange_model/0]).

-type openapi_fin_feed_api_exchange_model() ::
  [ {'exchange_id', binary() }
  | {'last_datapoint_date', binary() }
  | {'mic', binary() }
  | {'operating_mic', binary() }
  | {'oprt_sgmt', binary() }
  | {'market_name_institution_description', binary() }
  | {'legal_entity_name', binary() }
  | {'lei', binary() }
  | {'market_category_code', binary() }
  | {'acronym', binary() }
  | {'iso_country_code', binary() }
  | {'city', binary() }
  | {'website', binary() }
  | {'status', binary() }
  | {'creation_date', datetime() }
  | {'last_update_date', datetime() }
  | {'last_validation_date', datetime() }
  | {'expiry_date', datetime() }
  | {'comments', binary() }
  ].


openapi_fin_feed_api_exchange_model() ->
    openapi_fin_feed_api_exchange_model([]).

openapi_fin_feed_api_exchange_model(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'last_datapoint_date', binary() }
            , {'mic', binary() }
            , {'operating_mic', binary() }
            , {'oprt_sgmt', binary() }
            , {'market_name_institution_description', binary() }
            , {'legal_entity_name', binary() }
            , {'lei', binary() }
            , {'market_category_code', binary() }
            , {'acronym', binary() }
            , {'iso_country_code', binary() }
            , {'city', binary() }
            , {'website', binary() }
            , {'status', binary() }
            , {'creation_date', datetime() }
            , {'last_update_date', datetime() }
            , {'last_validation_date', datetime() }
            , {'expiry_date', datetime() }
            , {'comments', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

