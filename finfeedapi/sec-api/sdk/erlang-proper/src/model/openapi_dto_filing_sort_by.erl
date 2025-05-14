-module(openapi_dto_filing_sort_by).

-include("openapi.hrl").

-export([openapi_dto_filing_sort_by/0]).

-export_type([openapi_dto_filing_sort_by/0]).

-type openapi_dto_filing_sort_by() ::
  binary().

openapi_dto_filing_sort_by() ->
  elements([<<"AccessionNumber">>, <<"FilingDate">>, <<"ReportDate">>, <<"AcceptanceDateTime">>, <<"Size">>]).

