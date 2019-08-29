package io.coinapi.rest;

import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.time.Instant;

/**
 * Unit test for REST_method.
 */
public class REST_methodsTest
{
    private static String COINAPI_KEY;
    private REST_methods rm;

    @Before
    public void configureCoinAPIKey() throws IOException {

        Config config = new Config();
        COINAPI_KEY = config.getPropValues("coinapi_key");
        if (COINAPI_KEY.equals("YOUR_API_KEY_HERE")) {
            System.err.println(
                    "ERROR: REST_methods_test.main will abort because its constant COINAPI_KEY has the value \"" + COINAPI_KEY + "\"" + "\n"
                            + "Solution: edit the file REST_methods_test.java so that its COINAPI_KEY constant has your coinapi key, recompile, then run" + "\n"
            );
        }
        // NOTE: above each test method below is a URL that you can paste into your browser
        // AFTER you change the "apikey=YOUR_API_KEY_HERE" text to have your actual coinapi key.
        // You can compare by eyeball the results in the browser against what the methods below print out.
        // +++ in the future: this eyeball comparison is bad, should automate the downloading of JSON from the URLs and then compare it against the Java methods below somehow.
        // One problem is that the Java methods below do not print out the raw JSON text that the downloaded, instead they print out a highly processed versionof it.
        rm = new REST_methods(COINAPI_KEY);
    }

