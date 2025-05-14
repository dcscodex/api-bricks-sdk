-module(openapi_admin_security_directory_model).

-export([encode/1]).

-export_type([openapi_admin_security_directory_model/0]).

-type openapi_admin_security_directory_model() ::
    #{ 'symbol' => binary(),
       'timestamp_nanos' => integer(),
       'timestamp' => openapi_date_time:openapi_date_time(),
       'flags' => integer(),
       'round_lot_size' => integer(),
       'adjusted_poc_price' => float(),
       'luld_tier' => integer(),
       'luld_tier_code' => binary(),
       'luld_tier_text' => binary(),
       'is_luld_tier_not_applicable' => boolean(),
       'is_luld_tier1' => boolean(),
       'is_luld_tier2' => boolean()
     }.

encode(#{ 'symbol' := Symbol,
          'timestamp_nanos' := TimestampNanos,
          'timestamp' := Timestamp,
          'flags' := Flags,
          'round_lot_size' := RoundLotSize,
          'adjusted_poc_price' := AdjustedPocPrice,
          'luld_tier' := LuldTier,
          'luld_tier_code' := LuldTierCode,
          'luld_tier_text' := LuldTierText,
          'is_luld_tier_not_applicable' := IsLuldTierNotApplicable,
          'is_luld_tier1' := IsLuldTier1,
          'is_luld_tier2' := IsLuldTier2
        }) ->
    #{ 'symbol' => Symbol,
       'timestamp_nanos' => TimestampNanos,
       'timestamp' => Timestamp,
       'flags' => Flags,
       'round_lot_size' => RoundLotSize,
       'adjusted_poc_price' => AdjustedPocPrice,
       'luld_tier' => LuldTier,
       'luld_tier_code' => LuldTierCode,
       'luld_tier_text' => LuldTierText,
       'is_luld_tier_not_applicable' => IsLuldTierNotApplicable,
       'is_luld_tier1' => IsLuldTier1,
       'is_luld_tier2' => IsLuldTier2
     }.
