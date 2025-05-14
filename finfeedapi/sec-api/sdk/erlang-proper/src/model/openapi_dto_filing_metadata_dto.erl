-module(openapi_dto_filing_metadata_dto).

-include("openapi.hrl").

-export([openapi_dto_filing_metadata_dto/0]).

-export([openapi_dto_filing_metadata_dto/1]).

-export_type([openapi_dto_filing_metadata_dto/0]).

-type openapi_dto_filing_metadata_dto() ::
  [ {'cik', integer() }
  | {'accession_number', binary() }
  | {'filing_date', date() }
  | {'report_date', date() }
  | {'acceptance_date_time', datetime() }
  | {'act', binary() }
  | {'form', binary() }
  | {'file_number', binary() }
  | {'film_number', binary() }
  | {'items', binary() }
  | {'core_type', binary() }
  | {'size', integer() }
  | {'is_xbrl', boolean() }
  | {'is_inline_xbrl', boolean() }
  | {'primary_document', binary() }
  | {'primary_doc_description', binary() }
  | {'source_file', binary() }
  ].


openapi_dto_filing_metadata_dto() ->
    openapi_dto_filing_metadata_dto([]).

openapi_dto_filing_metadata_dto(Fields) ->
  Default = [ {'cik', integer() }
            , {'accession_number', binary() }
            , {'filing_date', date() }
            , {'report_date', date() }
            , {'acceptance_date_time', datetime() }
            , {'act', binary() }
            , {'form', binary() }
            , {'file_number', binary() }
            , {'film_number', binary() }
            , {'items', binary() }
            , {'core_type', binary() }
            , {'size', integer() }
            , {'is_xbrl', boolean() }
            , {'is_inline_xbrl', boolean() }
            , {'primary_document', binary() }
            , {'primary_doc_description', binary() }
            , {'source_file', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