    /**
     * https://rest.coinapi.io/v1/exchanges?apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testMetadataListAllExchanges() throws IOException {
        assertEquals(test_metadata_list_all_exchanges(rm), true);
    }


    /**
     * https://rest.coinapi.io/v1/assets?apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testMetadataListAllAssets() throws IOException {
        assertEquals(test_metadata_list_all_assets(rm), true);
    }

    /**
     * https://rest.coinapi.io/v1/symbols?apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testMetadataListAllSymbols() throws IOException {
        assertEquals(test_metadata_list_all_symbols(rm), true);
    }

    /**
     * https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testGetExchangeRate() throws IOException {
        assertEquals(test_get_exchange_rate(rm, "BTC", "USD"), true);
    }

    /**
     * https://rest.coinapi.io/v1/exchangerate/BTC/USD?time=2016-11-01T22:08:41Z&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testGetExchangeRate2() throws IOException {
        assertEquals(test_get_exchange_rate(rm, "BTC", "USD", Instant.parse("2016-11-01T22:08:41Z")), true);
    }

    /**
     * https://rest.coinapi.io/v1/exchangerate/BTC?apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testGetAllExchangeRates() throws IOException {
        assertEquals(test_get_all_exchange_rates(rm, "BTC"), true);
    }

    /**
     * https://rest.coinapi.io/v1/ohlcv/periods?apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testOhlcvListAllPeriods() throws IOException {
        assertEquals(test_ohlcv_list_all_periods(rm), true);
    }

    /**
     * https://rest.coinapi.io/v1/ohlcv/BITSTAMP_SPOT_BTC_USD/latest?period_id=1MIN&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testOhlcvGetLatestTimeseries() throws IOException {
        assertEquals(test_ohlcv_get_latest_timeseries(rm, "BITSTAMP_SPOT_BTC_USD", Period_identifier._1MIN), true);
    }

    /**
     * https://rest.coinapi.io/v1/ohlcv/BITSTAMP_SPOT_BTC_USD/latest?period_id=1MIN&limit=5&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testOhlcvGetLatestTimeseries2() throws IOException {
        assertEquals(test_ohlcv_get_latest_timeseries(rm, "BITSTAMP_SPOT_BTC_USD", Period_identifier._1MIN, 5), true);
    }

    /**
     * https://rest.coinapi.io/v1/ohlcv/BITSTAMP_SPOT_BTC_USD/history?period_id=1MIN&time_start=2016-11-01T22:08:41Z&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testOhlcvGetHistoricalTimeseries() throws IOException {
        assertEquals(test_ohlcv_get_historical_timeseries(rm, "BITSTAMP_SPOT_BTC_USD", Period_identifier._1MIN, Instant.parse("2016-11-01T22:08:41Z")), true);
    }

    /**
     * https://rest.coinapi.io/v1/ohlcv/BITSTAMP_SPOT_BTC_USD/history?period_id=1MIN&time_start=2016-11-01T22:08:41Z&time_end=2016-11-02T10:24:07Z&limit=5&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testOhlcvGetHistoricalTimeseries2() throws IOException {
        assertEquals(test_ohlcv_get_historical_timeseries(rm, "BITSTAMP_SPOT_BTC_USD", Period_identifier._1MIN, Instant.parse("2016-11-01T22:08:41Z"), Instant.parse("2016-11-02T10:24:07Z"), 5), true);
    }

    /**
     * https://rest.coinapi.io/v1/ohlcv/BITSTAMP_SPOT_BTC_USD/history?period_id=1MIN&time_start=2016-11-01T22:08:41Z&time_end=2016-11-02T10:24:07Z&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testOhlcvGetHistoricalTimeseries3() throws IOException {
        assertEquals(test_ohlcv_get_historical_timeseries(rm, "BITSTAMP_SPOT_BTC_USD", Period_identifier._1MIN, Instant.parse("2016-11-01T22:08:41Z"), Instant.parse("2016-11-02T10:24:07Z")), true);
    }

    /**
     * https://rest.coinapi.io/v1/ohlcv/BITSTAMP_SPOT_BTC_USD/history?period_id=1MIN&time_start=2016-11-01T22:08:41Z&limit=5&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testOhlcvGetHistoricalTimeseries4() throws IOException {
        assertEquals(test_ohlcv_get_historical_timeseries(rm, "BITSTAMP_SPOT_BTC_USD", Period_identifier._1MIN, Instant.parse("2016-11-01T22:08:41Z"), 5), true);
    }

    /**
     * https://rest.coinapi.io/v1/trades/latest?apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testTradesGetLatestData() throws IOException {
        assertEquals(test_trades_get_latest_data(rm), true);
    }

    /**
     * https://rest.coinapi.io/v1/trades/latest?limit=5&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testTradesGetLatestData2() throws IOException {
        assertEquals(test_trades_get_latest_data(rm, 5), true);
    }

    /**
     * https://rest.coinapi.io/v1/trades/BITSTAMP_SPOT_BTC_USD/latest?apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testTradesGetLatestData3() throws IOException {
        assertEquals(test_trades_get_latest_data(rm, "BITSTAMP_SPOT_BTC_USD"), true);
    }

    /**
     * https://rest.coinapi.io/v1/trades/BITSTAMP_SPOT_BTC_USD/latest?limit=5&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testTradesGetLatestData4() throws IOException {
        assertEquals(test_trades_get_latest_data(rm, "BITSTAMP_SPOT_BTC_USD", 5), true);
    }

    /**
     * https://rest.coinapi.io/v1/trades/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testTradesGetHistoricalData() throws IOException {
        assertEquals(test_trades_get_historical_data(rm, "BITSTAMP_SPOT_BTC_USD", Instant.parse("2016-11-01T22:08:41Z")), true);
    }

    /**
     * https://rest.coinapi.io/v1/trades/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&limit=5&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testTradesGetHistoricalData2() throws IOException {
        assertEquals(test_trades_get_historical_data(rm, "BITSTAMP_SPOT_BTC_USD", Instant.parse("2016-11-01T22:08:41Z"), 5), true);
    }

    /**
     * https://rest.coinapi.io/v1/trades/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&time_end=2016-11-02T10:24:07Z&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testTradesGetHistoricalData3() throws IOException {
        assertEquals(test_trades_get_historical_data(rm, "BITSTAMP_SPOT_BTC_USD", Instant.parse("2016-11-01T22:08:41Z"), Instant.parse("2016-11-02T10:24:07Z")), true);
    }

    /**
     * https://rest.coinapi.io/v1/trades/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&time_end=2016-11-02T10:24:07Z&limit=5&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testTradesGetHistoricalData4() throws IOException {
        assertEquals(test_trades_get_historical_data(rm, "BITSTAMP_SPOT_BTC_USD", Instant.parse("2016-11-01T22:08:41Z"), Instant.parse("2016-11-02T10:24:07Z"), 5), true);
    }

    /**
     * https://rest.coinapi.io/v1/quotes/current?apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testQuotesGetForAllSymbols() throws IOException {
        assertEquals(test_quotes_get_for_all_symbols(rm), true);
    }

    /**
     * https://rest.coinapi.io/v1/quotes/BITSTAMP_SPOT_BTC_USD/current?apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testQuotesGetForSymbol() throws IOException {
        assertEquals(test_quotes_get_for_symbol(rm, "BITSTAMP_SPOT_BTC_USD"), true);
    }

    /**
     * https://rest.coinapi.io/v1/quotes/latest?apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testQuotesGetLatestData() throws IOException {
        assertEquals(test_quotes_get_latest_data(rm), true);
    }

    /**
     * https://rest.coinapi.io/v1/quotes/latest?limit=5&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testQuotesGetLatestData2() throws IOException {
        assertEquals(test_quotes_get_latest_data(rm, 5), true);
    }

    /**
     * https://rest.coinapi.io/v1/quotes/BITSTAMP_SPOT_BTC_USD/latest?apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testQuotesGetLatestData3() throws IOException {
        assertEquals(test_quotes_get_latest_data(rm, "BITSTAMP_SPOT_BTC_USD"), true);
    }

    /**
     * https://rest.coinapi.io/v1/quotes/BITSTAMP_SPOT_BTC_USD/latest?limit=5&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testQuotesGetLatestData4() throws IOException {
        assertEquals(test_quotes_get_latest_data(rm, "BITSTAMP_SPOT_BTC_USD", 5), true);
    }

    /**
     * https://rest.coinapi.io/v1/quotes/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testQuotesGetHistoricalData() throws IOException {
        assertEquals(test_quotes_get_historical_data(rm, "BITSTAMP_SPOT_BTC_USD", Instant.parse("2016-11-01T22:08:41Z")), true);
    }

    /**
     * https://rest.coinapi.io/v1/quotes/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&limit=5&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testQuotesGetHistoricalData2() throws IOException {
        assertEquals(test_quotes_get_historical_data(rm, "BITSTAMP_SPOT_BTC_USD", Instant.parse("2016-11-01T22:08:41Z"), 5), true);
    }

    /**
     * https://rest.coinapi.io/v1/quotes/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&time_end=2016-11-02T10:24:07Z&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testQuotesGetHistoricalData3() throws IOException {
        assertEquals(test_quotes_get_historical_data(rm, "BITSTAMP_SPOT_BTC_USD", Instant.parse("2016-11-01T22:08:41Z"), Instant.parse("2016-11-02T10:24:07Z")), true);
    }

    /**
     * https://rest.coinapi.io/v1/quotes/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&time_end=2016-11-02T10:24:07Z&limit=5&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testQuotesGetHistoricalData4() throws IOException {
        assertEquals(test_quotes_get_historical_data(rm, "BITSTAMP_SPOT_BTC_USD", Instant.parse("2016-11-01T22:08:41Z"), Instant.parse("2016-11-02T10:24:07Z"), 5), true);
    }

    /**
     * https://rest.coinapi.io/v1/orderbooks/BITSTAMP_SPOT_BTC_USD/current?apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testOrderbooksGetForSymbol() throws IOException {
        assertEquals(test_orderbooks_get_for_symbol(rm, "BITSTAMP_SPOT_BTC_USD"), true);
    }

    /**
     * https://rest.coinapi.io/v1/orderbooks/BITSTAMP_SPOT_BTC_USD/latest?apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testOrderbooksGetLatestData() throws IOException {
        assertEquals(test_orderbooks_get_latest_data(rm, "BITSTAMP_SPOT_BTC_USD"), true);
    }

    /**
     * https://rest.coinapi.io/v1/orderbooks/BITSTAMP_SPOT_BTC_USD/latest?limit=5&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testOrderbooksGetLatestData2() throws IOException {
        assertEquals(test_orderbooks_get_latest_data(rm, "BITSTAMP_SPOT_BTC_USD", 5), true);
    }

    /**
     * https://rest.coinapi.io/v1/orderbooks/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testOrderbooksGetHistoricalData() throws IOException {
        assertEquals(test_orderbooks_get_historical_data(rm, "BITSTAMP_SPOT_BTC_USD", Instant.parse("2016-11-01T22:08:41Z")), true);
    }

    /**
     * https://rest.coinapi.io/v1/orderbooks/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&limit=5&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testOrderbooksGetHistoricalData2() throws IOException {
        assertEquals(test_orderbooks_get_historical_data(rm, "BITSTAMP_SPOT_BTC_USD", Instant.parse("2016-11-01T22:08:41Z"), 5), true);
    }

    /**
     * https://rest.coinapi.io/v1/orderbooks/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&time_end=2016-11-02T10:24:07Z&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testOrderbooksGetHistoricalData3() throws IOException {
        assertEquals(test_orderbooks_get_historical_data(rm, "BITSTAMP_SPOT_BTC_USD", Instant.parse("2016-11-01T22:08:41Z"), Instant.parse("2016-11-02T10:24:07Z")), true);
    }

    /**
     * https://rest.coinapi.io/v1/orderbooks/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&time_end=2016-11-02T10:24:07Z&limit=5&apikey=YOUR_API_KEY_HERE
     */
    @Test
    public void testOrderbooksGetHistoricalData4() throws IOException {
        assertEquals(test_orderbooks_get_historical_data(rm, "BITSTAMP_SPOT_BTC_USD", Instant.parse("2016-11-01T22:08:41Z"), Instant.parse("2016-11-02T10:24:07Z"), 5), true);
    }

