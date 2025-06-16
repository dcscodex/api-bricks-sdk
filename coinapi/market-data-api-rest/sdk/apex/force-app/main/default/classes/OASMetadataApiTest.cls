@isTest
private class OASMetadataApiTest {
    /**
     * List all assets by asset ID
     *
     * 
     */
    @isTest
    private static void v1AssetsAssetIdGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'assetId' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        List<OASV1Asset> response;
        List<OASV1Asset> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Asset>{OASV1Asset.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Asset>{OASV1Asset.getExample()};
        response = (List<OASV1Asset>) api.v1AssetsAssetIdGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetadataApi(client);

        js = JSON.serialize(new List<OASV1Asset>{OASV1Asset.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Asset>{OASV1Asset.getExample()};
        response = (List<OASV1Asset>) api.v1AssetsAssetIdGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all assets
     *
     * Retrieves all assets.\n            \n:::info\nOur asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).\n:::\n            \n:::info\nProperties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.\n:::
     */
    @isTest
    private static void v1AssetsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterAssetId' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        List<OASV1Asset> response;
        List<OASV1Asset> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Asset>{OASV1Asset.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Asset>{OASV1Asset.getExample()};
        response = (List<OASV1Asset>) api.v1AssetsGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetadataApi(client);

        js = JSON.serialize(new List<OASV1Asset>{OASV1Asset.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Asset>{OASV1Asset.getExample()};
        response = (List<OASV1Asset>) api.v1AssetsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all asset icons
     *
     * Gets the list of icons (of the given size) for all the assets.
     */
    @isTest
    private static void v1AssetsIconsSizeGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'size' => ''
        };

        OASClient client;
        OASMetadataApi api;
        List<OASV1Icon> response;
        List<OASV1Icon> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Icon>{OASV1Icon.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Icon>{OASV1Icon.getExample()};
        response = (List<OASV1Icon>) api.v1AssetsIconsSizeGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetadataApi(client);

        js = JSON.serialize(new List<OASV1Icon>{OASV1Icon.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Icon>{OASV1Icon.getExample()};
        response = (List<OASV1Icon>) api.v1AssetsIconsSizeGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all chains by chain ID
     *
     * 
     */
    @isTest
    private static void v1ChainsChainIdGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        List<OASV1Chain> response;
        List<OASV1Chain> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Chain>{OASV1Chain.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Chain>{OASV1Chain.getExample()};
        response = (List<OASV1Chain>) api.v1ChainsChainIdGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetadataApi(client);

        js = JSON.serialize(new List<OASV1Chain>{OASV1Chain.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Chain>{OASV1Chain.getExample()};
        response = (List<OASV1Chain>) api.v1ChainsChainIdGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all blockchain chains
     *
     * Retrieves all blockchain chains supported by the system.\n            \n:::info\nProperties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.\n:::
     */
    @isTest
    private static void v1ChainsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterChainId' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        List<OASV1Chain> response;
        List<OASV1Chain> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Chain>{OASV1Chain.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Chain>{OASV1Chain.getExample()};
        response = (List<OASV1Chain>) api.v1ChainsGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetadataApi(client);

        js = JSON.serialize(new List<OASV1Chain>{OASV1Chain.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Chain>{OASV1Chain.getExample()};
        response = (List<OASV1Chain>) api.v1ChainsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all exchanges by exchange_id
     *
     * 
     */
    @isTest
    private static void v1ExchangesExchangeIdGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        List<OASV1Exchange> response;
        List<OASV1Exchange> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Exchange>{OASV1Exchange.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Exchange>{OASV1Exchange.getExample()};
        response = (List<OASV1Exchange>) api.v1ExchangesExchangeIdGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetadataApi(client);

        js = JSON.serialize(new List<OASV1Exchange>{OASV1Exchange.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Exchange>{OASV1Exchange.getExample()};
        response = (List<OASV1Exchange>) api.v1ExchangesExchangeIdGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all exchanges
     *
     * Get a detailed list of exchanges provided by the system.\n            \n:::info\nProperties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.\n:::
     */
    @isTest
    private static void v1ExchangesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterExchangeId' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        List<OASV1Exchange> response;
        List<OASV1Exchange> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Exchange>{OASV1Exchange.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Exchange>{OASV1Exchange.getExample()};
        response = (List<OASV1Exchange>) api.v1ExchangesGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetadataApi(client);

        js = JSON.serialize(new List<OASV1Exchange>{OASV1Exchange.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Exchange>{OASV1Exchange.getExample()};
        response = (List<OASV1Exchange>) api.v1ExchangesGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List of icons for the exchanges
     *
     * 
     */
    @isTest
    private static void v1ExchangesIconsSizeGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'size' => ''
        };

        OASClient client;
        OASMetadataApi api;
        List<OASV1Icon> response;
        List<OASV1Icon> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Icon>{OASV1Icon.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Icon>{OASV1Icon.getExample()};
        response = (List<OASV1Icon>) api.v1ExchangesIconsSizeGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetadataApi(client);

        js = JSON.serialize(new List<OASV1Icon>{OASV1Icon.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Icon>{OASV1Icon.getExample()};
        response = (List<OASV1Icon>) api.v1ExchangesIconsSizeGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List of symbols for the exchange
     *
     * 
     */
    @isTest
    private static void v1SymbolsExchangeIdGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null',
            'filterSymbolId' => 'null',
            'filterAssetId' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        List<OASV1Symbol> response;
        List<OASV1Symbol> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Symbol>{OASV1Symbol.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Symbol>{OASV1Symbol.getExample()};
        response = (List<OASV1Symbol>) api.v1SymbolsExchangeIdGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetadataApi(client);

        js = JSON.serialize(new List<OASV1Symbol>{OASV1Symbol.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Symbol>{OASV1Symbol.getExample()};
        response = (List<OASV1Symbol>) api.v1SymbolsExchangeIdGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all symbols
     *
     * Retrieves all symbols with optional filtering.\n            \n:::info\n&quot;price_precision&quot; and &quot;size_precision&quot; are data precisions and are not always the same precisions used for trading eg. for the &quot;BINANCE&quot; exchanges.\n:::\n            \n:::info\nYou should not assume that the market data will be always within the resolution provided by the &quot;price_precision&quot; and &quot;size_precision&quot;. The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.\n:::\n            \n### Symbol identifier\n            \nOur symbol identifier is created using a pattern that depends on symbol type.\n            \nType | &#x60;symbol_id&#x60; pattern\n--------- | ---------\nSPOT | &#x60;{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}&#x60;\nFUTURES | &#x60;{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}&#x60;\nOPTION | &#x60;{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}&#x60;\nPERPETUAL | &#x60;{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}&#x60;\nINDEX | &#x60;{exchange_id}_IDX_{index_id}&#x60;\nCREDIT | &#x60;{exchange_id}_CRE_{asset_id_base}&#x60;\nCONTACT  | &#x60;{exchange_id}_COT_{contract_id}&#x60;\n            \n:::info\nIn the unlikely event when the &quot;symbol_id&quot; for more than one market is the same. We will append the additional term (prefixed with the &quot;_&quot;) at the end of the duplicated identifiers to differentiate them.\n:::info\n            \n### Symbol types list (enumeration of &#x60;symbol_type&#x60; output variable)\n            \nType | Name | Description\n-------- | - | -----------\nSPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)*\nFUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time\nOPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date\nPERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time\nINDEX | Index | Statistical composite that measures changes in the economy or markets.\nCREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate.\nCONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*\n            \n### Additional output variables for &#x60;symbol_type &#x3D; INDEX&#x60;\n            \nVariable | Description\n--------- | -----------\nindex_id | Index identifier\nindex_display_name | Human readable name of the index *(optional)*\nindex_display_description | Description of the index *(optional)*\n            \n### Additional output variables for &#x60;symbol_type &#x3D; FUTURES&#x60;\n            \nVariable | Description\n--------- | -----------\nfuture_delivery_time | Predetermined time of futures contract delivery date in ISO 8601\nfuture_contract_unit | Contact size *(eg. 10 BTC if &#x60;future_contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;future_contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)*\nfuture_contract_unit_asset | Identifier of the asset used to denominate the contract unit\n            \n### Additional output variables for &#x60;symbol_type &#x3D; PERPETUAL&#x60;\n            \nVariable | Description\n--------- | -----------\nfuture_contract_unit | Contact size *(eg. 10 BTC if &#x60;future_contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;future_contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)*\nfuture_contract_unit_asset | Identifier of the asset used to denominate the contract unit\n            \n### Additional output variables for &#x60;symbol_type &#x3D; OPTION&#x60;\n            \nVariable | Description\n--------- | -----------\noption_type_is_call | Boolean value representing option type. &#x60;true&#x60; for Call options, &#x60;false&#x60; for Put options\noption_strike_price | Price at which option contract can be exercised\noption_contract_unit | Base asset amount of underlying spot which single option represents\noption_exercise_style | Option exercise style. Can be &#x60;EUROPEAN&#x60; or &#x60;AMERICAN&#x60;\noption_expiration_time | Option contract expiration time in ISO 8601\n            \n### Additional output variables for &#x60;symbol_type &#x3D; CONTRACT&#x60;\n            \nVariable | Description\n--------- | -----------\ncontract_delivery_time | Predetermined time of contract delivery date in ISO 8601\ncontract_unit | Contact size *(eg. 10 BTC if &#x60;contract_unit&#x60; &#x3D; &#x60;10&#x60; and &#x60;contract_unit_asset&#x60; &#x3D; &#x60;BTC&#x60;)*\ncontract_unit_asset | Identifier of the asset used to denominate the contract unit\ncontract_id | Identifier of contract by the exchange
     */
    @isTest
    private static void v1SymbolsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterSymbolId' => 'null',
            'filterExchangeId' => 'null',
            'filterAssetId' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        List<OASV1Symbol> response;
        List<OASV1Symbol> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Symbol>{OASV1Symbol.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Symbol>{OASV1Symbol.getExample()};
        response = (List<OASV1Symbol>) api.v1SymbolsGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetadataApi(client);

        js = JSON.serialize(new List<OASV1Symbol>{OASV1Symbol.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Symbol>{OASV1Symbol.getExample()};
        response = (List<OASV1Symbol>) api.v1SymbolsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List symbol mapping for the exchange
     *
     * 
     */
    @isTest
    private static void v1SymbolsMapExchangeIdGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        List<OASV1SymbolMapping> response;
        List<OASV1SymbolMapping> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1SymbolMapping>{OASV1SymbolMapping.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1SymbolMapping>{OASV1SymbolMapping.getExample()};
        response = (List<OASV1SymbolMapping>) api.v1SymbolsMapExchangeIdGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetadataApi(client);

        js = JSON.serialize(new List<OASV1SymbolMapping>{OASV1SymbolMapping.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1SymbolMapping>{OASV1SymbolMapping.getExample()};
        response = (List<OASV1SymbolMapping>) api.v1SymbolsMapExchangeIdGet(params);
        System.assertEquals(expectedResponse, response);
    }
}