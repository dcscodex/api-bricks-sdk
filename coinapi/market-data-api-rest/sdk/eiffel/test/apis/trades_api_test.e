note
    description: "API tests for TRADES_API"
    date: "$Date$"
    revision: "$Revision$"


class TRADES_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_trades_latest_get
            -- Latest data
            --
            -- Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
        local
            l_response: LIST [V1_TRADE]
            l_filter_symbol_id: STRING_32
            l_include_id: BOOLEAN
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_trades_latest_get(l_filter_symbol_id, l_include_id, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_trades_symbol_id_history_get
            -- Historical data
            --
            -- Get history transactions from specific symbol, returned in time ascending order.  :::warning The &#39;time_start&#39; and &#39;time_end&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the &#39;date&#39; parameter instead for querying data for a specific day without filter. :::
        local
            l_response: LIST [V1_TRADE]
            l_symbol_id: STRING_32
            l_date: STRING_32
            l_time_start: STRING_32
            l_time_end: STRING_32
            l_limit: INTEGER_32
            l_include_id: BOOLEAN
        do
            -- TODO: Initialize required params.
            -- l_symbol_id

            -- l_response := api.v1_trades_symbol_id_history_get(l_symbol_id, l_date, l_time_start, l_time_end, l_limit, l_include_id)
            assert ("not_implemented", False)
        end

    test_v1_trades_symbol_id_latest_get
            -- Latest data by symbol_id
            --
            -- Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
        local
            l_response: LIST [V1_TRADE]
            l_symbol_id: STRING_32
            l_limit: INTEGER_32
            l_include_id: BOOLEAN
        do
            -- TODO: Initialize required params.
            -- l_symbol_id

            -- l_response := api.v1_trades_symbol_id_latest_get(l_symbol_id, l_limit, l_include_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: TRADES_API
            -- Create an object instance of `TRADES_API'.
        once
            create { TRADES_API } Result
        end

end