    // -------------------- test_XXX methods --------------------

    private boolean test_metadata_list_all_exchanges(REST_methods rm) throws IOException {
        System.out.println();
        System.out.println("list_all_exchanges() started");
        Exchange[] result = rm.list_all_exchanges();
        for (Exchange e : result) {
            System.out.println(exchange_to_string(e));
        }
        System.out.println("list_all_exchanges() finished");
        return true;
    }


    private boolean test_metadata_list_all_assets(REST_methods rm) throws IOException {
        System.out.println();
        System.out.println("list_all_assets() started");
        Asset[] result = rm.list_all_assets();
        for (Asset a : result) {
            System.out.println(asset_to_string(a));
        }
        System.out.println("list_all_assets() finished");
        return true;
    }

    private boolean test_metadata_list_all_symbols(REST_methods rm) throws IOException {
        System.out.println();
        System.out.println("list_all_symbols() started");
        Symbol[] result = rm.list_all_symbols();
        for (Symbol s : result) {
            System.out.println(symbol_to_string(s));
        }
        System.out.println("list_all_symbols() finished");
        return true;
    }

    private boolean test_get_exchange_rate(REST_methods rm, String asset_id_base, String asset_id_quote) throws IOException {
        System.out.println();
        System.out.println("get_exchange_rate(asset_id_base, asset_id_quote) started");
        Exchange_rate result = rm.get_exchange_rate(asset_id_base, asset_id_quote);
        System.out.println(exchange_rate_to_string(result));
        System.out.println("get_exchange_rate(asset_id_base, asset_id_quote) finished");
        return true;
    }

