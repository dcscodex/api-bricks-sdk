note
    description: "API tests for ACCOUNT_API"
    date: "$Date$"
    revision: "$Revision$"


class ACCOUNT_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_account
            -- Get accounts
            --
            -- Get all accounts maintained for your subscription in the EMS API.
        local
            l_response: LIST [GET_ACCOUNT]
            l_filter_exchange_id: LIST [STRING_32]
        do
            -- TODO: Initialize required params.

            -- l_response := api.account(l_filter_exchange_id)
            assert ("not_implemented", False)
        end

    test_delete_account
            -- Delete account
            --
            -- Delete specific exchange account maintained by the EMS API for your subscription.
        local
            l_exchange_id: LIST [STRING_32]
        do
            -- TODO: Initialize required params.
            -- create {ARRAYED_LIST [STRING_32]} l_exchange_id.make (2)

            -- api.delete_account(l_exchange_id)
            assert ("not_implemented", False)
        end

    test_delete_account_all
            -- Delete all accounts
            --
            -- Delete all exchange accounts maintained by the EMS API for your subscription.
        local
        do
            -- TODO: Initialize required params.

            -- api.delete_account_all
            assert ("not_implemented", False)
        end

    test_persist_account
            -- Add or update account
            --
            -- Add new or update existing exchange account for your subscription in the EMS API.
        local
            l_body: ACCOUNT_DATA
        do
            -- TODO: Initialize required params.
            -- l_body

            -- api.persist_account(l_body)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: ACCOUNT_API
            -- Create an object instance of `ACCOUNT_API'.
        once
            create { ACCOUNT_API } Result
        end

end
