note
    description: "API tests for ORDERBOOKL3_API"
    date: "$Date$"
    revision: "$Revision$"


class ORDERBOOKL3_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_orderbooks3_current_get
            -- Current order books
            --
            -- 
        local
            l_response: LIST [V1_ORDER_BOOK_BASE]
            l_filter_symbol_id: STRING_32
            l_limit_levels: INTEGER_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_orderbooks3_current_get(l_filter_symbol_id, l_limit_levels)
            assert ("not_implemented", False)
        end

    test_v1_orderbooks3_symbol_id_current_get
            -- Current order book by symbol_id
            --
            -- Retrieves the current order book for the specified symbol.
        local
            l_response: V1_ORDER_BOOK_BASE
            l_symbol_id: STRING_32
            l_limit_levels: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_symbol_id

            -- l_response := api.v1_orderbooks3_symbol_id_current_get(l_symbol_id, l_limit_levels)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: ORDERBOOKL3_API
            -- Create an object instance of `ORDERBOOKL3_API'.
        once
            create { ORDERBOOKL3_API } Result
        end

end