    private boolean test_get_exchange_rate(REST_methods rm, String asset_id_base, String asset_id_quote, Instant time) throws IOException {
        System.out.println();
        System.out.println("get_exchange_rate(asset_id_base, asset_id_quote, time) started");
        Exchange_rate result = rm.get_exchange_rate(asset_id_base, asset_id_quote, time);
        System.out.println(exchange_rate_to_string(result));
        System.out.println("get_exchange_rate(asset_id_base, asset_id_quote, time) finished");
        return true;
    }

    private boolean test_get_all_exchange_rates(REST_methods rm, String asset_id_base) throws IOException {
        System.out.println();
        System.out.println("get_all_exchange_rates(asset_id_base) started");
        Exchange_rate[] result = rm.get_all_exchange_rates(asset_id_base);
        for (Exchange_rate e : result) {
            System.out.println(exchange_rate_to_string(e));
        }
        System.out.println("get_all_exchange_rates(asset_id_base) finished");
        return true;
    }

    private boolean test_ohlcv_list_all_periods(REST_methods rm) throws IOException {
        System.out.println();
        System.out.println("ohlcv_list_all_periods() started");
        Period[] result = rm.ohlcv_list_all_periods();
        for (Period p : result) {
            System.out.println(period_to_string(p));
        }
        System.out.println("ohlcv_list_all_periods() finished");
        return true;
    }

    private boolean test_ohlcv_get_latest_timeseries(REST_methods rm, String symbol_id, Period_identifier period_id) throws IOException {
        System.out.println();
        System.out.println("ohlcv_get_latest_timeseries(symbol_id, period_id) started");
        Timedata[] result = rm.ohlcv_get_latest_timeseries(symbol_id, period_id);
        for (Timedata t : result) {
            System.out.println(timedata_to_string(t));
        }
        System.out.println("ohlcv_get_latest_timeseries(symbol_id, period_id) finished");
        return true;
    }

    private boolean test_ohlcv_get_latest_timeseries(REST_methods rm, String symbol_id, Period_identifier period_id, int limit) throws IOException {
        System.out.println();
        System.out.println("ohlcv_get_latest_timeseries(symbol_id, period_id, limit) started");
        Timedata[] result = rm.ohlcv_get_latest_timeseries(symbol_id, period_id, limit);
        for (Timedata t : result) {
            System.out.println(timedata_to_string(t));
        }
        System.out.println("ohlcv_get_latest_timeseries(symbol_id, period_id, limit) finished");
        return true;
    }

    private boolean test_ohlcv_get_historical_timeseries(REST_methods rm, String symbol_id, Period_identifier period_id, Instant time_start) throws IOException {
        System.out.println();
        System.out.println("ohlcv_get_historical_timeseries(symbol_id, period_id, time_start) started");
        Timedata[] result = rm.ohlcv_get_historical_timeseries(symbol_id, period_id, time_start);
        for (Timedata t : result) {
            System.out.println(timedata_to_string(t));
        }
        System.out.println("ohlcv_get_historical_timeseries(symbol_id, period_id, time_start) finished");
        return true;
    }

    private boolean test_ohlcv_get_historical_timeseries(REST_methods rm, String symbol_id, Period_identifier period_id, Instant time_start, Instant time_end) throws IOException {
        System.out.println();
        System.out.println("ohlcv_get_historical_timeseries(symbol_id, period_id, time_start, time_end) started");
        Timedata[] result = rm.ohlcv_get_historical_timeseries(symbol_id, period_id, time_start, time_end);
        for (Timedata t : result) {
            System.out.println(timedata_to_string(t));
        }
        System.out.println("ohlcv_get_historical_timeseries(symbol_id, period_id, time_start, time_end) finished");
        return true;
    }

