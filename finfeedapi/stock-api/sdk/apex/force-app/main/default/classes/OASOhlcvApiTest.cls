@isTest
private class OASOhlcvApiTest {
    /**
     * Historical data by exchange
     *
     * Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange.
     */
    @isTest
    private static void v1OhlcvExchangeExchangeIdHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null',
            'periodId' => 'null',
            'timeStart' => 'null',
            'timeEnd' => 'null'
        };

        OASClient client;
        OASOhlcvApi api;
        List<OASOHLCVExchangeTimeseriesItem> response;
        List<OASOHLCVExchangeTimeseriesItem> expectedResponse;
        String js = '';

        api = new OASOhlcvApi(new OASClient());

        js = JSON.serialize(new List<OASOHLCVExchangeTimeseriesItem>{OASOHLCVExchangeTimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOHLCVExchangeTimeseriesItem>{OASOHLCVExchangeTimeseriesItem.getExample()};
        response = (List<OASOHLCVExchangeTimeseriesItem>) api.v1OhlcvExchangeExchangeIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical data
     *
     * Get OHLCV timeseries data returned in time ascending order.
     */
    @isTest
    private static void v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null',
            'symbolId' => 'null',
            'periodId' => 'null',
            'timeStart' => 'null',
            'timeEnd' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASOhlcvApi api;
        List<OASOHLCVTimeseriesItem> response;
        List<OASOHLCVTimeseriesItem> expectedResponse;
        String js = '';

        api = new OASOhlcvApi(new OASClient());

        js = JSON.serialize(new List<OASOHLCVTimeseriesItem>{OASOHLCVTimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOHLCVTimeseriesItem>{OASOHLCVTimeseriesItem.getExample()};
        response = (List<OASOHLCVTimeseriesItem>) api.v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Latest data
     *
     * Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data\r\n            \r\n:::info\r\nOHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted &#x60;time_start&#x60; and &#x60;time_end&#x60; parameters. \r\nThe OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.\r\n:::
     */
    @isTest
    private static void v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null',
            'symbolId' => 'null',
            'periodId' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASOhlcvApi api;
        List<OASOHLCVTimeseriesItem> response;
        List<OASOHLCVTimeseriesItem> expectedResponse;
        String js = '';

        api = new OASOhlcvApi(new OASClient());

        js = JSON.serialize(new List<OASOHLCVTimeseriesItem>{OASOHLCVTimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOHLCVTimeseriesItem>{OASOHLCVTimeseriesItem.getExample()};
        response = (List<OASOHLCVTimeseriesItem>) api.v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all periods
     *
     * Get full list of supported time periods available for requesting OHLCV timeseries data.\r\n            \r\n### Available periods\r\n            \r\nTime unit | Period identifiers\r\n--------- | -----------\r\nSecond | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC\r\nMinute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN\r\nHour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS\r\nDay | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY\r\nMonth | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH\r\nYear | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS\r\n            \r\n:::tip\r\nYou can assume that we will not remove any periods from this response, however, we may add new ones.\r\n:::
     */
    @isTest
    private static void v1OhlcvPeriodsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASOhlcvApi api;
        List<OASOHLCVTimeseriesPeriod> response;
        List<OASOHLCVTimeseriesPeriod> expectedResponse;
        String js = '';

        api = new OASOhlcvApi(new OASClient());

        js = JSON.serialize(new List<OASOHLCVTimeseriesPeriod>{OASOHLCVTimeseriesPeriod.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOHLCVTimeseriesPeriod>{OASOHLCVTimeseriesPeriod.getExample()};
        response = (List<OASOHLCVTimeseriesPeriod>) api.v1OhlcvPeriodsGet();
        System.assertEquals(expectedResponse, response);
    }
}