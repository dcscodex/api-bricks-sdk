note
    description: "API tests for OPTIONS_API"
    date: "$Date$"
    revision: "$Revision$"


class OPTIONS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_options_exchange_id_current_get
            -- Current data by Exchange
            --
            -- Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.
        local
            l_response: LIST [OPTIONS_OPTION_EXCHANGE_GROUP]
            l_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_exchange_id

            -- l_response := api.v1_options_exchange_id_current_get(l_exchange_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: OPTIONS_API
            -- Create an object instance of `OPTIONS_API'.
        once
            create { OPTIONS_API } Result
        end

end
