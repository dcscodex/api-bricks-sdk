note
    description: "API tests for METADATA_API"
    date: "$Date$"
    revision: "$Revision$"


class METADATA_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_api_metadata_exchanges_exchange_id_get
            -- List all exchanges by exchange_id
            --
            -- 
        local
            l_response: LIST [METADATA_EXCHANGE]
            l_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_exchange_id

            -- l_response := api.api_metadata_exchanges_exchange_id_get(l_exchange_id)
            assert ("not_implemented", False)
        end

    test_api_metadata_exchanges_get
            -- List all exchanges
            --
            -- Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
        local
            l_response: LIST [METADATA_EXCHANGE]
            l_filter_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.api_metadata_exchanges_get(l_filter_exchange_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: METADATA_API
            -- Create an object instance of `METADATA_API'.
        once
            create { METADATA_API } Result
        end

end
