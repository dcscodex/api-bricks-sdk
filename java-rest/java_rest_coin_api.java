import okhttp3.*;
import okio.*;
import java.io.*;
import java.util.*;
import org.json.*;
import java.sql.Timestamp;

public class java_rest_coin_api {

    public class exception extends Exception {
        int code;

        public exception(int code, String message) {
            super(message);
            this.code = code;
        }

        public int get_code() {
            return code;
        }
    }

    public static class asset {
        private String asset_id;                     // Our asset identifier. Superset of the ISO 4217 currency codes standard
        private String name;                         // Display name of the asset
        private boolean type_is_crypto;              // true for cryptocurrency assets, false otherwise

        public asset(String asset_id, String name, boolean type_is_crypto) {
            this.asset_id = asset_id;
            this.name = name;
            this.type_is_crypto = type_is_crypto;
        }

        public String get_asset_id() {
            return asset_id;
        }

        public String get_name() {
            return name;
        }

        public boolean is_type_crypto() {
            return type_is_crypto;
        }
    }

    public static class exchange {
	private String exchange_id;                  // Our exchange identifier
	private String name;                         // Display name of the exchange
	private String website;                      // Exchange website address			

        public exchange(String exchange_id, String name, String website) {
            this.exchange_id = exchange_id;
            this.name = name;
            this.website = website;
        }

        public String get_exchange_id() {
            return exchange_id;
        }

        public String get_name() {
            return name;
        }

        public String get_website() {
            return website;
        }
    }

    public enum SYMBOL_TYPE {
        INVALID,                                     // Reserverd value for invalid data
        SPOT,                                        // FX Spot. Agreement to exchange one asset for another one (e.g. Buy BTC for USD)
        FUTURES,                                     // Futures contract. FX Spot derivative contract where traders agree to trade fx spot at predetermined future time
        OPTION                                       // Option contract. FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date
    }

    public enum OPTION_EXERCISE_STYLE {
        INVALID,
        AMERICAN,
        EUROPEAN
    }

    public static class symbol {
        private String symbol_id;                    // Our symbol identifier, see table below for format description.
	private String exchange_id;                  // Our identifier of the exchange where symbol is traded.
	private SYMBOL_TYPE symbol_type;             // Type of symbol (possible values are: SPOT, FUTURES or OPTION)
        private String asset_id_base;                // FX Spot base asset identifier, for derivatives it's contact underlying (e.g. BTC for BTC/USD)
        private String asset_id_quote;               // FX Spot quote asset identifier, for derivatives it's contract underlying (e.g. USD for BTC/USD)
        private boolean option_type_is_call;         // Boolean value representing option type. true for Call options, false for Put options
        private double option_strike_price;          // Price at which option contract can be exercised
        private double option_contract_unit;         // Base asset amount of underlying spot which single option represents
        private OPTION_EXERCISE_STYLE option_exercise_style; // Option exercise style. Can be EUROPEAN or AMERICAN
        private Timestamp option_expiration_time;    //	Option contract expiration time in ISO 8601
        private Timestamp future_delivery_time;      // Predetermined time of futures contract delivery date in ISO 8601

        public symbol(String symbol_id, String exchange_id, SYMBOL_TYPE symbol_type, String asset_id_base, String asset_id_quote,
            boolean option_type_is_call, double option_strike_price, double option_contract_unit, OPTION_EXERCISE_STYLE option_exercise_style, 
            Timestamp option_expiration_time, Timestamp future_delivery_time) {

            this.symbol_id = symbol_id;
            this.exchange_id = exchange_id;
            this.symbol_type = symbol_type;
            this.asset_id_base = asset_id_base;
            this.asset_id_quote = asset_id_quote;
            this.option_type_is_call = option_type_is_call;
            this.option_strike_price = option_strike_price;
            this.option_contract_unit = option_contract_unit;
            this.option_exercise_style = option_exercise_style;
            this.option_expiration_time = option_expiration_time;
            this.future_delivery_time = future_delivery_time;
        }

        public symbol(String symbol_id, String exchange_id, SYMBOL_TYPE symbol_type, String asset_id_base, String asset_id_quote) {
            this.symbol_id = symbol_id;
            this.exchange_id = exchange_id;
            this.symbol_type = symbol_type;
            this.asset_id_base = asset_id_base;
            this.asset_id_quote = asset_id_quote;
            this.option_type_is_call = false;
            this.option_strike_price = 0.0;
            this.option_contract_unit = 0.0;
            this.option_exercise_style = OPTION_EXERCISE_STYLE.INVALID;
            this.option_expiration_time = null;
            this.future_delivery_time = null;
        }

        public String get_symbol_id() {
            return symbol_id;
        }

	public String get_exchange_id() {
            return exchange_id;
        }

	public SYMBOL_TYPE get_symbol_type() {
            return symbol_type;
        }

        public String get_asset_id_base() {
            return asset_id_base;
        }

        public String get_asset_id_quote() {
            return asset_id_quote;
        }

        public boolean get_option_type_is_call() {
            return option_type_is_call;
        }

        public double get_option_strike_price() {
            return option_strike_price;
        }

        public double get_option_contract_unit() {
            return option_contract_unit;
        }

        public OPTION_EXERCISE_STYLE get_option_exercise_style() {
            return option_exercise_style;
        }

        public Timestamp get_option_expiration_time() {
             return option_expiration_time;
        }

        public Timestamp get_future_delivery_time() {
            return future_delivery_time;
        }
    }

    public static class exchange_rate {
        private Timestamp time;                      // Time in ISO 8601 of the market data used to calculate exchange rate
        private String asset_id_base;                // Exchange rate base asset identifier
        private String asset_id_quote;               // Exchange rate quote asset identifier
        private double rate;                         // Exchange rate between assets

