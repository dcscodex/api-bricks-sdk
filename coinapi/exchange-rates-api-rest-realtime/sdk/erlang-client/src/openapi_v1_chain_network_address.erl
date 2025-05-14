-module(openapi_v1_chain_network_address).

-export([encode/1]).

-export_type([openapi_v1_chain_network_address/0]).

-type openapi_v1_chain_network_address() ::
    #{ 'chain_id' => binary(),
       'network_id' => binary(),
       'address' => binary()
     }.

encode(#{ 'chain_id' := ChainId,
          'network_id' := NetworkId,
          'address' := Address
        }) ->
    #{ 'chain_id' => ChainId,
       'network_id' => NetworkId,
       'address' => Address
     }.
