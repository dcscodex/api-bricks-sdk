-module(openapi_dto_filing_metadata_dto).

-export([encode/1]).

-export_type([openapi_dto_filing_metadata_dto/0]).

-type openapi_dto_filing_metadata_dto() ::
    #{ 'cik' => integer(),
       'accession_number' => binary(),
       'filing_date' => calendar:date(),
       'report_date' => calendar:date(),
       'acceptance_date_time' => openapi_date_time:openapi_date_time(),
       'act' => binary(),
       'form' => binary(),
       'file_number' => binary(),
       'film_number' => binary(),
       'items' => binary(),
       'core_type' => binary(),
       'size' => integer(),
       'is_xbrl' => boolean(),
       'is_inline_xbrl' => boolean(),
       'primary_document' => binary(),
       'primary_doc_description' => binary(),
       'source_file' => binary()
     }.

encode(#{ 'cik' := Cik,
          'accession_number' := AccessionNumber,
          'filing_date' := FilingDate,
          'report_date' := ReportDate,
          'acceptance_date_time' := AcceptanceDateTime,
          'act' := Act,
          'form' := Form,
          'file_number' := FileNumber,
          'film_number' := FilmNumber,
          'items' := Items,
          'core_type' := CoreType,
          'size' := Size,
          'is_xbrl' := IsXbrl,
          'is_inline_xbrl' := IsInlineXbrl,
          'primary_document' := PrimaryDocument,
          'primary_doc_description' := PrimaryDocDescription,
          'source_file' := SourceFile
        }) ->
    #{ 'cik' => Cik,
       'accession_number' => AccessionNumber,
       'filing_date' => FilingDate,
       'report_date' => ReportDate,
       'acceptance_date_time' => AcceptanceDateTime,
       'act' => Act,
       'form' => Form,
       'file_number' => FileNumber,
       'film_number' => FilmNumber,
       'items' => Items,
       'core_type' => CoreType,
       'size' => Size,
       'is_xbrl' => IsXbrl,
       'is_inline_xbrl' => IsInlineXbrl,
       'primary_document' => PrimaryDocument,
       'primary_doc_description' => PrimaryDocDescription,
       'source_file' => SourceFile
     }.