        public exchange_rate(Timestamp time, String asset_id_base, String asset_id_quote, double rate) {
            this.time = time;
            this.asset_id_base = asset_id_base;
            this.asset_id_quote = asset_id_quote;
            this.rate = rate;
        }

	public Timestamp get_time() {
            return time;
        }

        public String get_asset_id_base() {
            return asset_id_base;
        }

        public String get_asset_id_quote() {
            return asset_id_quote;
        }

        public double get_rate() {
            return rate;
        }
    }

    enum PERIOD_IDENTIFIER {
        INVALID,
        _1SEC, 
        _2SEC,
        _3SEC,
        _4SEC,
        _5SEC,
        _6SEC,
        _10SEC,
        _15SEC,
        _20SEC,
        _30SEC,
        _1MIN,
        _2MIN,
        _3MIN,
        _4MIN,
        _5MIN,
        _6MIN,
        _10MIN,
        _15MIN,
        _20MIN,
        _30MIN,
        _1HRS,
        _2HRS,
        _3HRS,
        _4HRS,
        _6HRS,
        _8HRS,
        _12HRS,
        _1DAY,
        _2DAY,
        _3DAY,
        _5DAY,
        _7DAY,
        _10DAY,
        _1MTH,
        _2MTH,
        _3MTH,
        _4MTH,
        _6MTH,
        _1YRS,
        _2YRS,
        _3YRS,
        _4YRS,
        _5YRS
    }

    public static class period {
        private PERIOD_IDENTIFIER period_id;         // Period identifier, used in other API calls
        private int length_seconds;                  // Seconds part of period length
        private int length_months;                   // Months part of period length
        private int unit_count;                      // Period length in units
        private String unit_name;                    // Type of unit (second/minute/hour/day/month/year)
        private String display_name;                 // Display name of period length

        public period(PERIOD_IDENTIFIER period_id, int length_seconds, int length_months, int unit_count, 
            String unit_name, String display_name) {
            this.period_id = period_id;
            this.length_seconds = length_seconds;
            this.length_months = length_months;
            this.unit_count = unit_count;
            this.unit_name = unit_name;
            this.display_name = display_name;
        }

        public PERIOD_IDENTIFIER get_period_id() {
            return period_id;
        }

        public int get_length_seconds() {
            return length_seconds;
        }

        public int get_length_months() {
            return length_months;
        }

        public int get_unit_count() {
            return unit_count;
        }

        public String get_unit_name() {
            return unit_name;
        }

        public String get_display_name() {
            return display_name;
        }
    }

    public static class timedata {
        private Timestamp time_period_start;         // Period starting time (range left inclusive)
        private Timestamp time_period_end;           // Period ending time (range right exclusive)
        private Timestamp time_open;                 // Time of first trade inside period range
        private Timestamp time_close;                // Time of last trade inside period range
	private double price_open;                   // First trade price inside period range
	private double price_high;                   // Highest traded price inside period range
	private double price_low;                    // Lowest traded price inside period range
	private double price_close;                  // Last trade price inside period range
	private double volume_traded;                // Cumulative base amount traded inside period range
	private int trades_count;                    // Amount of trades executed inside period range

        public timedata(Timestamp time_period_start, Timestamp time_period_end, Timestamp time_open, Timestamp time_close,
            double price_open, double price_high, double price_low, double price_close, double volume_traded, int trades_count) {
            this.time_period_start = time_period_start;
            this.time_period_end = time_period_end;
            this.time_open = time_open;
            this.time_close = time_close;
            this.price_open = price_open;
            this.price_high = price_high;
            this.price_low = price_low;
            this.price_close = price_close;
            this.volume_traded = volume_traded;
            this.trades_count = trades_count;
        }

        public Timestamp get_time_period_start() {
            return time_period_start;
        }

        public Timestamp get_time_period_end() {
            return time_period_end;
        }

        public Timestamp get_time_open() {
            return time_open;
        }

        public Timestamp get_time_close() {
            return time_close;
        }

	public double get_price_open() {
            return price_open;
        }

	public double get_price_high() {
            return price_high;
        }

	public double get_price_low() {
            return price_low;
        }

	public double get_price_close() {
            return price_close;
        }

	public double get_volume_traded() {
            return volume_traded;
        }

	public int get_trades_count() {
            return trades_count;
        }
    }