    private boolean test_ohlcv_get_historical_timeseries(REST_methods rm, String symbol_id, Period_identifier period_id, Instant time_start, int limit) throws IOException {
        System.out.println();
        System.out.println("ohlcv_get_historical_timeseries(symbol_id, period_id, time_start, limit) started");
        Timedata[] result = rm.ohlcv_get_historical_timeseries(symbol_id, period_id, time_start, limit);
        for (Timedata t : result) {
            System.out.println(timedata_to_string(t));
        }
        System.out.println("ohlcv_get_historical_timeseries(symbol_id, period_id, time_start, limit) finished");
        return true;
    }

    private boolean test_ohlcv_get_historical_timeseries(REST_methods rm, String symbol_id, Period_identifier period_id, Instant time_start, Instant time_end, int limit) throws IOException {
        System.out.println();
        System.out.println("ohlcv_get_historical_timeseries(symbol_id, period_id, time_start, time_end, limit) started");
        Timedata[] result = rm.ohlcv_get_historical_timeseries(symbol_id, period_id, time_start, time_end, limit);
        for (Timedata t : result) {
            System.out.println(timedata_to_string(t));
        }
        System.out.println("ohlcv_get_historical_timeseries(symbol_id, period_id, time_start, time_end, limit) finished");
        return true;
    }

    private boolean test_trades_get_latest_data(REST_methods rm) throws IOException {
        System.out.println();
        System.out.println("trades_get_latest_data() started");
        Trade[] result = rm.trades_get_latest_data();
        for (Trade t : result) {
            System.out.println(trade_to_string(t));
        }
        System.out.println("trades_get_latest_data() finished");
        return true;
    }

    private boolean test_trades_get_latest_data(REST_methods rm, int limit) throws IOException {
        System.out.println();
        System.out.println("trades_get_latest_data(limit) started");
        Trade[] result = rm.trades_get_latest_data(limit);
        for (Trade t : result) {
            System.out.println(trade_to_string(t));
        }
        System.out.println("trades_get_latest_data(limit) finished");
        return true;
    }

    private boolean test_trades_get_latest_data(REST_methods rm, String symbol_id) throws IOException {
        System.out.println();
        System.out.println("trades_get_latest_data(symbol_id) started");
        Trade[] result = rm.trades_get_latest_data(symbol_id);
        for (Trade t : result) {
            System.out.println(trade_to_string(t));
        }
        System.out.println("trades_get_latest_data(symbol_id) finished");
        return true;
    }

    private boolean test_trades_get_latest_data(REST_methods rm, String symbol_id, int limit) throws IOException {
        System.out.println();
        System.out.println("trades_get_latest_data(symbol_id, limit) started");
        Trade[] result = rm.trades_get_latest_data(symbol_id, limit);
        for (Trade t : result) {
            System.out.println(trade_to_string(t));
        }
        System.out.println("trades_get_latest_data(symbol_id, limit) finished");
        return true;
    }

    private boolean test_trades_get_historical_data(REST_methods rm, String symbol_id, Instant start_time) throws IOException {
        System.out.println();
        System.out.println("trades_get_historical_data(symbol_id, start_time) started");
        Trade[] result = rm.trades_get_historical_data(symbol_id, start_time);
        for (Trade t : result) {
            System.out.println(trade_to_string(t));
        }
        System.out.println("trades_get_historical_data(symbol_id, start_time) finished");
        return true;
    }

    private boolean test_trades_get_historical_data(REST_methods rm, String symbol_id, Instant start_time, int limit) throws IOException {
        System.out.println();
        System.out.println("trades_get_historical_data(symbol_id, start_time, limit) started");
        Trade[] result = rm.trades_get_historical_data(symbol_id, start_time, limit);
        for (Trade t : result) {
            System.out.println(trade_to_string(t));
        }
        System.out.println("trades_get_historical_data(symbol_id, start_time, limit) finished");
        return true;
    }

    private boolean test_trades_get_historical_data(REST_methods rm, String symbol_id, Instant start_time, Instant end_time) throws IOException {
        System.out.println();
        System.out.println("trades_get_historical_data(symbol_id, start_time, end_time) started");
        Trade[] result = rm.trades_get_historical_data(symbol_id, start_time, end_time);
        for (Trade t : result) {
            System.out.println(trade_to_string(t));
        }
        System.out.println("trades_get_historical_data(symbol_id, start_time, end_time) finished");
        return true;
    }

    private boolean test_trades_get_historical_data(REST_methods rm, String symbol_id, Instant start_time, Instant end_time, int limit) throws IOException {
        System.out.println();
        System.out.println("trades_get_historical_data(symbol_id, start_time, end_time, limit) started");
        Trade[] result = rm.trades_get_historical_data(symbol_id, start_time, end_time, limit);
        for (Trade t : result) {
            System.out.println(trade_to_string(t));
        }
        System.out.println("trades_get_historical_data(symbol_id, start_time, end_time, limit) finished");
        return true;
    }

