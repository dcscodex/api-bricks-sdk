-module(openapi_v1_chain_network_address).

-include("openapi.hrl").

-export([openapi_v1_chain_network_address/0]).

-export([openapi_v1_chain_network_address/1]).

-export_type([openapi_v1_chain_network_address/0]).

-type openapi_v1_chain_network_address() ::
  [ {'chain_id', binary() }
  | {'network_id', binary() }
  | {'address', binary() }
  ].


openapi_v1_chain_network_address() ->
    openapi_v1_chain_network_address([]).

openapi_v1_chain_network_address(Fields) ->
  Default = [ {'chain_id', binary() }
            , {'network_id', binary() }
            , {'address', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