    private static PERIOD_IDENTIFIER period_identifier_from_string(String period_id) {
        if (period_id.equals("1SEC"))
            return PERIOD_IDENTIFIER._1SEC;
        if (period_id.equals("3SEC"))
            return PERIOD_IDENTIFIER._2SEC;
        if (period_id.equals("4SEC"))
            return PERIOD_IDENTIFIER._3SEC;
        if (period_id.equals("4SEC"))
            return PERIOD_IDENTIFIER._4SEC;
        if (period_id.equals("5SEC"))
            return PERIOD_IDENTIFIER._5SEC;
        if (period_id.equals("6SEC"))
            return PERIOD_IDENTIFIER._6SEC;
        if (period_id.equals("10SEC"))
            return PERIOD_IDENTIFIER._10SEC;
        if (period_id.equals("15SEC"))
            return PERIOD_IDENTIFIER._15SEC;
        if (period_id.equals("20SEC"))
            return PERIOD_IDENTIFIER._20SEC;
        if (period_id.equals("30SEC"))
            return PERIOD_IDENTIFIER._30SEC;
        if (period_id.equals("1MIN"))
            return PERIOD_IDENTIFIER._1MIN;
        if (period_id.equals("2MIN"))
            return PERIOD_IDENTIFIER._2MIN;
        if (period_id.equals("3MIN"))
            return PERIOD_IDENTIFIER._3MIN;
        if (period_id.equals("4MIN"))
            return PERIOD_IDENTIFIER._4MIN;
        if (period_id.equals("5MIN"))
            return PERIOD_IDENTIFIER._5MIN;
        if (period_id.equals("6MIN"))
            return PERIOD_IDENTIFIER._6MIN;
        if (period_id.equals("10MIN"))
            return PERIOD_IDENTIFIER._10MIN;
        if (period_id.equals("15MIN"))
            return PERIOD_IDENTIFIER._15MIN;
        if (period_id.equals("20MIN"))
            return PERIOD_IDENTIFIER._20MIN;
        if (period_id.equals("30MIN"))
            return PERIOD_IDENTIFIER._30MIN;
        if (period_id.equals("1HRS"))
            return PERIOD_IDENTIFIER._1HRS;
        if (period_id.equals("2HRS"))
            return PERIOD_IDENTIFIER._2HRS;
        if (period_id.equals("3HRS"))
            return PERIOD_IDENTIFIER._3HRS;
        if (period_id.equals("4HRS"))
            return PERIOD_IDENTIFIER._4HRS;
        if (period_id.equals("6HRS"))
            return PERIOD_IDENTIFIER._6HRS;
        if (period_id.equals("8HRS"))
            return PERIOD_IDENTIFIER._8HRS;
        if (period_id.equals("12HRS"))
            return PERIOD_IDENTIFIER._12HRS;
        if (period_id.equals("1DAY"))
            return PERIOD_IDENTIFIER._1DAY;
        if (period_id.equals("2DAY"))
            return PERIOD_IDENTIFIER._2DAY;
        if (period_id.equals("3DAY"))
            return PERIOD_IDENTIFIER._3DAY;
        if (period_id.equals("5DAY"))
            return PERIOD_IDENTIFIER._5DAY;
        if (period_id.equals("7DAY"))
            return PERIOD_IDENTIFIER._7DAY;
        if (period_id.equals("10DAY"))
            return PERIOD_IDENTIFIER._10DAY;
        if (period_id.equals("1MTH"))
            return PERIOD_IDENTIFIER._1MTH;
        if (period_id.equals("2MTH"))
            return PERIOD_IDENTIFIER._2MTH;
        if (period_id.equals("3MTH"))
            return PERIOD_IDENTIFIER._3MTH;
        if (period_id.equals("4MTH"))
            return PERIOD_IDENTIFIER._4MTH;
        if (period_id.equals("6MTH"))
            return PERIOD_IDENTIFIER._6MTH;
        if (period_id.equals("1YRS"))
            return PERIOD_IDENTIFIER._1YRS;
        if (period_id.equals("2YRS"))
            return PERIOD_IDENTIFIER._2YRS;
        if (period_id.equals("3YRS"))
            return PERIOD_IDENTIFIER._3YRS;
        if (period_id.equals("4YRS"))
            return PERIOD_IDENTIFIER._4YRS;
        if (period_id.equals("5YRS"))
            return PERIOD_IDENTIFIER._5YRS;
        return PERIOD_IDENTIFIER.INVALID;
    }

    private static String period_id_to_string(PERIOD_IDENTIFIER period_id) {
        switch(period_id) {
            case _1SEC:
                return "1SEC";
            case _2SEC:
                return "2SEC";
            case _3SEC:
                return "3SEC";
            case _4SEC:
                return "4SEC";
            case _5SEC:
                return "5SEC";
            case _6SEC:
                return "6SEC";
            case _10SEC:
                return "10SEC";
            case _15SEC:
                return "15SEC";
            case _20SEC:
                return "20SEC";
            case _30SEC:
                return "30SEC";
            case _1MIN:
                return "1MIN";
            case _2MIN:
                return "2MIN";
            case _3MIN:
                return "3MIN";
            case _4MIN:
                return "4MIN";
            case _5MIN:
                return "5MIN";
            case _6MIN:
                return "6MIN";
            case _10MIN:
                return "10MIN";
            case _15MIN:
                return "15MIN";
            case _20MIN:
                return "20MIN";
            case _30MIN:
                return "20MIN";
            case _1HRS:
                return "1HRS";
            case _2HRS:
                return "2HRS";
            case _3HRS:
                return "3HRS";
            case _4HRS:
                return "4HRS";
            case _6HRS:
                return "6HRS";
            case _8HRS:
                return "8HRS";
            case _12HRS:
                return "12HRS";
            case _1DAY:
                return "1DAY";
            case _2DAY:
                return "2DAY";
            case _3DAY:
                return "3DAY";
            case _5DAY:
                return "5DAY";
            case _7DAY:
                return "7DAY";
            case _10DAY:
                return "10DAY";
            case _1MTH:
                return "1MTH";
            case _2MTH:
                return "2MTH";
            case _3MTH:
                return "3MTH";
            case _4MTH:
                return "4MTH";
            case _6MTH:
                return "6MTH";
            case _1YRS:
                return "1YRS";
            case _2YRS:
                return "2YRS";
            case _3YRS:
                return "3YRS";
            case _4YRS:
                return "3YRS";
            case _5YRS:
                return "5YRS";
            default:
                return "INVALID";
        }
    }

    public enum TRADE_SIDE {
        INVALID,
        BUY,
        SELL,
        BUY_ESTIMATED,
        SELL_ESTIMATED,
        UNKNOWN
    }

    private TRADE_SIDE taker_size_from_string(String taker_side) {
        if (taker_side.equals("BUY"))
            return TRADE_SIDE.BUY;
        if (taker_side.equals("SELL"))
            return TRADE_SIDE.SELL;
        if (taker_side.equals("BUY_ESTIMATED"))
            return TRADE_SIDE.BUY_ESTIMATED;
        if (taker_side.equals("SELL_ESTIMATED"))
            return TRADE_SIDE.SELL_ESTIMATED;
        if (taker_side.equals("UNKNOWN"))
            return TRADE_SIDE.UNKNOWN;
        return TRADE_SIDE.INVALID;
    }