    private boolean test_quotes_get_for_all_symbols(REST_methods rm) throws IOException {
        System.out.println();
        System.out.println("quotes_get_for_all_symbols() started");
        Quote_with_trade[] result = rm.quotes_get_for_all_symbols();
        for (Quote_with_trade t : result) {
            System.out.println(quote_with_trade_to_string(t));
        }
        System.out.println("quotes_get_for_all_symbols() finished");
        return true;
    }

    private boolean test_quotes_get_for_symbol(REST_methods rm, String symbol_id) throws IOException {
        System.out.println();
        System.out.println("quotes_get_for_symbol(symbol_id) started");
        Quote_with_trade result = rm.quotes_get_for_symbol(symbol_id);
        System.out.println(quote_with_trade_to_string(result));
        System.out.println("quotes_get_for_symbol(symbol_id) finished");
        return true;
    }

    private boolean test_quotes_get_latest_data(REST_methods rm) throws IOException {
        System.out.println();
        System.out.println("quotes_get_latest_data() started");
        Quote[] result = rm.quotes_get_latest_data();
        for (Quote t : result) {
            System.out.println(quote_to_string(t));
        }
        System.out.println("quotes_get_latest_data() finished");
        return true;
    }

    private boolean test_quotes_get_latest_data(REST_methods rm, int limit) throws IOException {
        System.out.println();
        System.out.println("quotes_get_latest_data(limit) started");
        Quote[] result = rm.quotes_get_latest_data(limit);
        for (Quote t : result) {
            System.out.println(quote_to_string(t));
        }
        System.out.println("quotes_get_latest_data(limit) finished");
        return true;
    }

    private boolean test_quotes_get_latest_data(REST_methods rm, String symbol_id) throws IOException {
        System.out.println();
        System.out.println("quotes_get_latest_data(symbol_id) started");
        Quote[] result = rm.quotes_get_latest_data(symbol_id);
        for (Quote t : result) {
            System.out.println(quote_to_string(t));
        }
        System.out.println("quotes_get_latest_data(symbol_id) finished");
        return true;
    }

    private boolean test_quotes_get_latest_data(REST_methods rm, String symbol_id, int limit) throws IOException {
        System.out.println();
        System.out.println("quotes_get_latest_data(symbol_id, limit) started");
        Quote[] result = rm.quotes_get_latest_data(symbol_id, limit);
        for (Quote t : result) {
            System.out.println(quote_to_string(t));
        }
        System.out.println("quotes_get_latest_data(symbol_id, limit) finished");
        return true;
    }

    private boolean test_quotes_get_historical_data(REST_methods rm, String symbol_id, Instant time_start) throws IOException {
        System.out.println();
        System.out.println("quotes_get_historical_data(symbol_id, time_start) started");
        Quote[] result = rm.quotes_get_historical_data(symbol_id, time_start);
        for (Quote t : result) {
            System.out.println(quote_to_string(t));
        }
        System.out.println("quotes_get_historical_data(symbol_id, time_start) finished");
        return true;
    }

    private boolean test_quotes_get_historical_data(REST_methods rm, String symbol_id, Instant time_start, int limit) throws IOException {
        System.out.println();
        System.out.println("quotes_get_historical_data(symbol_id, time_start, limit) started");
        Quote[] result = rm.quotes_get_historical_data(symbol_id, time_start, limit);
        for (Quote t : result) {
            System.out.println(quote_to_string(t));
        }
        System.out.println("quotes_get_historical_data(symbol_id, time_start, limit) finished");
        return true;
    }

    private boolean test_quotes_get_historical_data(REST_methods rm, String symbol_id, Instant time_start, Instant time_end) throws IOException {
        System.out.println();
        System.out.println("quotes_get_historical_data(symbol_id, time_start, time_end) started");
        Quote[] result = rm.quotes_get_historical_data(symbol_id, time_start, time_end);
        for (Quote t : result) {
            System.out.println(quote_to_string(t));
        }
        System.out.println("quotes_get_historical_data(symbol_id, time_start, time_end) finished");
        return true;
    }

    private boolean test_quotes_get_historical_data(REST_methods rm, String symbol_id, Instant time_start, Instant time_end, int limit) throws IOException {
        System.out.println();
        System.out.println("quotes_get_historical_data(symbol_id, time_start, time_end, limit) started");
        Quote[] result = rm.quotes_get_historical_data(symbol_id, time_start, time_end, limit);
        for (Quote t : result) {
            System.out.println(quote_to_string(t));
        }
        System.out.println("quotes_get_historical_data(symbol_id, time_start, time_end, limit) finished");
        return true;
    }

    private boolean test_orderbooks_get_for_all_symbols(REST_methods rm) throws IOException {
        System.out.println();
        System.out.println("orderbooks_get_for_all_symbols() started");
        Orderbook[] result = rm.orderbooks_get_for_all_symbols();
        for (Orderbook o : result) {
            System.out.println(orderbook_to_string(o));
        }
        System.out.println("orderbooks_get_for_all_symbols() finished");
        return true;
    }

