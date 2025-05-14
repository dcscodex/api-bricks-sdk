note
    description: "API tests for NATIVEIEX_API"
    date: "$Date$"
    revision: "$Revision$"


class NATIVEIEX_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_native_iex_admin_messages_symbol_get
            -- Get Admin Messages
            --
            -- 
        local
            l_response: LIST [ADMIN_ADMIN_MESSAGE_MODEL]
            l_symbol: STRING_32
            l_date: DATE_TIME
        do
            -- TODO: Initialize required params.
            -- l_symbol
            -- l_date

            -- l_response := api.v1_native_iex_admin_messages_symbol_get(l_symbol, l_date)
            assert ("not_implemented", False)
        end

    test_v1_native_iex_admin_system_event_get
            -- Get System Events
            --
            -- 
        local
            l_response: LIST [ADMIN_SYSTEM_EVENT_MODEL]
            l_date: DATE_TIME
        do
            -- TODO: Initialize required params.
            -- l_date

            -- l_response := api.v1_native_iex_admin_system_event_get(l_date)
            assert ("not_implemented", False)
        end

    test_v1_native_iex_level1_quote_symbol_get
            -- Get Level-1 Quotes
            --
            -- 
        local
            l_response: LIST [LEVEL1_QUOTE_UPDATE_MODEL]
            l_symbol: STRING_32
            l_date: DATE_TIME
        do
            -- TODO: Initialize required params.
            -- l_symbol
            -- l_date

            -- l_response := api.v1_native_iex_level1_quote_symbol_get(l_symbol, l_date)
            assert ("not_implemented", False)
        end

    test_v1_native_iex_level2_price_level_update_symbol_get
            -- Get Level-2 Price Level Book
            --
            -- 
        local
            l_response: LIST [LEVEL2_PRICE_LEVEL_UPDATE_MODEL]
            l_symbol: STRING_32
            l_date: DATE_TIME
        do
            -- TODO: Initialize required params.
            -- l_symbol
            -- l_date

            -- l_response := api.v1_native_iex_level2_price_level_update_symbol_get(l_symbol, l_date)
            assert ("not_implemented", False)
        end

    test_v1_native_iex_level3_order_book_symbol_get
            -- Get Level-3 Order Book
            --
            -- 
        local
            l_response: LIST [LEVEL3_ORDER_BOOK_MODEL]
            l_symbol: STRING_32
            l_date: DATE_TIME
        do
            -- TODO: Initialize required params.
            -- l_symbol
            -- l_date

            -- l_response := api.v1_native_iex_level3_order_book_symbol_get(l_symbol, l_date)
            assert ("not_implemented", False)
        end

    test_v1_native_iex_trade_symbol_get
            -- Get Trades
            --
            -- 
        local
            l_response: LIST [TRADE_TRADE_MODEL]
            l_symbol: STRING_32
            l_date: DATE_TIME
        do
            -- TODO: Initialize required params.
            -- l_symbol
            -- l_date

            -- l_response := api.v1_native_iex_trade_symbol_get(l_symbol, l_date)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: NATIVEIEX_API
            -- Create an object instance of `NATIVEIEX_API'.
        once
            create { NATIVEIEX_API } Result
        end

end
