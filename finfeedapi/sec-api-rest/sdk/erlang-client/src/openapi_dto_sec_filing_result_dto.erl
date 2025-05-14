-module(openapi_dto_sec_filing_result_dto).

-export([encode/1]).

-export_type([openapi_dto_sec_filing_result_dto/0]).

-type openapi_dto_sec_filing_result_dto() ::
    #{ 'accession_number' => binary(),
       'form_type' => binary(),
       'filing_date' => calendar:date(),
       'company_name' => binary(),
       'cik' => integer(),
       'document_filename' => binary(),
       'document_description' => binary(),
       'source_file' => binary()
     }.

encode(#{ 'accession_number' := AccessionNumber,
          'form_type' := FormType,
          'filing_date' := FilingDate,
          'company_name' := CompanyName,
          'cik' := Cik,
          'document_filename' := DocumentFilename,
          'document_description' := DocumentDescription,
          'source_file' := SourceFile
        }) ->
    #{ 'accession_number' => AccessionNumber,
       'form_type' => FormType,
       'filing_date' => FilingDate,
       'company_name' => CompanyName,
       'cik' => Cik,
       'document_filename' => DocumentFilename,
       'document_description' => DocumentDescription,
       'source_file' => SourceFile
     }.
