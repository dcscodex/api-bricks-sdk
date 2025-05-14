note
    description: "API tests for PERIODS_API"
    date: "$Date$"
    revision: "$Revision$"


class PERIODS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_metadata_periods_get
            -- List all periods
            --
            -- Get full list of supported time periods                ### Available periods                Time unit | Period identifiers  --------- | -----------  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY  Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH  Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS                :::tip  You can assume that we will not remove any periods from this response, however, we may add new ones.  :::
        local
            l_response: LIST [METADATA_TIMESERIES_PERIOD]
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_metadata_periods_get
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: PERIODS_API
            -- Create an object instance of `PERIODS_API'.
        once
            create { PERIODS_API } Result
        end

end
