note
    description: "API tests for METRICSV2_API"
    date: "$Date$"
    revision: "$Revision$"


class METRICSV2_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v2_metrics_asset_history_get
            -- Historical metrics for the asset
            --
            -- Get asset metrics history.
        local
            l_response: LIST [ANY]
            l_metric_id: STRING_32
            l_asset_id: STRING_32
            l_time_start: DATE_TIME
            l_time_end: DATE_TIME
            l_time_format: STRING_32
            l_period_id: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_metric_id
            -- l_asset_id

            -- l_response := api.v2_metrics_asset_history_get(l_metric_id, l_asset_id, l_time_start, l_time_end, l_time_format, l_period_id, l_limit)
            assert ("not_implemented", False)
        end

    test_v2_metrics_asset_listing_get
            -- Listing of metrics available for specific asset
            --
            -- Get all metrics that are actually available for the specified asset.
        local
            l_response: LIST [V1_METRIC_INFO]
            l_asset_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_asset_id

            -- l_response := api.v2_metrics_asset_listing_get(l_asset_id)
            assert ("not_implemented", False)
        end

    test_v2_metrics_chain_history_get
            -- Historical metrics for the chain
            --
            -- Get chain metrics history.
        local
            l_response: LIST [ANY]
            l_metric_id: STRING_32
            l_chain_id: STRING_32
            l_time_start: DATE_TIME
            l_time_end: DATE_TIME
            l_time_format: STRING_32
            l_period_id: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_metric_id
            -- l_chain_id

            -- l_response := api.v2_metrics_chain_history_get(l_metric_id, l_chain_id, l_time_start, l_time_end, l_time_format, l_period_id, l_limit)
            assert ("not_implemented", False)
        end

    test_v2_metrics_chain_listing_get
            -- Listing of metrics available for specific chain
            --
            -- Get all metrics that are actually available for the specified blockchain chain.
        local
            l_response: LIST [V1_METRIC_INFO]
            l_chain_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.v2_metrics_chain_listing_get(l_chain_id)
            assert ("not_implemented", False)
        end

    test_v2_metrics_exchange_history_get
            -- Historical metrics for the exchange
            --
            -- Get exchange metrics history.
        local
            l_response: LIST [ANY]
            l_metric_id: STRING_32
            l_exchange_id: STRING_32
            l_time_start: DATE_TIME
            l_time_end: DATE_TIME
            l_time_format: STRING_32
            l_period_id: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_metric_id
            -- l_exchange_id

            -- l_response := api.v2_metrics_exchange_history_get(l_metric_id, l_exchange_id, l_time_start, l_time_end, l_time_format, l_period_id, l_limit)
            assert ("not_implemented", False)
        end

    test_v2_metrics_exchange_listing_get
            -- Listing of metrics available for specific exchange
            --
            -- Get all metrics that are actually available for the specified exchange.
        local
            l_response: LIST [V1_METRIC_INFO]
            l_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_exchange_id

            -- l_response := api.v2_metrics_exchange_listing_get(l_exchange_id)
            assert ("not_implemented", False)
        end

    test_v2_metrics_listing_get
            -- Listing of all supported metrics
            --
            -- Get all metrics available in the system.
        local
            l_response: LIST [V1_METRIC_INFO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.v2_metrics_listing_get
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: METRICSV2_API
            -- Create an object instance of `METRICSV2_API'.
        once
            create { METRICSV2_API } Result
        end

end
