note
    description: "API tests for METRICSV1_API"
    date: "$Date$"
    revision: "$Revision$"


class METRICSV1_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_metrics_asset_current_get
            -- Current metrics for given asset
            --
            -- Get current asset metrics.
        local
            l_response: LIST [V1_GENERAL_DATA]
            l_metric_id: STRING_32
            l_asset_id: STRING_32
            l_asset_id_external: STRING_32
            l_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_metrics_asset_current_get(l_metric_id, l_asset_id, l_asset_id_external, l_exchange_id)
            assert ("not_implemented", False)
        end

    test_v1_metrics_asset_history_get
            -- Historical metrics for asset
            --
            -- Get asset metrics history.
        local
            l_response: LIST [V1_METRIC_DATA]
            l_metric_id: STRING_32
            l_exchange_id: STRING_32
            l_asset_id: STRING_32
            l_asset_id_external: STRING_32
            l_time_start: DATE_TIME
            l_time_end: DATE_TIME
            l_time_format: STRING_32
            l_period_id: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_metric_id
            -- l_exchange_id

            -- l_response := api.v1_metrics_asset_history_get(l_metric_id, l_exchange_id, l_asset_id, l_asset_id_external, l_time_start, l_time_end, l_time_format, l_period_id, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_metrics_asset_listing_get
            -- Listing of all supported metrics for asset
            --
            -- Get data metrics for asset.
        local
            l_response: LIST [V1_LISTING_ITEM]
            l_metric_id: STRING_32
            l_exchange_id: STRING_32
            l_chain_id: STRING_32
            l_network_id: STRING_32
            l_asset_id: STRING_32
            l_asset_id_external: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_metrics_asset_listing_get(l_metric_id, l_exchange_id, l_chain_id, l_network_id, l_asset_id, l_asset_id_external)
            assert ("not_implemented", False)
        end

    test_v1_metrics_exchange_current_get
            -- Current metrics for given exchange
            --
            -- Get current exchange metrics values.
        local
            l_response: LIST [V1_GENERAL_DATA]
            l_exchange_id: STRING_32
            l_metric_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_exchange_id

            -- l_response := api.v1_metrics_exchange_current_get(l_exchange_id, l_metric_id)
            assert ("not_implemented", False)
        end

    test_v1_metrics_exchange_history_get
            -- Historical metrics for the exchange
            --
            -- Get exchange metrics history.
        local
            l_response: LIST [V1_METRIC_DATA]
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

            -- l_response := api.v1_metrics_exchange_history_get(l_metric_id, l_exchange_id, l_time_start, l_time_end, l_time_format, l_period_id, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_metrics_exchange_listing_get
            -- Listing of all supported exchange metrics
            --
            -- Get data metrics for exchange.
        local
            l_response: LIST [V1_LISTING_ITEM]
            l_exchange_id: STRING_32
            l_metric_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_exchange_id

            -- l_response := api.v1_metrics_exchange_listing_get(l_exchange_id, l_metric_id)
            assert ("not_implemented", False)
        end

    test_v1_metrics_listing_get
            -- Listing of all supported metrics by CoinAPI
            --
            -- Get all data metrics.
        local
            l_response: LIST [V1_METRIC]
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_metrics_listing_get
            assert ("not_implemented", False)
        end

    test_v1_metrics_symbol_current_get
            -- Current metrics for given symbol
            --
            -- Get current symbol metrics.
        local
            l_response: LIST [V1_GENERAL_DATA]
            l_metric_id: STRING_32
            l_symbol_id: STRING_32
            l_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_metrics_symbol_current_get(l_metric_id, l_symbol_id, l_exchange_id)
            assert ("not_implemented", False)
        end

    test_v1_metrics_symbol_history_get
            -- Historical metrics for symbol
            --
            -- Get symbol metrics history.
        local
            l_response: LIST [V1_METRIC_DATA]
            l_metric_id: STRING_32
            l_symbol_id: STRING_32
            l_time_start: DATE_TIME
            l_time_end: DATE_TIME
            l_time_format: STRING_32
            l_period_id: STRING_32
            l_limit: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_metric_id
            -- l_symbol_id

            -- l_response := api.v1_metrics_symbol_history_get(l_metric_id, l_symbol_id, l_time_start, l_time_end, l_time_format, l_period_id, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_metrics_symbol_listing_get
            -- Listing of all supported metrics for symbol
            --
            -- Get data metrics for symbol.
        local
            l_response: LIST [V1_LISTING_ITEM]
            l_metric_id: STRING_32
            l_exchange_id: STRING_32
            l_symbol_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_metrics_symbol_listing_get(l_metric_id, l_exchange_id, l_symbol_id)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: METRICSV1_API
            -- Create an object instance of `METRICSV1_API'.
        once
            create { METRICSV1_API } Result
        end

end
