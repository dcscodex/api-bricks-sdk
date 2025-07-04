note
 description:"[
		CoinAPI Market Data REST API
 		No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
  		The version of the OpenAPI document: v1
 	    Contact: support@apibricks.io

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class V1_EXCHANGE_RATES_TIMESERIES_ITEM




feature --Access

    time_period_start: detachable DATE_TIME
      -- Gets or sets the start time of the period.
    time_period_end: detachable DATE_TIME
      -- Gets or sets the end time of the period.
    time_open: detachable DATE_TIME
      -- Gets or sets the opening time of the period.
    time_close: detachable DATE_TIME
      -- Gets or sets the closing time of the period.
    rate_open: REAL_64
      -- Gets or sets the opening rate for the period.
    rate_high: REAL_64
      -- Gets or sets the highest rate for the period.
    rate_low: REAL_64
      -- Gets or sets the lowest rate for the period.
    rate_close: REAL_64
      -- Gets or sets the closing rate for the period.

feature -- Change Element

    set_time_period_start (a_name: like time_period_start)
        -- Set 'time_period_start' with 'a_name'.
      do
        time_period_start := a_name
      ensure
        time_period_start_set: time_period_start = a_name
      end

    set_time_period_end (a_name: like time_period_end)
        -- Set 'time_period_end' with 'a_name'.
      do
        time_period_end := a_name
      ensure
        time_period_end_set: time_period_end = a_name
      end

    set_time_open (a_name: like time_open)
        -- Set 'time_open' with 'a_name'.
      do
        time_open := a_name
      ensure
        time_open_set: time_open = a_name
      end

    set_time_close (a_name: like time_close)
        -- Set 'time_close' with 'a_name'.
      do
        time_close := a_name
      ensure
        time_close_set: time_close = a_name
      end

    set_rate_open (a_name: like rate_open)
        -- Set 'rate_open' with 'a_name'.
      do
        rate_open := a_name
      ensure
        rate_open_set: rate_open = a_name
      end

    set_rate_high (a_name: like rate_high)
        -- Set 'rate_high' with 'a_name'.
      do
        rate_high := a_name
      ensure
        rate_high_set: rate_high = a_name
      end

    set_rate_low (a_name: like rate_low)
        -- Set 'rate_low' with 'a_name'.
      do
        rate_low := a_name
      ensure
        rate_low_set: rate_low = a_name
      end

    set_rate_close (a_name: like rate_close)
        -- Set 'rate_close' with 'a_name'.
      do
        rate_close := a_name
      ensure
        rate_close_set: rate_close = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass V1_EXCHANGE_RATES_TIMESERIES_ITEM%N")
        if attached time_period_start as l_time_period_start then
          Result.append ("%Ntime_period_start:")
          Result.append (l_time_period_start.out)
          Result.append ("%N")
        end
        if attached time_period_end as l_time_period_end then
          Result.append ("%Ntime_period_end:")
          Result.append (l_time_period_end.out)
          Result.append ("%N")
        end
        if attached time_open as l_time_open then
          Result.append ("%Ntime_open:")
          Result.append (l_time_open.out)
          Result.append ("%N")
        end
        if attached time_close as l_time_close then
          Result.append ("%Ntime_close:")
          Result.append (l_time_close.out)
          Result.append ("%N")
        end
        if attached rate_open as l_rate_open then
          Result.append ("%Nrate_open:")
          Result.append (l_rate_open.out)
          Result.append ("%N")
        end
        if attached rate_high as l_rate_high then
          Result.append ("%Nrate_high:")
          Result.append (l_rate_high.out)
          Result.append ("%N")
        end
        if attached rate_low as l_rate_low then
          Result.append ("%Nrate_low:")
          Result.append (l_rate_low.out)
          Result.append ("%N")
        end
        if attached rate_close as l_rate_close then
          Result.append ("%Nrate_close:")
          Result.append (l_rate_close.out)
          Result.append ("%N")
        end
      end
end