    public static class trade {
        private String symbol_id;                    // Our symbol identifier
        private Timestamp time_exchange;             // Time of trade reported by exchange
        private Timestamp time_coinapi;              // Time when coinapi first received trade from exchange
        private String uuid;                         // Our trade unique identifier in form of UUIDv4
        private double price;                        // Price of the transaction
        private double size;                         // Base asset amount traded in the transaction
        private TRADE_SIDE taker_side;               // Aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN)

        public trade(String symbol_id, Timestamp time_exchange, Timestamp time_coinapi, String uuid, double price, double size, TRADE_SIDE taker_side) {
            this.symbol_id = symbol_id;
            this.time_exchange = time_exchange;
            this.time_coinapi = time_coinapi;
            this.uuid = uuid;
            this.price = price;
            this.size = size;
            this.taker_side = taker_side;
        }

        public String get_symbol_id() {
            return symbol_id;
        }

        public Timestamp get_time_exchange() {
            return time_exchange;
        }

        public Timestamp get_time_coinapi() {
            return time_coinapi;
        }

        public String get_uuid() {
            return uuid;
        }

        public double get_price() {
            return price;
        }

        public double get_size() {
            return size;
        }

        public TRADE_SIDE get_taker_side() {
            return taker_side;
        }
    }

    public static class quote {
        private String symbol_id;                    // Our symbol identifier
        private Timestamp time_exchange;             // Exchange time of orderbook
        private Timestamp time_coinapi;              // CoinAPI time when orderbook received from exchange
        private double ask_price;                    // Best asking price
        private double ask_size;                     // Volume resting on best ask
        private double bid_price;                    // Best bidding price
        private double bid_size;                     // Volume resting on best bid

        public quote(String symbol_id, Timestamp time_exchange, Timestamp time_coinapi, double ask_price, double ask_size, double bid_price, double bid_size) {
            this.symbol_id = symbol_id;
            this.time_exchange = time_exchange;
            this.time_coinapi = time_coinapi;
            this.ask_price = ask_price;
            this.ask_size = ask_size;
            this.bid_price = bid_price;
            this.bid_size = bid_size;
        }

        public String get_symbol_id() {
            return symbol_id;
        }

        public Timestamp get_time_exchange() {
            return time_exchange;
        }

        public Timestamp get_time_coinapi() {
            return time_coinapi;
        }

        public double get_ask_price() {
            return ask_price;
        }

        public double get_ask_size() {
            return ask_size;
        }

        public double get_bid_price() {
            return bid_price;
        }

        public double get_bid_size() {
            return bid_size;
        }

        public boolean has_last_trade() {
            return false;
        }
    }

    public static class quote_with_trade extends quote {        
        private trade last_trade;                    // Last executed transaction

        public quote_with_trade(String symbol_id, Timestamp time_exchange, Timestamp time_coinapi, 
            double ask_price, double ask_size, double bid_price, double bid_size, trade last_trade) {
            super(symbol_id, time_exchange, time_coinapi, ask_price, ask_size, bid_price, bid_size);
            this.last_trade = last_trade;
        }

        @Override
        public boolean has_last_trade() {
            return last_trade != null;
        }

        public trade get_last_trade() {
            return last_trade;
        }
    }

    public static class level {
        private double price;                        // Price of bid/ask
        private double size;                         // Volume resting on bid/ask level in base amount

        public level(double price, double size) {
            this.price = price;
            this.size = size;
        }

        public double get_price() {
            return price;
        }

        public double get_size() {
            return size;
        }
    }

    public static class orderbook {
        private String symbol_id;                    // Our symbol identifier
	private Timestamp time_exchange;             // Exchange time of orderbook
	private Timestamp time_coinapi;              // CoinAPI time when orderbook received from exchange	
        private level[] bids;                        // Best 20 bid levels in order from best to worst
        private level[] asks;                        // Best 20 ask levels in order from best to worst

        public orderbook(String symbol_id, Timestamp time_exchange, Timestamp time_coinapi, ArrayList<level> bids, ArrayList<level> asks) {
            this.symbol_id = symbol_id;
            this.time_exchange = time_exchange;
            this.time_coinapi = time_coinapi;
            this.asks = new level[asks.size()];
            this.bids = new level[bids.size()];
            for (int i=0; i<asks.size(); i++)
                this.asks[i] = asks.get(i);
            for (int i=0; i<bids.size(); i++)
                this.bids[i] = bids.get(i);
        }

        public String get_symbol_id() {
            return symbol_id;
        }

        public Timestamp get_time_exchange() {
            return time_exchange;
        }

        public Timestamp get_time_coinapi() {
            return time_coinapi;
        }

        public int get_bids_count() {
            return bids.length;
        }

        public int get_asks_count() {
            return asks.length;
        }

        public level get_bid(int index) {
            return bids[index];
        }

        public level get_ask(int index) {
            return asks[index];
        }
    }

    private String key;

    public java_rest_coin_api(String key) {
        this.key = key;
    }

    private static SYMBOL_TYPE symbol_type_from_string(String symbol_type) {
        if (symbol_type.equals("SPOT"))
            return SYMBOL_TYPE.SPOT;
        if (symbol_type.equals("FUTURES"))
            return SYMBOL_TYPE.FUTURES;
        if (symbol_type.equals("OPTION"))
            return SYMBOL_TYPE.OPTION;

        return SYMBOL_TYPE.INVALID;
    }

    private static OPTION_EXERCISE_STYLE option_exercise_style_from_string(String option_exercise_style) {
        if (option_exercise_style.equals("AMERICAN"))
            return OPTION_EXERCISE_STYLE.AMERICAN;
        if (option_exercise_style.equals("EUROPEAN"))
            return OPTION_EXERCISE_STYLE.EUROPEAN;

        return OPTION_EXERCISE_STYLE.INVALID;
    }

