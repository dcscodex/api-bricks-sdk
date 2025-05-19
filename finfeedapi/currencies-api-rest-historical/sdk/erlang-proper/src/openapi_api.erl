-module(openapi_api).

-export([ v1_assets_asset_id_get/1
        , v1_assets_get/0
        , v1_assets_icons_size_get/1
        ]).

-define(BASE_URL, "").

%% @doc List all assets by asset ID
%% 
-spec v1_assets_asset_id_get(binary()) ->
  openapi_utils:response().
v1_assets_asset_id_get(AssetId) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v1/assets/", AssetId, ""],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc List all assets
%% Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::
-spec v1_assets_get() ->
  openapi_utils:response().
v1_assets_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v1/assets"],
  QueryString = [<<"filter_asset_id=">>, FilterAssetId, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc List all asset icons
%% Gets the list of icons (of the given size) for all the assets.
-spec v1_assets_icons_size_get(integer()) ->
  openapi_utils:response().
v1_assets_icons_size_get(Size) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v1/assets/icons/", Size, ""],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

