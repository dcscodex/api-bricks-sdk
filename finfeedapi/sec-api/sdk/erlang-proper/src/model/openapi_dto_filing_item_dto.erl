-module(openapi_dto_filing_item_dto).

-include("openapi.hrl").

-export([openapi_dto_filing_item_dto/0]).

-export([openapi_dto_filing_item_dto/1]).

-export_type([openapi_dto_filing_item_dto/0]).

-type openapi_dto_filing_item_dto() ::
  [ {'item_number', binary() }
  | {'item_title', binary() }
  | {'content', binary() }
  ].


openapi_dto_filing_item_dto() ->
    openapi_dto_filing_item_dto([]).

openapi_dto_filing_item_dto(Fields) ->
  Default = [ {'item_number', binary() }
            , {'item_title', binary() }
            , {'content', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

