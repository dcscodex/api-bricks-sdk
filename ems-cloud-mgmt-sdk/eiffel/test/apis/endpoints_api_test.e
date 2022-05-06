note
    description: "API tests for ENDPOINTS_API"
    date: "$Date$"
    revision: "$Revision$"


class ENDPOINTS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_endpoints
            -- Get API endpoints
            --
            -- Get all API endpoints that the EMS API expose for your subscription.
        local
            l_response: LIST [ACCOUNT_ENDPOINT]
            l_filter_exchange_id: LIST [STRING_32]
        do
            -- TODO: Initialize required params.

            -- l_response := api.endpoints(l_filter_exchange_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: ENDPOINTS_API
            -- Create an object instance of `ENDPOINTS_API'.
        once
            create { ENDPOINTS_API } Result
        end

end