    private static Timestamp precise_time_from_string(String time) {
        int year = Integer.parseInt(time.substring(0,4)) - 1900;
        int month = Integer.parseInt(time.substring(5,7)) - 1; 
        int day = Integer.parseInt(time.substring(8,10)); 
        int hours = Integer.parseInt(time.substring(11,13));
        int minutes = Integer.parseInt(time.substring(14,16));
        int seconds = Integer.parseInt(time.substring(17,19)); 
        int nano = 0;

        if (time.length()>20)
            nano = Integer.parseInt((time.substring(20,time.length()-1) + "0000000000").substring(0,7)) * 100;

        return new Timestamp(year, month, day, hours, minutes, seconds, nano);
    }

    private static String precise_time_to_string(Timestamp timestamp) {
        return String.format("%04d-%02d-%02dT%02d:%02d:%02d", timestamp.getYear() + 1900, timestamp.getMonth() + 1, timestamp.getDate(), timestamp.getHours(), timestamp.getMinutes(), timestamp.getSeconds());
    }

    private String get_json(String url) throws IOException, exception {
       OkHttpClient client = new OkHttpClient();

       RequestBody body = RequestBody.create(null, new byte[0]);

       Request request = new Request.Builder()
           .url("https://rest.coinapi.io" + url)
           //.post(body)
           .addHeader("X-CoinAPI-Key", key)
           .build();

       //System.out.println(request.url().toString());

       Response response = client.newCall(request).execute();

       if (response.code()>=400) {
           String error = "Error code " + response.code();

           try {
              JSONObject object = new JSONObject(response.body().string());
              error = object.getString("error");
           }
           catch(Exception ex) {
           }

           throw new exception(response.code(), error); 
       }

       return response.body().string();
    }

