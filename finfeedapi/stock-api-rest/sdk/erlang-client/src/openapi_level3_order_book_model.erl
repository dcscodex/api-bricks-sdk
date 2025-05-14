-module(openapi_level3_order_book_model).

-export([encode/1]).

-export_type([openapi_level3_order_book_model/0]).

-type openapi_level3_order_book_model() ::
    #{ 'add_order' => openapi_level3_add_order_model:openapi_level3_add_order_model(),
       'delete_order' => openapi_level3_delete_order_model:openapi_level3_delete_order_model(),
       'modify_order' => openapi_level3_modify_order_model:openapi_level3_modify_order_model(),
       'executed_order' => openapi_level3_executed_order_model:openapi_level3_executed_order_model(),
       'clear_book' => openapi_level3_clear_book_model:openapi_level3_clear_book_model()
     }.

encode(#{ 'add_order' := AddOrder,
          'delete_order' := DeleteOrder,
          'modify_order' := ModifyOrder,
          'executed_order' := ExecutedOrder,
          'clear_book' := ClearBook
        }) ->
    #{ 'add_order' => AddOrder,
       'delete_order' => DeleteOrder,
       'modify_order' => ModifyOrder,
       'executed_order' => ExecutedOrder,
       'clear_book' => ClearBook
     }.
