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
class ADMIN_OPERATIONAL_HALT_STATUS_MODEL




feature --Access

    symbol: detachable STRING_32
      -- The stock symbol
    timestamp_nanos: INTEGER_64
      -- Original timestamp in nanoseconds since epoch
    timestamp: detachable DATE_TIME
      -- Time when the operational halt status was recorded as DateTime
    operational_halt_status: INTEGER_32
      -- Operational halt status as byte value
    operational_halt_status_code: detachable STRING_32
      -- Operational halt status as character string
    operational_halt_status_text: detachable STRING_32
      -- Human-readable description of the operational halt status
    is_operationally_halted: BOOLEAN
      -- Indicates if the status is 'IEX specific operational trading halt' ('O'/0x4f).
    is_not_operationally_halted: BOOLEAN
      -- Indicates if the status is 'Not operationally halted on IEX' ('N'/0x4e).

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

    set_operational_halt_status (a_name: like operational_halt_status)
        -- Set 'operational_halt_status' with 'a_name'.
      do
        operational_halt_status := a_name
      ensure
        operational_halt_status_set: operational_halt_status = a_name
      end

    set_operational_halt_status_code (a_name: like operational_halt_status_code)
        -- Set 'operational_halt_status_code' with 'a_name'.
      do
        operational_halt_status_code := a_name
      ensure
        operational_halt_status_code_set: operational_halt_status_code = a_name
      end

    set_operational_halt_status_text (a_name: like operational_halt_status_text)
        -- Set 'operational_halt_status_text' with 'a_name'.
      do
        operational_halt_status_text := a_name
      ensure
        operational_halt_status_text_set: operational_halt_status_text = a_name
      end

    set_is_operationally_halted (a_name: like is_operationally_halted)
        -- Set 'is_operationally_halted' with 'a_name'.
      do
        is_operationally_halted := a_name
      ensure
        is_operationally_halted_set: is_operationally_halted = a_name
      end

    set_is_not_operationally_halted (a_name: like is_not_operationally_halted)
        -- Set 'is_not_operationally_halted' with 'a_name'.
      do
        is_not_operationally_halted := a_name
      ensure
        is_not_operationally_halted_set: is_not_operationally_halted = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass ADMIN_OPERATIONAL_HALT_STATUS_MODEL%N")
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
        if attached operational_halt_status as l_operational_halt_status then
          Result.append ("%Noperational_halt_status:")
          Result.append (l_operational_halt_status.out)
          Result.append ("%N")
        end
        if attached operational_halt_status_code as l_operational_halt_status_code then
          Result.append ("%Noperational_halt_status_code:")
          Result.append (l_operational_halt_status_code.out)
          Result.append ("%N")
        end
        if attached operational_halt_status_text as l_operational_halt_status_text then
          Result.append ("%Noperational_halt_status_text:")
          Result.append (l_operational_halt_status_text.out)
          Result.append ("%N")
        end
        if attached is_operationally_halted as l_is_operationally_halted then
          Result.append ("%Nis_operationally_halted:")
          Result.append (l_is_operationally_halted.out)
          Result.append ("%N")
        end
        if attached is_not_operationally_halted as l_is_not_operationally_halted then
          Result.append ("%Nis_not_operationally_halted:")
          Result.append (l_is_not_operationally_halted.out)
          Result.append ("%N")
        end
      end
end

