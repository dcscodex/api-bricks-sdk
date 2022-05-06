-module(openapi_locations).

-export([encode/1]).

-export_type([openapi_locations/0]).

-type openapi_locations() ::
    #{ 'location_id' => binary(),
       'region_name' => binary(),
       'provider_name' => binary()
     }.

encode(#{ 'location_id' := LocationId,
          'region_name' := RegionName,
          'provider_name' := ProviderName
        }) ->
    #{ 'location_id' => LocationId,
       'region_name' => RegionName,
       'provider_name' => ProviderName
     }.
