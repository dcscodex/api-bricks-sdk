note
    description: "API tests for INDEXES_API"
    date: "$Date$"
    revision: "$Revision$"


class INDEXES_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_indexdef_input_data_index_definition_id_all_get
            -- Returns all data inputs for a specific index definition
            --
            -- 
        local
            l_response: LIST [INDEXES_INDEX_DEFINITION_INPUT_DATA]
            l_index_definition_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_index_definition_id

            -- l_response := api.v1_indexdef_input_data_index_definition_id_all_get(l_index_definition_id)
            assert ("not_implemented", False)
        end

    test_v1_indexdef_input_data_index_definition_id_get
            -- Returns data inputs for certain index definition and time
            --
            -- 
        local
            l_response: LIST [INDEXES_INDEX_DEFINITION_SNAPSHOT_ENTRY]
            l_index_definition_id: STRING_32
            l_time: DATE_TIME
            l_enabled_only: BOOLEAN
            l_pending_only: BOOLEAN
            l_filter_asset_id: STRING_32
            l_with_status_info: BOOLEAN
        do
            -- TODO: Initialize required params.
            -- l_index_definition_id

            -- l_response := api.v1_indexdef_input_data_index_definition_id_get(l_index_definition_id, l_time, l_enabled_only, l_pending_only, l_filter_asset_id, l_with_status_info)
            assert ("not_implemented", False)
        end

    test_v1_indexdef_multiasset_get
            -- Get all multi-asset weights
            --
            -- 
        local
            l_response: LIST [INDEXES_INDEX_MULTI_ASSET_WEIGHT]
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_indexdef_multiasset_get
            assert ("not_implemented", False)
        end

    test_v1_indexdef_multiasset_index_id_get
            -- Get multi-asset weights for specific index
            --
            -- 
        local
            l_response: LIST [INDEXES_INDEX_MULTI_ASSET_WEIGHT]
            l_index_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_index_id

            -- l_response := api.v1_indexdef_multiasset_index_id_get(l_index_id)
            assert ("not_implemented", False)
        end

    test_v1_indexes_get
            -- List indexes
            --
            -- 
        local
            l_response: LIST [INDEXES_INDEX_IDENTIFIER]
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_indexes_get
            assert ("not_implemented", False)
        end

    test_v1_indexes_index_definition_id_current_snapshot_get
            -- Current Index Values for index definition
            --
            -- 
        local
            l_response: LIST [INDEXES_INDEX_DEFINITION_SNAPSHOT_ENTRY]
            l_index_definition_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_index_definition_id

            -- l_response := api.v1_indexes_index_definition_id_current_snapshot_get(l_index_definition_id)
            assert ("not_implemented", False)
        end

    test_v1_indexes_index_definition_id_history_snapshot_get
            -- Historical Index Values for index definition
            --
            -- 
        local
            l_response: LIST [INDEXES_INDEX_DEFINITION_SNAPSHOT_ENTRY]
            l_index_definition_id: STRING_32
            l_time: DATE_TIME
        do
            -- TODO: Initialize required params.
            -- l_index_definition_id

            -- l_response := api.v1_indexes_index_definition_id_history_snapshot_get(l_index_definition_id, l_time)
            assert ("not_implemented", False)
        end

    test_v1_indexes_index_id_current_get
            -- Current Index Value
            --
            -- 
        local
            l_response: INDEXES_INDEX_VALUE
            l_index_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_index_id

            -- l_response := api.v1_indexes_index_id_current_get(l_index_id)
            assert ("not_implemented", False)
        end

    test_v1_indexes_index_id_history_get
            -- Historical Index Value w/Composition
            --
            -- 
        local
            l_response: LIST [INDEXES_INDEX_VALUE]
            l_index_id: STRING_32
            l_time_start: DATE_TIME
            l_time_end: DATE_TIME
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_index_id

            -- l_response := api.v1_indexes_index_id_history_get(l_index_id, l_time_start, l_time_end, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_indexes_index_id_timeseries_get
            -- Timeseries Index Value
            --
            -- 
        local
            l_response: LIST [INDEXES_INDEX_TIMESERIES_ITEM]
            l_index_id: STRING_32
            l_period_id: STRING_32
            l_time_start: STRING_32
            l_time_end: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_index_id
            -- l_period_id
            -- l_time_start
            -- l_time_end

            -- l_response := api.v1_indexes_index_id_timeseries_get(l_index_id, l_period_id, l_time_start, l_time_end, l_limit)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: INDEXES_API
            -- Create an object instance of `INDEXES_API'.
        once
            create { INDEXES_API } Result
        end

end
