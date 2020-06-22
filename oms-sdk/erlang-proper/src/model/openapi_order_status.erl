-module(openapi_order_status).

-include("openapi.hrl").

-export([openapi_order_status/0]).

-export_type([openapi_order_status/0]).

-type openapi_order_status() ::
  binary().

openapi_order_status() ->
  elements([<<"RECEIVED">>, <<"ROUTING">>, <<"ROUTED">>, <<"NEW">>, <<"PENDING_CANCEL">>, <<"PARTIALLY_FILLED">>, <<"FILLED">>, <<"CANCELED">>, <<"REJECTED">>]).

