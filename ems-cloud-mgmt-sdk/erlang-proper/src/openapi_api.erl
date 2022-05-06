-module(openapi_api).

-export([ locations/0
        ]).

-define(BASE_URL, "").

%% @doc Get site locations
%% This endpoint providing information about the server site locations supported in the EMS API.
-spec locations() ->
  openapi_utils:response().
locations() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/v1/locations"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

