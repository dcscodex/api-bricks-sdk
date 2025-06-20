note
 description:"[
		FinFeedAPI Stock REST API
 		No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
  		The version of the OpenAPI document: v1
 	    Contact: support@apibricks.io

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class ADMIN_SECURITY_DIRECTORY_MODEL




feature --Access

    symbol: detachable STRING_32
      -- The stock symbol
    timestamp_nanos: INTEGER_64
      -- Original timestamp in nanoseconds since epoch
    timestamp: detachable DATE_TIME
      -- Time when the security directory information was recorded as DateTime
    flags: INTEGER_32
      -- Flags for the security
    round_lot_size: INTEGER_32
      -- Number of shares that represent a round lot
    adjusted_poc_price: REAL_64
      -- Adjusted previous official closing price as decimal
    luld_tier: INTEGER_32
      -- LULD tier as byte value
    luld_tier_code: detachable STRING_32
      -- LULD tier as numeric string
    luld_tier_text: detachable STRING_32
      -- Human-readable description of the LULD tier
    is_luld_tier_not_applicable: BOOLEAN
      -- Indicates if LULD Tier is 'Not applicable' (0x0).
    is_luld_tier1: BOOLEAN
      -- Indicates if LULD Tier is 'Tier 1 NMS Stock' (0x1).
    is_luld_tier2: BOOLEAN
      -- Indicates if LULD Tier is 'Tier 2 NMS Stock' (0x2).

feature -- Change Element

    set_symbol (a_name: like symbol)
        -- Set 'symbol' with 'a_name'.
      do
        symbol := a_name
      ensure
        symbol_set: symbol = a_name
      end

    set_timestamp_nanos (a_name: like timestamp_nanos)
        -- Set 'timestamp_nanos' with 'a_name'.
      do
        timestamp_nanos := a_name
      ensure
        timestamp_nanos_set: timestamp_nanos = a_name
      end

    set_timestamp (a_name: like timestamp)
        -- Set 'timestamp' with 'a_name'.
      do
        timestamp := a_name
      ensure
        timestamp_set: timestamp = a_name
      end

    set_flags (a_name: like flags)
        -- Set 'flags' with 'a_name'.
      do
        flags := a_name
      ensure
        flags_set: flags = a_name
      end

    set_round_lot_size (a_name: like round_lot_size)
        -- Set 'round_lot_size' with 'a_name'.
      do
        round_lot_size := a_name
      ensure
        round_lot_size_set: round_lot_size = a_name
      end

    set_adjusted_poc_price (a_name: like adjusted_poc_price)
        -- Set 'adjusted_poc_price' with 'a_name'.
      do
        adjusted_poc_price := a_name
      ensure
        adjusted_poc_price_set: adjusted_poc_price = a_name
      end

    set_luld_tier (a_name: like luld_tier)
        -- Set 'luld_tier' with 'a_name'.
      do
        luld_tier := a_name
      ensure
        luld_tier_set: luld_tier = a_name
      end

    set_luld_tier_code (a_name: like luld_tier_code)
        -- Set 'luld_tier_code' with 'a_name'.
      do
        luld_tier_code := a_name
      ensure
        luld_tier_code_set: luld_tier_code = a_name
      end

    set_luld_tier_text (a_name: like luld_tier_text)
        -- Set 'luld_tier_text' with 'a_name'.
      do
        luld_tier_text := a_name
      ensure
        luld_tier_text_set: luld_tier_text = a_name
      end

    set_is_luld_tier_not_applicable (a_name: like is_luld_tier_not_applicable)
        -- Set 'is_luld_tier_not_applicable' with 'a_name'.
      do
        is_luld_tier_not_applicable := a_name
      ensure
        is_luld_tier_not_applicable_set: is_luld_tier_not_applicable = a_name
      end

    set_is_luld_tier1 (a_name: like is_luld_tier1)
        -- Set 'is_luld_tier1' with 'a_name'.
      do
        is_luld_tier1 := a_name
      ensure
        is_luld_tier1_set: is_luld_tier1 = a_name
      end

    set_is_luld_tier2 (a_name: like is_luld_tier2)
        -- Set 'is_luld_tier2' with 'a_name'.
      do
        is_luld_tier2 := a_name
      ensure
        is_luld_tier2_set: is_luld_tier2 = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass ADMIN_SECURITY_DIRECTORY_MODEL%N")
        if attached symbol as l_symbol then
          Result.append ("%Nsymbol:")
          Result.append (l_symbol.out)
          Result.append ("%N")
        end
        if attached timestamp_nanos as l_timestamp_nanos then
          Result.append ("%Ntimestamp_nanos:")
          Result.append (l_timestamp_nanos.out)
          Result.append ("%N")
        end
        if attached timestamp as l_timestamp then
          Result.append ("%Ntimestamp:")
          Result.append (l_timestamp.out)
          Result.append ("%N")
        end
        if attached flags as l_flags then
          Result.append ("%Nflags:")
          Result.append (l_flags.out)
          Result.append ("%N")
        end
        if attached round_lot_size as l_round_lot_size then
          Result.append ("%Nround_lot_size:")
          Result.append (l_round_lot_size.out)
          Result.append ("%N")
        end
        if attached adjusted_poc_price as l_adjusted_poc_price then
          Result.append ("%Nadjusted_poc_price:")
          Result.append (l_adjusted_poc_price.out)
          Result.append ("%N")
        end
        if attached luld_tier as l_luld_tier then
          Result.append ("%Nluld_tier:")
          Result.append (l_luld_tier.out)
          Result.append ("%N")
        end
        if attached luld_tier_code as l_luld_tier_code then
          Result.append ("%Nluld_tier_code:")
          Result.append (l_luld_tier_code.out)
          Result.append ("%N")
        end
        if attached luld_tier_text as l_luld_tier_text then
          Result.append ("%Nluld_tier_text:")
          Result.append (l_luld_tier_text.out)
          Result.append ("%N")
        end
        if attached is_luld_tier_not_applicable as l_is_luld_tier_not_applicable then
          Result.append ("%Nis_luld_tier_not_applicable:")
          Result.append (l_is_luld_tier_not_applicable.out)
          Result.append ("%N")
        end
        if attached is_luld_tier1 as l_is_luld_tier1 then
          Result.append ("%Nis_luld_tier1:")
          Result.append (l_is_luld_tier1.out)
          Result.append ("%N")
        end
        if attached is_luld_tier2 as l_is_luld_tier2 then
          Result.append ("%Nis_luld_tier2:")
          Result.append (l_is_luld_tier2.out)
          Result.append ("%N")
        end
      end
end

