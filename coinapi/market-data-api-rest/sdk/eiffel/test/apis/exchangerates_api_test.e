note
    description: "API tests for EXCHANGERATES_API"
    date: "$Date$"
    revision: "$Revision$"


class EXCHANGERATES_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_specific_rate
            -- Get specific rate
            --
            -- Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::
        local
            l_response: V1_EXCHANGE_RATE
            l_asset_id_base: STRING_32
            l_asset_id_quote: STRING_32
            l_time: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_asset_id_base
            -- l_asset_id_quote

            -- l_response := api.specific_rate(l_asset_id_base, l_asset_id_quote, l_time)
            assert ("not_implemented", False)
        end

    test_v1_exchangerate_asset_id_base_asset_id_quote_history_get
            -- Timeseries data
            --
            -- Get the historical exchange rates between two assets in the form of the timeseries.
        local
            l_response: LIST [V1_EXCHANGE_RATES_TIMESERIES_ITEM]
            l_asset_id_base: STRING_32
            l_asset_id_quote: STRING_32
            l_period_id: STRING_32
            l_time_start: STRING_32
            l_time_end: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_asset_id_base
            -- l_asset_id_quote

            -- l_response := api.v1_exchangerate_asset_id_base_asset_id_quote_history_get(l_asset_id_base, l_asset_id_quote, l_period_id, l_time_start, l_time_end, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_exchangerate_asset_id_base_get
            -- Get all current rates
            --
            -- Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y &#x3D; 1 / X equation, for example BTC/USD &#x3D; 1 / (USD/BTC);  :::
        local
            l_response: V1_EXCHANGE_RATES
            l_asset_id_base: STRING_32
            l_filter_asset_id: STRING_32
            l_invert: BOOLEAN
            l_time: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_asset_id_base

            -- l_response := api.v1_exchangerate_asset_id_base_get(l_asset_id_base, l_filter_asset_id, l_invert, l_time)
            assert ("not_implemented", False)
        end

    test_v1_exchangerate_history_periods_get
            -- Timeseries periods
            --
            -- You can also obtain historical exchange rates of any asset pair, grouped into time periods.  Get full list of supported time periods available for requesting exchange rates historical timeseries data.                ## Timeseries periods  Time unit | Period identifiers  --- | ---  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
        local
            l_response: LIST [V1_TIMESERIES_PERIOD]
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_exchangerate_history_periods_get
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: EXCHANGERATES_API
            -- Create an object instance of `EXCHANGERATES_API'.
        once
            create { EXCHANGERATES_API } Result
        end

end
