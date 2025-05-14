-module(openapi_dto_filing_item_dto).

-export([encode/1]).

-export_type([openapi_dto_filing_item_dto/0]).

-type openapi_dto_filing_item_dto() ::
    #{ 'item_number' => binary(),
       'item_title' => binary(),
       'content' => binary()
     }.

encode(#{ 'item_number' := ItemNumber,
          'item_title' := ItemTitle,
          'content' := Content
        }) ->
    #{ 'item_number' => ItemNumber,
       'item_title' => ItemTitle,
       'content' => Content
     }.
