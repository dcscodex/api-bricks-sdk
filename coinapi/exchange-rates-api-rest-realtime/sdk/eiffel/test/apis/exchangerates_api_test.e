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
            -- Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::
        local
            l_response: V1_EXCHANGE_RATE
            l_asset_id_base: STRING_32
            l_asset_id_quote: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_asset_id_base
            -- l_asset_id_quote

            -- l_response := api.specific_rate(l_asset_id_base, l_asset_id_quote)
            assert ("not_implemented", False)
        end

    test_v1_exchangerate_asset_id_base_get
            -- Get all current rates
            --
            -- Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y &#x3D; 1 / X equation, for example BTC/USD &#x3D; 1 / (USD/BTC); :::
        local
            l_response: V1_EXCHANGE_RATES
            l_asset_id_base: STRING_32
            l_filter_asset_id: STRING_32
            l_invert: BOOLEAN
        do
            -- TODO: Initialize required params.
            -- l_asset_id_base

            -- l_response := api.v1_exchangerate_asset_id_base_get(l_asset_id_base, l_filter_asset_id, l_invert)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: EXCHANGERATES_API
            -- Create an object instance of `EXCHANGERATES_API'.
        once
            create { EXCHANGERATES_API } Result
        end

end
