-module(openapi_metadata_api).

-export([v1_assets_asset_id_get/2, v1_assets_asset_id_get/3,
         v1_assets_get/1, v1_assets_get/2,
         v1_assets_icons_size_get/2, v1_assets_icons_size_get/3]).

-define(BASE_URL, <<"">>).

%% @doc List all assets by asset ID
%% 
-spec v1_assets_asset_id_get(ctx:ctx(), binary()) -> {ok, [openapi_v1_asset:openapi_v1_asset()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_assets_asset_id_get(Ctx, AssetId) ->
    v1_assets_asset_id_get(Ctx, AssetId, #{}).

-spec v1_assets_asset_id_get(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_v1_asset:openapi_v1_asset()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_assets_asset_id_get(Ctx, AssetId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/assets/", AssetId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all assets
%% Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::
-spec v1_assets_get(ctx:ctx()) -> {ok, [openapi_v1_asset:openapi_v1_asset()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_assets_get(Ctx) ->
    v1_assets_get(Ctx, #{}).

-spec v1_assets_get(ctx:ctx(), maps:map()) -> {ok, [openapi_v1_asset:openapi_v1_asset()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_assets_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/assets"],
    QS = lists:flatten([])++openapi_utils:optional_params(['filter_asset_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all asset icons
%% Gets the list of icons (of the given size) for all the assets.
-spec v1_assets_icons_size_get(ctx:ctx(), integer()) -> {ok, [openapi_v1_icon:openapi_v1_icon()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_assets_icons_size_get(Ctx, Size) ->
    v1_assets_icons_size_get(Ctx, Size, #{}).

-spec v1_assets_icons_size_get(ctx:ctx(), integer(), maps:map()) -> {ok, [openapi_v1_icon:openapi_v1_icon()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_assets_icons_size_get(Ctx, Size, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/v1/assets/icons/", Size, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


