note
    description: "API tests for METADATA_API"
    date: "$Date$"
    revision: "$Revision$"


class METADATA_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_assets_asset_id_get
            -- List all assets by asset ID
            --
            -- 
        local
            l_response: LIST [V1_ASSET]
            l_asset_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_asset_id

            -- l_response := api.v1_assets_asset_id_get(l_asset_id)
            assert ("not_implemented", False)
        end

    test_v1_assets_get
            -- List all assets
            --
            -- Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
        local
            l_response: LIST [V1_ASSET]
            l_filter_asset_id: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_assets_get(l_filter_asset_id)
            assert ("not_implemented", False)
        end

    test_v1_assets_icons_size_get
            -- List all asset icons
            --
            -- Gets the list of icons (of the given size) for all the assets.
        local
            l_response: LIST [V1_ICON]
            l_size: INTEGER_32
        do
            -- TODO: Initialize required params.
            -- l_size

            -- l_response := api.v1_assets_icons_size_get(l_size)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: METADATA_API
            -- Create an object instance of `METADATA_API'.
        once
            create { METADATA_API } Result
        end

end
