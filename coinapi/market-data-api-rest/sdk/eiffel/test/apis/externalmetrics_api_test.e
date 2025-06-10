note
    description: "API tests for EXTERNALMETRICS_API"
    date: "$Date$"
    revision: "$Revision$"


class EXTERNALMETRICS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_externalmetrics_asset_history_get
            -- Historical metrics for the asset from external sources
            --
            -- Get asset metrics history from external data providers. Data is typically aggregated daily.
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

            -- l_response := api.v1_externalmetrics_asset_history_get(l_metric_id, l_asset_id, l_time_start, l_time_end, l_time_format, l_period_id, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_externalmetrics_asset_listing_get
            -- Listing of metrics available for specific asset
            --
            -- Get all metrics that are actually available for the specified asset from external providers.
        local
            l_response: LIST [V1_METRIC_INFO]
            l_asset_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_asset_id

            -- l_response := api.v1_externalmetrics_asset_listing_get(l_asset_id)
            assert ("not_implemented", False)
        end

    test_v1_externalmetrics_assets_get
            -- Listing of all supported external assets
            --
            -- Get all assets (primarily stablecoins) supported by external data providers.
        local
            l_response: LIST [V1_EXTERNAL_ASSET]
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_externalmetrics_assets_get
            assert ("not_implemented", False)
        end

    test_v1_externalmetrics_chain_history_get
            -- Historical metrics for the chain from external sources
            --
            -- Get chain metrics history from external data providers. Data is typically aggregated daily.
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

            -- l_response := api.v1_externalmetrics_chain_history_get(l_metric_id, l_chain_id, l_time_start, l_time_end, l_time_format, l_period_id, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_externalmetrics_chain_listing_get
            -- Listing of metrics available for specific chain
            --
            -- Get all metrics that are actually available for the specified blockchain chain from external providers.
        local
            l_response: LIST [V1_METRIC_INFO]
            l_chain_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_chain_id

            -- l_response := api.v1_externalmetrics_chain_listing_get(l_chain_id)
            assert ("not_implemented", False)
        end

    test_v1_externalmetrics_chains_get
            -- Listing of all supported external chains
            --
            -- Get all blockchain chains supported by external data providers.
        local
            l_response: LIST [V1_CHAIN]
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_externalmetrics_chains_get
            assert ("not_implemented", False)
        end

    test_v1_externalmetrics_exchange_history_get
            -- Historical metrics for the exchange from both external and internal sources
            --
            -- Get exchange metrics history from external data providers or internal sources based on metric type.
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

            -- l_response := api.v1_externalmetrics_exchange_history_get(l_metric_id, l_exchange_id, l_time_start, l_time_end, l_time_format, l_period_id, l_limit)
            assert ("not_implemented", False)
        end

    test_v1_externalmetrics_exchange_listing_get
            -- Listing of metrics available for specific exchange (both external and generic)
            --
            -- Get all metrics that are actually available for the specified exchange from both external providers and internal sources.
        local
            l_response: LIST [V1_METRIC_INFO]
            l_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_exchange_id

            -- l_response := api.v1_externalmetrics_exchange_listing_get(l_exchange_id)
            assert ("not_implemented", False)
        end

    test_v1_externalmetrics_exchanges_get
            -- Listing of all supported external exchanges
            --
            -- Get all exchanges that have mapping to external data providers for metrics that actually have sources.  Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.
        local
            l_response: LIST [V1_EXTERNAL_EXCHANGE]
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_externalmetrics_exchanges_get
            assert ("not_implemented", False)
        end

    test_v1_externalmetrics_listing_get
            -- Listing of all supported metrics (both external and generic)
            --
            -- Get all metrics available from external data providers and internal generic metrics.  External metrics have detailed descriptions, while generic metrics are marked as such.
        local
            l_response: LIST [V1_METRIC_INFO]
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_externalmetrics_listing_get
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: EXTERNALMETRICS_API
            -- Create an object instance of `EXTERNALMETRICS_API'.
        once
            create { EXTERNALMETRICS_API } Result
        end

end
