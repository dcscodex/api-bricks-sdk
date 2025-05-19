-module(openapi_indexes_index_definition_input_data).

-include("openapi.hrl").

-export([openapi_indexes_index_definition_input_data/0]).

-export([openapi_indexes_index_definition_input_data/1]).

-export_type([openapi_indexes_index_definition_input_data/0]).

-type openapi_indexes_index_definition_input_data() ::
  [ {'exchangeId', binary() }
  | {'exchangeSymbolId', binary() }
  | {'baseAssetId', binary() }
  | {'quoteAssetId', binary() }
  | {'beginDate', datetime() }
  | {'endDate', datetime() }
  | {'status', binary() }
  | {'statusInfo', binary() }
  | {'lastModificationTime', datetime() }
  ].


openapi_indexes_index_definition_input_data() ->
    openapi_indexes_index_definition_input_data([]).

openapi_indexes_index_definition_input_data(Fields) ->
  Default = [ {'exchangeId', binary() }
            , {'exchangeSymbolId', binary() }
            , {'baseAssetId', binary() }
            , {'quoteAssetId', binary() }
            , {'beginDate', datetime() }
            , {'endDate', datetime() }
            , {'status', binary() }
            , {'statusInfo', binary() }
            , {'lastModificationTime', datetime() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

