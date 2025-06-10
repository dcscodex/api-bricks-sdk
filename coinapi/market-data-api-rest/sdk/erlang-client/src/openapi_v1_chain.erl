-module(openapi_v1_chain).

-export([encode/1]).

-export_type([openapi_v1_chain/0]).

-type openapi_v1_chain() ::
    #{ 'chain_id' => binary(),
       'name' => binary()
     }.

encode(#{ 'chain_id' := ChainId,
          'name' := Name
        }) ->
    #{ 'chain_id' => ChainId,
       'name' => Name
     }.
