-module(openapi_location_api).

-export([locations/1, locations/2]).

-define(BASE_URL, <<"">>).

%% @doc Get site locations
%% This endpoint providing information about the server site locations supported in the EMS API.
-spec locations(ctx:ctx()) -> {ok, [openapi_locations:openapi_locations()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
locations(Ctx) ->
    locations(Ctx, #{}).

-spec locations(ctx:ctx(), maps:map()) -> {ok, [openapi_locations:openapi_locations()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
locations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/v1/locations">>],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