    public exchange[] list_all_exchanges() throws exception {
        try {
            String json = get_json("/v1/exchanges");
            JSONArray array = new JSONArray(json);

            exchange[] result = new exchange[array.length()];
            for (int i=0; i<array.length(); i++) {
                String exchange_id = array.getJSONObject(i).getString("exchange_id");
                String name = array.getJSONObject(i).getString("name");
                String website = array.getJSONObject(i).getString("website");
                result[i] = new exchange(exchange_id, name, website);
            }
            return result;
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public asset[] list_all_assets() throws exception {
        try {
            String json = get_json("/v1/assets");
            JSONArray array = new JSONArray(json);

            asset[] result = new asset[array.length()];
            for (int i=0; i<array.length(); i++) {
                String asset_id = array.getJSONObject(i).getString("asset_id");
                String name = array.getJSONObject(i).optString("name", null);
                boolean type_is_crypto = array.getJSONObject(i).getInt("type_is_crypto") != 0;
                result[i] = new asset(asset_id, name, type_is_crypto);
            }
            return result;
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public symbol[] list_all_symbols() throws exception {
        try {
            String json = get_json("/v1/symbols");
            JSONArray array = new JSONArray(json);

            symbol[] result = new symbol[array.length()];
            for (int i=0; i<array.length(); i++) {
                String symbol_id = array.getJSONObject(i).getString("symbol_id");
                String exchange_id = array.getJSONObject(i).getString("exchange_id");
                SYMBOL_TYPE symbol_type = symbol_type_from_string(array.getJSONObject(i).getString("symbol_type"));
                String asset_id_base = array.getJSONObject(i).getString("asset_id_base");
                String asset_id_quote = array.getJSONObject(i).getString("asset_id_quote");
                if (symbol_type == SYMBOL_TYPE.FUTURES) {
                    Timestamp future_delivery_time = precise_time_from_string(array.getJSONObject(i).getString("future_delivery_time"));
                    result[i] = new symbol(symbol_id, exchange_id, symbol_type, asset_id_base, asset_id_quote, false, 
                        0.0, 0.0, OPTION_EXERCISE_STYLE.INVALID, null, future_delivery_time);
                }
                else if (symbol_type == SYMBOL_TYPE.OPTION) {
                    boolean option_type_is_call = array.getJSONObject(i).getBoolean("option_type_is_call");
                    double option_strike_price = array.getJSONObject(i).getDouble("option_strike_price");
                    double option_contract_unit = array.getJSONObject(i).getDouble("option_contract_unit");
                    OPTION_EXERCISE_STYLE option_exercise_style = option_exercise_style_from_string(array.getJSONObject(i).getString("option_exercise_style"));
                    Timestamp option_expiration_time = precise_time_from_string(array.getJSONObject(i).getString("option_expiration_time"));


                    result[i] = new symbol(symbol_id, exchange_id, symbol_type, asset_id_base, asset_id_quote, option_type_is_call, 
                        option_strike_price, option_contract_unit, option_exercise_style, option_expiration_time, null);
                }
                else {
                    result[i] = new symbol(symbol_id, exchange_id, symbol_type, asset_id_base, asset_id_quote);
                }
            }
            return result;
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public exchange_rate get_exchange_rate(String asset_id_base, String asset_id_quote) throws exception {
        try {
            String json = get_json("/v1/exchangerate/" + asset_id_base + "/" + asset_id_quote);
            JSONObject object = new JSONObject(json);

            asset_id_base = object.getString("asset_id_base");
            asset_id_quote = object.getString("asset_id_quote");
            double rate = object.getDouble("rate");

            return new exchange_rate(precise_time_from_string(object.getString("time")), asset_id_base, asset_id_quote, rate);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public exchange_rate get_exchange_rate(String asset_id_base, String asset_id_quote, Timestamp time) throws exception {
        try {
            String json = get_json("/v1/exchangerate/" + asset_id_base + "/" + asset_id_quote + "?time=" + precise_time_to_string(time));
            JSONObject object = new JSONObject(json);

            asset_id_base = object.getString("asset_id_base");
            asset_id_quote = object.getString("asset_id_quote");
            double rate = object.getDouble("rate");
            return new exchange_rate(precise_time_from_string(object.getString("time")), asset_id_base, asset_id_quote, rate);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public exchange_rate[] get_all_exchange_rates(String asset_id_base) throws exception {
        try {
            String json = get_json("/v1/exchangerate/" + asset_id_base);
            JSONObject object = new JSONObject(json);
            JSONArray array = object.getJSONArray("rates");

            exchange_rate[] result = new exchange_rate[array.length()];
            for (int i=0; i<array.length(); i++) {
                String asset_id_quote = array.getJSONObject(i).getString("asset_id_quote");
                double rate = array.getJSONObject(i).getDouble("rate");
                Timestamp time = precise_time_from_string(array.getJSONObject(i).getString("time"));
                result[i] = new exchange_rate(time, asset_id_base, asset_id_quote, rate);
            }
            return result;
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public period[] ohlcv_list_all_periods() throws exception {
        try {
            String json = get_json("/v1/ohlcv/periods");
            JSONArray array = new JSONArray(json);

            period[] result = new period[array.length()];
            for (int i=0; i<array.length(); i++) {
                PERIOD_IDENTIFIER period_id = period_identifier_from_string(array.getJSONObject(i).getString("period_id"));
                int length_seconds = array.getJSONObject(i).getInt("length_seconds");
                int length_months = array.getJSONObject(i).getInt("length_months");
                int unit_count = array.getJSONObject(i).getInt("unit_count");
                String unit_name = array.getJSONObject(i).getString("unit_name");
                String display_name = array.getJSONObject(i).getString("display_name");

                result[i] = new period(period_id, length_seconds, length_months, unit_count, unit_name, display_name);
            }
            return result;
        }
        catch(IOException ioe) {
        }
        return null;
    }

    private timedata[] parse_timeseries(JSONArray array) {
        timedata[] result = new timedata[array.length()];
        for (int i=0; i<array.length(); i++) {
            Timestamp time_period_start = precise_time_from_string(array.getJSONObject(i).getString("time_period_start"));
            Timestamp time_period_end = precise_time_from_string(array.getJSONObject(i).getString("time_period_end"));
            Timestamp time_open = precise_time_from_string(array.getJSONObject(i).getString("time_open"));
            Timestamp time_close = precise_time_from_string(array.getJSONObject(i).getString("time_close"));
            double price_open = array.getJSONObject(i).getDouble("price_open");
            double price_high = array.getJSONObject(i).getDouble("price_high");
            double price_low = array.getJSONObject(i).getDouble("price_low");
            double price_close = array.getJSONObject(i).getDouble("price_close");
            double volume_traded = array.getJSONObject(i).getDouble("volume_traded");
            int trades_count = array.getJSONObject(i).getInt("trades_count");

            result[i] = new timedata(time_period_start, time_period_end, time_open, time_close, price_open, price_high, price_low, price_close, volume_traded, trades_count);
        }
        return result;
    }

    public timedata[] ohlcv_get_latest_timeseries(String symbol_id, PERIOD_IDENTIFIER period_id) throws exception {
        try {
            String json = get_json("/v1/ohlcv/"+ symbol_id + "/latest?period_id=" + period_id_to_string(period_id));
            JSONArray array = new JSONArray(json);
            return parse_timeseries(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public timedata[] ohlcv_get_latest_timeseries(String symbol_id, PERIOD_IDENTIFIER period_id, int limit) throws exception {
        try {
            String json = get_json("/v1/ohlcv/"+ symbol_id + "/latest?period_id=" + period_id_to_string(period_id) + "&limit=" + limit);
            JSONArray array = new JSONArray(json);
            return parse_timeseries(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public timedata[] ohlcv_get_historical_timeseries(String symbol_id, PERIOD_IDENTIFIER period_id, Timestamp time_start) throws exception {
        try {
            String json = get_json("/v1/ohlcv/"+ symbol_id + "/history?period_id=" + period_id_to_string(period_id) + "&time_start=" + precise_time_to_string(time_start));
            JSONArray array = new JSONArray(json);
            return parse_timeseries(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public timedata[] ohlcv_get_historical_timeseries(String symbol_id, PERIOD_IDENTIFIER period_id, Timestamp time_start, Timestamp time_end) throws exception {
        try {
            String json = get_json("/v1/ohlcv/"+ symbol_id + "/history?period_id=" + period_id_to_string(period_id) + "&time_start=" + precise_time_to_string(time_start) + "&time_end=" + precise_time_to_string(time_end));
            JSONArray array = new JSONArray(json);
            return parse_timeseries(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public timedata[] ohlcv_get_historical_timeseries(String symbol_id, PERIOD_IDENTIFIER period_id, Timestamp time_start, int limit) throws exception {
        try {
            String json = get_json("/v1/ohlcv/"+ symbol_id + "/history?period_id=" + period_id_to_string(period_id) + "&time_start=" + precise_time_to_string(time_start) + "&limit=" + limit);
            JSONArray array = new JSONArray(json);
            return parse_timeseries(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public timedata[] ohlcv_get_historical_timeseries(String symbol_id, PERIOD_IDENTIFIER period_id, Timestamp time_start, Timestamp time_end, int limit) throws exception {
        try {
            String json = get_json("/v1/ohlcv/"+ symbol_id + "/history?period_id=" + period_id_to_string(period_id) + "&time_start=" + precise_time_to_string(time_start) + "&time_end=" + precise_time_to_string(time_end) + "&limit=" + limit);
            JSONArray array = new JSONArray(json);
            return parse_timeseries(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    private trade parse_trade(JSONObject object, String symbol_id) throws exception {
        if (symbol_id==null)
            symbol_id = object.getString("symbol_id");
        Timestamp time_exchange = precise_time_from_string(object.getString("time_exchange"));
        Timestamp time_coinapi = precise_time_from_string(object.getString("time_coinapi"));
        String uuid = object.getString("uuid");
        double price = object.getDouble("price");
        double size = object.getDouble("size");
        TRADE_SIDE taker_side = taker_size_from_string(object.getString("taker_side"));
         
        return new trade(symbol_id, time_exchange, time_coinapi, uuid, price, size, taker_side);
    } 

    private trade[] parse_trades(JSONArray array) throws exception {
        trade[] result = new trade[array.length()];

        for (int i=0; i<array.length(); i++) {
            result[i] = parse_trade(array.getJSONObject(i), null);
        }
        return result;
    }

    private quote_with_trade parse_quote_with_trade(JSONObject object) throws exception {
        String symbol_id = object.getString("symbol_id");
        Timestamp time_exchange = precise_time_from_string(object.getString("time_exchange"));
        Timestamp time_coinapi = precise_time_from_string(object.getString("time_coinapi"));
        double ask_price = object.getDouble("ask_price");
        double ask_size = object.getDouble("ask_size");
        double bid_price = object.getDouble("bid_price");
        double bid_size = object.getDouble("bid_size");
        trade last_trade = null;
        if (object.has("last_trade"))
            last_trade = parse_trade(object.getJSONObject("last_trade"), symbol_id);
        return new quote_with_trade(symbol_id, time_exchange, time_coinapi, ask_price, ask_size, bid_price, bid_size, last_trade);
    }

    private quote parse_quote(JSONObject object) throws exception {
        String symbol_id = object.getString("symbol_id");
        Timestamp time_exchange = precise_time_from_string(object.getString("time_exchange"));
        Timestamp time_coinapi = precise_time_from_string(object.getString("time_coinapi"));
        double ask_price = object.getDouble("ask_price");
        double ask_size = object.getDouble("ask_size");
        double bid_price = object.getDouble("bid_price");
        double bid_size = object.getDouble("bid_size");
        return new quote(symbol_id, time_exchange, time_coinapi, ask_price, ask_size, bid_price, bid_size);
    }

    private quote_with_trade[] parse_quotes_with_trade(JSONArray array) throws exception {
        quote_with_trade[] result = new quote_with_trade[array.length()];
        for (int i=0; i<array.length(); i++) {
            result[i] = parse_quote_with_trade(array.getJSONObject(i));
        }
        return result;
    }

    private quote[] parse_quotes(JSONArray array) throws exception {
        quote[] result = new quote[array.length()];
        for (int i=0; i<array.length(); i++) {
            result[i] = parse_quote(array.getJSONObject(i));
        }
        return result;
    }

    private void parse_levels(ArrayList<level> levels, JSONArray array) throws exception {
        for (int i=0; i<array.length(); i++) {
            double price = array.getJSONObject(i).getDouble("price");
            double size = array.getJSONObject(i).getDouble("size");
            levels.add(new level(price, size));
        } 
    }

    private orderbook parse_orderbook(JSONObject object) throws exception {
        String symbol_id = object.getString("symbol_id");
        Timestamp time_exchange = precise_time_from_string(object.getString("time_exchange"));
        Timestamp time_coinapi = precise_time_from_string(object.getString("time_coinapi"));
        ArrayList<level> bids = new ArrayList<level>();
        ArrayList<level> asks = new ArrayList<level>();
        if (object.has("asks")) {
            parse_levels(asks, object.getJSONArray("asks"));
        }
        if (object.has("bids")) {
            parse_levels(bids, object.getJSONArray("bids"));
        }
        return new orderbook(symbol_id, time_exchange, time_coinapi, bids, asks);
    }

    private orderbook[] parse_orderbooks(JSONArray array) throws exception {
        orderbook[] result = new orderbook[array.length()];
        for (int i=0; i<array.length(); i++) {
            result[i] = parse_orderbook(array.getJSONObject(i));
        }
        return result;
    }

    public trade[] trades_get_latest_data() throws exception {
        try {
            String json = get_json("/v1/trades/latest");
            JSONArray array = new JSONArray(json);
            return parse_trades(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public trade[] trades_get_latest_data(int limit) throws exception {
        try {
            String json = get_json("/v1/trades/latest?limit="+limit);
            JSONArray array = new JSONArray(json);
            return parse_trades(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public trade[] trades_get_latest_data(String symbol_id) throws exception {
        try {
            String json = get_json("/v1/trades/" + symbol_id + "/latest");
            JSONArray array = new JSONArray(json);
            return parse_trades(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public trade[] trades_get_latest_data(String symbol_id, int limit) throws exception {
        try {
            String json = get_json("/v1/trades/" + symbol_id + "/latest?limit="+limit);
            JSONArray array = new JSONArray(json);
            return parse_trades(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public trade[] trades_get_historical_data(String symbol_id, Timestamp time_start) throws exception {
        try {
            String json = get_json("/v1/trades/" + symbol_id + "/history?time_start=" + precise_time_to_string(time_start));
            JSONArray array = new JSONArray(json);
            return parse_trades(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public trade[] trades_get_historical_data(String symbol_id, Timestamp time_start, int limit) throws exception {
        try {
            String json = get_json("/v1/trades/" + symbol_id + "/history?time_start=" + precise_time_to_string(time_start) + "&limit="+limit);
            JSONArray array = new JSONArray(json);
            return parse_trades(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public trade[] trades_get_historical_data(String symbol_id, Timestamp time_start, Timestamp time_end) throws exception {
        try {
            String json = get_json("/v1/trades/" + symbol_id + "/history?time_start=" + precise_time_to_string(time_start) + "&time_end=" + precise_time_to_string(time_end));
            JSONArray array = new JSONArray(json);
            return parse_trades(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public trade[] trades_get_historical_data(String symbol_id, Timestamp time_start, Timestamp time_end, int limit) throws exception {
        try {
            String json = get_json("/v1/trades/" + symbol_id + "/history?time_start=" + precise_time_to_string(time_start) + "&time_end=" + precise_time_to_string(time_end) + "&limit="+limit);
            JSONArray array = new JSONArray(json);
            return parse_trades(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public quote_with_trade[] quotes_get_for_all_symbols() throws exception {
        try {
            String json = get_json("/v1/quotes/current");
            JSONArray array = new JSONArray(json);
            return parse_quotes_with_trade(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public quote_with_trade quotes_get_for_symbol(String symbol_id) throws exception {
        try {
            String json = get_json("/v1/quotes/" + symbol_id + "/current");
            JSONObject object = new JSONObject(json);
            return parse_quote_with_trade(object);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public quote[] quotes_get_latest_data() throws exception {
        try {
            String json = get_json("/v1/quotes/latest");
            JSONArray array = new JSONArray(json);
            return parse_quotes(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public quote[] quotes_get_latest_data(int limit) throws exception {
        try {
            String json = get_json("/v1/quotes/latest?limit="+limit);
            JSONArray array = new JSONArray(json);
            return parse_quotes(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public quote[] quotes_get_latest_data(String symbol_id) throws exception {
        try {
            String json = get_json("/v1/quotes/" + symbol_id + "/latest");
            JSONArray array = new JSONArray(json);
            return parse_quotes(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }


    public quote[] quotes_get_latest_data(String symbol_id, int limit) throws exception {
        try {
            String json = get_json("/v1/quotes/" + symbol_id + "/latest?limit=" + limit);
            JSONArray array = new JSONArray(json);
            return parse_quotes(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public quote[] quotes_get_historical_data(String symbol_id, Timestamp time_start) throws exception {
        try {
            String json = get_json("/v1/quotes/" + symbol_id + "/history?time_start=" + precise_time_to_string(time_start));
            JSONArray array = new JSONArray(json);
            return parse_quotes(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public quote[] quotes_get_historical_data(String symbol_id, Timestamp time_start, int limit) throws exception {
        try {
            String json = get_json("/v1/quotes/" + symbol_id + "/history?time_start=" + precise_time_to_string(time_start) + "&limit="+limit);
            JSONArray array = new JSONArray(json);
            return parse_quotes(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public quote[] quotes_get_historical_data(String symbol_id, Timestamp time_start, Timestamp time_end) throws exception {
        try {
            String json = get_json("/v1/quotes/" + symbol_id + "/history?time_start=" + precise_time_to_string(time_start) + "&time_end=" + precise_time_to_string(time_end));
            JSONArray array = new JSONArray(json);
            return parse_quotes(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public quote[] quotes_get_historical_data(String symbol_id, Timestamp time_start, Timestamp time_end, int limit) throws exception {
        try {
            String json = get_json("/v1/quotes/" + symbol_id + "/history?time_start=" + precise_time_to_string(time_start) + "&time_end=" + precise_time_to_string(time_end) + "&limit="+limit);
            JSONArray array = new JSONArray(json);
            return parse_quotes(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public orderbook[] orderbooks_get_for_all_symbols() throws exception {
        try {
            String json = get_json("/v1/orderbooks/current");
            JSONArray array = new JSONArray(json);
            return parse_orderbooks(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public orderbook orderbooks_get_for_symbol(String symbol_id) throws exception {
        try {
            String json = get_json("/v1/orderbooks/" + symbol_id + "/current");
            JSONObject object = new JSONObject(json);
            return parse_orderbook(object);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public orderbook[] orderbooks_get_latest_data(String symbol_id) throws exception {
        try {
            String json = get_json("/v1/orderbooks/" + symbol_id + "/latest");
            JSONArray array = new JSONArray(json);
            return parse_orderbooks(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public orderbook[] orderbooks_get_latest_data(String symbol_id, int limit) throws exception {
        try {
            String json = get_json("/v1/orderbooks/" + symbol_id + "/latest?limit=" + limit);
            JSONArray array = new JSONArray(json);
            return parse_orderbooks(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public orderbook[] orderbooks_get_historical_data(String symbol_id, Timestamp time_start) throws exception {
        try {
            String json = get_json("/v1/orderbooks/" + symbol_id + "/history?time_start=" + precise_time_to_string(time_start));
            JSONArray array = new JSONArray(json);
            return parse_orderbooks(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public orderbook[] orderbooks_get_historical_data(String symbol_id, Timestamp time_start, int limit) throws exception {
        try {
            String json = get_json("/v1/orderbooks/" + symbol_id + "/history?time_start=" + precise_time_to_string(time_start) + "&limit="+limit);
            JSONArray array = new JSONArray(json);
            return parse_orderbooks(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public orderbook[] orderbooks_get_historical_data(String symbol_id, Timestamp time_start, Timestamp time_end) throws exception {
        try {
            String json = get_json("/v1/orderbooks/" + symbol_id + "/history?time_start=" + precise_time_to_string(time_start) + "&time_end=" + precise_time_to_string(time_end));
            JSONArray array = new JSONArray(json);
            return parse_orderbooks(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    public orderbook[] orderbooks_get_historical_data(String symbol_id, Timestamp time_start, Timestamp time_end, int limit) throws exception {
        try {
            String json = get_json("/v1/orderbooks/" + symbol_id + "/history?time_start=" + precise_time_to_string(time_start) + "&time_end=" + precise_time_to_string(time_end) + "&limit="+limit);
            JSONArray array = new JSONArray(json);
            return parse_orderbooks(array);
        }
        catch(IOException ioe) {
        }
        return null;
    }

    private int[] parse_int_array(JSONArray array) {
        int[] result = new int[array.length()];
        for (int i=0; i<array.length(); i++) {
             result[i] = array.getInt(i);
        } 
        return result;
    }
}
