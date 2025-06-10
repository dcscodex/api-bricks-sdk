note
    description: "API tests for QUOTES_API"
    date: "$Date$"
    revision: "$Revision$"


class QUOTES_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_quotes_current_get
            -- Current data
            --
            -- Get current quotes for all symbols or for a specific symbol.                :::info  When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned.  :::
        local
            l_response: LIST [V1_QUOTE_TRADE]
            l_filter_symbol_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_quotes_current_get(l_filter_symbol_id)
            assert ("not_implemented", False)
        end

    test_v1_quotes_latest_get
            -- Latest data
            --
            -- Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.
        local
            l_response: LIST [V1_QUOTE]
            l_filter_symbol_id: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_quotes_latest_get(l_filter_symbol_id, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_quotes_symbol_id_current_get
            -- Current quotes for a specific symbol
            --
            -- 
        local
            l_response: V1_QUOTE_TRADE
            l_symbol_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_symbol_id

            -- l_response := api.v1_quotes_symbol_id_current_get(l_symbol_id)
            assert ("not_implemented", False)
        end

    test_v1_quotes_symbol_id_history_get
            -- Historical data
            --
            -- Get historical quote updates within requested time range, returned in time ascending order.    :::warning  The &#39;time_start&#39; and &#39;time_end&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the &#39;date&#39; parameter instead for querying data for a specific day without filter.  :::
        local
            l_response: LIST [V1_QUOTE]
            l_symbol_id: STRING_32
            l_date: STRING_32
            l_time_start: STRING_32
            l_time_end: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_symbol_id

            -- l_response := api.v1_quotes_symbol_id_history_get(l_symbol_id, l_date, l_time_start, l_time_end, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_quotes_symbol_id_latest_get
            -- Latest quote updates for a specific symbol
            --
            -- 
        local
            l_response: LIST [V1_QUOTE]
            l_symbol_id: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_symbol_id

            -- l_response := api.v1_quotes_symbol_id_latest_get(l_symbol_id, l_limit)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: QUOTES_API
            -- Create an object instance of `QUOTES_API'.
        once
            create { QUOTES_API } Result
        end

end
