-module(openapi_dto_sec_filing_result_dto).

-include("openapi.hrl").

-export([openapi_dto_sec_filing_result_dto/0]).

-export([openapi_dto_sec_filing_result_dto/1]).

-export_type([openapi_dto_sec_filing_result_dto/0]).

-type openapi_dto_sec_filing_result_dto() ::
  [ {'accession_number', binary() }
  | {'form_type', binary() }
  | {'filing_date', date() }
  | {'company_name', binary() }
  | {'cik', integer() }
  | {'document_filename', binary() }
  | {'document_description', binary() }
  | {'source_file', binary() }
  ].


openapi_dto_sec_filing_result_dto() ->
    openapi_dto_sec_filing_result_dto([]).

openapi_dto_sec_filing_result_dto(Fields) ->
  Default = [ {'accession_number', binary() }
            , {'form_type', binary() }
            , {'filing_date', date() }
            , {'company_name', binary() }
            , {'cik', integer() }
            , {'document_filename', binary() }
            , {'document_description', binary() }
            , {'source_file', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