    private boolean test_orderbooks_get_for_symbol(REST_methods rm, String symbol_id) throws IOException {
        System.out.println();
        System.out.println("orderbooks_get_for_symbol(symbol_id) started");
        Orderbook result = rm.orderbooks_get_for_symbol(symbol_id);
        System.out.println(orderbook_to_string(result));
        System.out.println("orderbooks_get_for_symbol(symbol_id) finished");
        return true;
    }

    private boolean test_orderbooks_get_latest_data(REST_methods rm, String symbol_id) throws IOException {
        System.out.println();
        System.out.println("orderbooks_get_latest_data(symbol_id) started");
        Orderbook[] result = rm.orderbooks_get_latest_data(symbol_id);
        for (Orderbook o : result) {
            System.out.println(orderbook_to_string(o));
        }
        System.out.println("orderbooks_get_latest_data(symbol_id) finished");
        return true;
    }

    private boolean test_orderbooks_get_latest_data(REST_methods rm, String symbol_id, int limit) throws IOException {
        System.out.println();
        System.out.println("orderbooks_get_latest_data(symbol_id, limit) started");
        Orderbook[] result = rm.orderbooks_get_latest_data(symbol_id, limit);
        for (Orderbook o : result) {
            System.out.println(orderbook_to_string(o));
        }
        System.out.println("orderbooks_get_latest_data(symbol_id, limit) finished");
        return true;
    }

    private boolean test_orderbooks_get_historical_data(REST_methods rm, String symbol_id, Instant time_start) throws IOException {
        System.out.println();
        System.out.println("orderbooks_get_historical_data(symbol_id, time_start) started");
        Orderbook[] result = rm.orderbooks_get_historical_data(symbol_id, time_start);
        for (Orderbook o : result) {
            System.out.println(orderbook_to_string(o));
        }
        System.out.println("orderbooks_get_historical_data(symbol_id, time_start) finished");
        return true;
    }

    private boolean test_orderbooks_get_historical_data(REST_methods rm, String symbol_id, Instant time_start, int limit) throws IOException {
        System.out.println();
        System.out.println("orderbooks_get_historical_data(symbol_id, time_start, limit) started");
        Orderbook[] result = rm.orderbooks_get_historical_data(symbol_id, time_start, limit);
        for (Orderbook o : result) {
            System.out.println(orderbook_to_string(o));
        }
        System.out.println("orderbooks_get_historical_data(symbol_id, time_start, limit) finished");
        return true;
    }

    private boolean test_orderbooks_get_historical_data(REST_methods rm, String symbol_id, Instant time_start, Instant time_end) throws IOException {
        System.out.println();
        System.out.println("orderbooks_get_historical_data(symbol_id, time_start, time_end) started");
        Orderbook[] result = rm.orderbooks_get_historical_data(symbol_id, time_start, time_end);
        for (Orderbook o : result) {
            System.out.println(orderbook_to_string(o));
        }
        System.out.println("orderbooks_get_historical_data(symbol_id, time_start, time_end) finished");
        return true;
    }

    private boolean test_orderbooks_get_historical_data(REST_methods rm, String symbol_id, Instant time_start, Instant time_end, int limit) throws IOException {
        System.out.println();
        System.out.println("orderbooks_get_historical_data(symbol_id, time_start, time_end, limit) started");
        Orderbook[] result = rm.orderbooks_get_historical_data(symbol_id, time_start, time_end, limit);
        for (Orderbook o : result) {
            System.out.println(orderbook_to_string(o));
        }
        System.out.println("orderbooks_get_historical_data(symbol_id, time_start, time_end, limit) finished");
        return true;
    }

    // -------------------- XXX_to_string methods --------------------

    // +++ all of these methods should be put into toString methods of the respective classes?

    private String asset_to_string(Asset a) {
        if (a.get_name() != null) {
            return String.format("Asset (name = %s, id = %s, cryptocurrency = %s)", a.get_name(), a.get_asset_id(), a.is_type_crypto() ? "yes" : "no");
        } else {
            return String.format("Asset (null name, id = %s, cryptocurrency = %s)", a.get_asset_id(), a.is_type_crypto() ? "yes" : "no");
        }
    }

    private String exchange_to_string(Exchange e) {
        return String.format("Exchange (name = %s, id = %s, website = %s)", e.get_name(), e.get_exchange_id(), e.get_website());
    }

