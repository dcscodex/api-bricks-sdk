note
    description: "API tests for METADATA_API"
    date: "$Date$"
    revision: "$Revision$"


class METADATA_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_exchanges_get
            -- List of exchanges
            --
            -- 
        local
            l_response: LIST [FIN_FEED_API_EXCHANGE_MODEL]
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_exchanges_get
            assert ("not_implemented", False)
        end

    test_v1_symbols_exchange_id_get
            -- List of symbols for the exchange
            --
            -- 
        local
            l_response: LIST [FIN_FEED_API_SYMBOL_MODEL]
            l_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_exchange_id

            -- l_response := api.v1_symbols_exchange_id_get(l_exchange_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: METADATA_API
            -- Create an object instance of `METADATA_API'.
        once
            create { METADATA_API } Result
        end

end
