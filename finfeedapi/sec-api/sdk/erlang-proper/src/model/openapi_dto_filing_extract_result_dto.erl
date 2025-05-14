-module(openapi_dto_filing_extract_result_dto).

-include("openapi.hrl").

-export([openapi_dto_filing_extract_result_dto/0]).

-export([openapi_dto_filing_extract_result_dto/1]).

-export_type([openapi_dto_filing_extract_result_dto/0]).

-type openapi_dto_filing_extract_result_dto() ::
  [ {'accession_number', binary() }
  | {'form_type', binary() }
  | {'items', list(openapi_d_to_filing_item_dto:openapi_d_to_filing_item_dto()) }
  ].


openapi_dto_filing_extract_result_dto() ->
    openapi_dto_filing_extract_result_dto([]).

openapi_dto_filing_extract_result_dto(Fields) ->
  Default = [ {'accession_number', binary() }
            , {'form_type', binary() }
            , {'items', list(openapi_d_to_filing_item_dto:openapi_d_to_filing_item_dto()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

