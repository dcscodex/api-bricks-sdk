-module(openapi_dto_filing_extract_result_dto).

-export([encode/1]).

-export_type([openapi_dto_filing_extract_result_dto/0]).

-type openapi_dto_filing_extract_result_dto() ::
    #{ 'accession_number' => binary(),
       'form_type' => binary(),
       'items' => list()
     }.

encode(#{ 'accession_number' := AccessionNumber,
          'form_type' := FormType,
          'items' := Items
        }) ->
    #{ 'accession_number' => AccessionNumber,
       'form_type' => FormType,
       'items' => Items
     }.
