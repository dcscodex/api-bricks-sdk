note
    description: "API tests for LOCATION_API"
    date: "$Date$"
    revision: "$Revision$"


class LOCATION_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_locations
            -- Get site locations
            --
            -- This endpoint providing information about the server site locations supported in the EMS API.
        local
            l_response: LIST [LOCATIONS]
        do
            -- TODO: Initialize required params.

            -- l_response := api.locations
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: LOCATION_API
            -- Create an object instance of `LOCATION_API'.
        once
            create { LOCATION_API } Result
        end

end
