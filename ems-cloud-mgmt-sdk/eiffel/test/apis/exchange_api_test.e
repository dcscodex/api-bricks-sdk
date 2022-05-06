note
    description: "API tests for EXCHANGE_API"
    date: "$Date$"
    revision: "$Revision$"


class EXCHANGE_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_exchange_login_require
            -- Get exchange configuration
            --
            -- Get information about the required parameters or server site location of the exchanges supported in the EMS API.
        local
            l_response: LIST [EXCHANGE_LOGIN_REQUIRE]
        do
            -- TODO: Initialize required params.

            -- l_response := api.exchange_login_require
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: EXCHANGE_API
            -- Create an object instance of `EXCHANGE_API'.
        once
            create { EXCHANGE_API } Result
        end

end