    private String symbol_to_string(Symbol s) {
        String result = "";
        String additional = "";

        switch (s.get_symbol_type()) {
            case SymbolType.SPOT:
                result += "SPOT symbol";
                break;
            case SymbolType.FUTURES:
                result += "FUTURES symbol ";
                additional += "\n    Delivery date: " + s.get_future_delivery_time().toString();
                break;
            case SymbolType.OPTION:
                result += "OPTION symbol ";
                additional += "\n    Type of option: " + (s.get_is_option_type_is_call() ? "Call" : "Put") + ", ";
                additional += "Strike price: " + s.get_option_strike_price() + ", ";
                additional += "Conract Unit: " + s.get_option_contract_unit();

                if (s.get_option_exercise_style().equals(OptionExerciseStyle.EUROPEAN))
                    additional += "\n    EUROPEAN exercise style";
                if (s.get_option_exercise_style().equals(OptionExerciseStyle.AMERICAN))
                    additional += "\n    AMERICAN exercise style";
                additional += "\n    Expiration time: " + s.get_option_expiration_time();
            case SymbolType.INDEX:
                result += "INDEX symbol";
                break;
            case SymbolType.PERPETUAL:
                result += "PERPETUAL symbol";
                break;
            default:
                result += "Invalid symbol ";
                break;
        }


        result += "(symbol_id = " + s.get_symbol_id();
        result += ", exchange_id = " + s.get_exchange_id();
        result += ", " + s.get_asset_id_base() + "/" + s.get_asset_id_quote() + ")";

        return result + additional;
    }

    private String exchange_rate_to_string(Exchange_rate e) {
        return String.format("Exchange_rate for %s/%s at %s is %.7f", e.get_asset_id_base(), e.get_asset_id_quote(), e.get_time().toString(), e.get_rate());
    }

    private String period_to_string(Period p) {
        return String.format("Period (seconds = %d, months = %d, unit count = %d, unit_name = %s), display name: %s",
                p.get_length_seconds(), p.get_length_months(), p.get_unit_count(), p.get_unit_name(), p.get_display_name());
    }

    private String timedata_to_string(Timedata t) {
        return String.format("Timedata (start: %s, end: %s, open: %s, close: %s)\n    Price (open: %.2f, low: %.2f, high: %.2f: close: %.2f)\n    common.Trade (Volume: %.7f, Count: %d)",
                t.get_time_period_start().toString(), t.get_time_period_end().toString(), t.get_time_open().toString(), t.get_time_close().toString(),
                t.get_price_open(), t.get_price_low(), t.get_price_high(), t.get_price_close(), t.get_volume_traded(), t.get_trades_count());
    }

    private String trade_to_string(Trade t) {
        return String.format("Trade (symbol = %s, exchange time = %s, CoinAPI time: %s)\n    UUID = %s, price = %.2f, size = %.6f, taker side: %s",
                t.get_symbol_id(), t.get_time_exchange(), t.get_time_coinapi(), t.get_uuid(), t.get_price(), t.get_size(), t.get_taker_side().toString());
    }

    private String quote_with_trade_to_string(Quote_with_trade q) {
        if (q.has_last_trade()) {
            return String.format("Quote_with_trade (symbol = %s, exchange time = %s, CoinAPI time: %s)\n    ask (Price = %.2f, Size = %.6f)\n    bid (Price = %.2f, Size = %.6f)\n    Last %s",
                    q.get_symbol_id(), q.get_time_exchange(), q.get_time_coinapi(), q.get_ask_price(), q.get_ask_size(), q.get_bid_price(), q.get_bid_size(),
                    trade_to_string(q.get_last_trade()));
        } else {
            return String.format("Quote_with_trade (symbol = %s, exchange time = %s, CoinAPI time: %s)\n    ask (Price = %.2f, Size = %.6f)\n    bid (Price = %.2f, Size = %.6f)",
                    q.get_symbol_id(), q.get_time_exchange(), q.get_time_coinapi(), q.get_ask_price(), q.get_ask_size(), q.get_bid_price(), q.get_bid_size());
        }
    }

    private String quote_to_string(Quote q) {
        return String.format("Quote (symbol = %s, exchange time = %s, CoinAPI time: %s)\n    ask (Price = %.2f, Size = %.6f)\n    bid (Price = %.2f, Size = %.6f)",
                q.get_symbol_id(), q.get_time_exchange(), q.get_time_coinapi(), q.get_ask_price(), q.get_ask_size(), q.get_bid_price(), q.get_bid_size());
    }

    private String asks_to_string(Orderbook o) {
        String result = "";
        for (int i = 0; i < o.get_asks_count(); i++) {
            result += String.format("\n    ask (price = %.2f, size = %.6f)", o.get_ask(i).get_price(), o.get_ask(i).get_size());
        }
        return result;
    }

    private String bids_to_string(Orderbook o) {
        String result = "";
        for (int i = 0; i < o.get_bids_count(); i++) {
            result += String.format("\n    bid (price = %.2f, size = %.6f)", o.get_bid(i).get_price(), o.get_bid(i).get_size());
        }
        return result;
    }

    private String orderbook_to_string(Orderbook o) {
        return String.format("Orderbook (symbol = %s, exchange time = %s, CoinAPI time: %s)\n    Asks:%s\n    Bids:%s",
                o.get_symbol_id(), o.get_time_exchange(), o.get_time_coinapi(), asks_to_string(o), bids_to_string(o)
        );
    }
}
