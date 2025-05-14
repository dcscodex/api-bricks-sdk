-module(openapi_level3_order_book_model).

-include("openapi.hrl").

-export([openapi_level3_order_book_model/0]).

-export([openapi_level3_order_book_model/1]).

-export_type([openapi_level3_order_book_model/0]).

-type openapi_level3_order_book_model() ::
  [ {'add_order', openapi_level3_add_order_model:openapi_level3_add_order_model() }
  | {'delete_order', openapi_level3_delete_order_model:openapi_level3_delete_order_model() }
  | {'modify_order', openapi_level3_modify_order_model:openapi_level3_modify_order_model() }
  | {'executed_order', openapi_level3_executed_order_model:openapi_level3_executed_order_model() }
  | {'clear_book', openapi_level3_clear_book_model:openapi_level3_clear_book_model() }
  ].


openapi_level3_order_book_model() ->
    openapi_level3_order_book_model([]).

openapi_level3_order_book_model(Fields) ->
  Default = [ {'add_order', openapi_level3_add_order_model:openapi_level3_add_order_model() }
            , {'delete_order', openapi_level3_delete_order_model:openapi_level3_delete_order_model() }
            , {'modify_order', openapi_level3_modify_order_model:openapi_level3_modify_order_model() }
            , {'executed_order', openapi_level3_executed_order_model:openapi_level3_executed_order_model() }
            , {'clear_book', openapi_level3_clear_book_model:openapi_level3_clear_book_model() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

