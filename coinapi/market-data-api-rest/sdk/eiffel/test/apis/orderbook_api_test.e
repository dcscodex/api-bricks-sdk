note
    description: "API tests for ORDERBOOK_API"
    date: "$Date$"
    revision: "$Revision$"


class ORDERBOOK_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_orderbooks_symbol_id_current_get
            -- Get current order book
            --
            -- Retrieves the current order book for the specified symbol.
        local
            l_response: V1_ORDER_BOOK_BASE
            l_symbol_id: STRING_32
            l_limit_levels: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_symbol_id

            -- l_response := api.v1_orderbooks_symbol_id_current_get(l_symbol_id, l_limit_levels)
            assert ("not_implemented", False)
        end

    test_v1_orderbooks_symbol_id_depth_current_get
            -- Current depth of the order book
            --
            -- Retrieves the current depth of the order book for the specified symbol.
        local
            l_response: V1_ORDER_BOOK_DEPTH
            l_symbol_id: STRING_32
            l_limit_levels: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_symbol_id

            -- l_response := api.v1_orderbooks_symbol_id_depth_current_get(l_symbol_id, l_limit_levels)
            assert ("not_implemented", False)
        end

    test_v1_orderbooks_symbol_id_history_get
            -- Historical data
            --
            -- Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::    :::warning  The &#39;time_start&#39; and &#39;time_end&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the &#39;date&#39; parameter instead for querying data for a specific day without filter.  :::
        local
            l_response: LIST [V1_ORDER_BOOK]
            l_symbol_id: STRING_32
            l_date: STRING_32
            l_time_start: STRING_32
            l_time_end: STRING_32
            l_limit: INTEGER_32
            l_limit_levels: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_symbol_id

            -- l_response := api.v1_orderbooks_symbol_id_history_get(l_symbol_id, l_date, l_time_start, l_time_end, l_limit, l_limit_levels)
            assert ("not_implemented", False)
        end

    test_v1_orderbooks_symbol_id_latest_get
            -- Latest data
            --
            -- Get latest order book snapshots for a specific symbol, returned in time descending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::
        local
            l_response: LIST [V1_ORDER_BOOK]
            l_symbol_id: STRING_32
            l_limit: INTEGER_32
            l_limit_levels: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_symbol_id

            -- l_response := api.v1_orderbooks_symbol_id_latest_get(l_symbol_id, l_limit, l_limit_levels)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: ORDERBOOK_API
            -- Create an object instance of `ORDERBOOK_API'.
        once
            create { ORDERBOOK_API } Result
        end

end
