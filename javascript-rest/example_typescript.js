"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments)).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t;
    return { next: verb(0), "throw": verb(1), "return": verb(2) };
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
var coinapi_v1_1 = require("./coinapi_v1");
// this is to support both browser and node
var COIN_API_SDK = typeof window !== 'undefined' ? window.COIN_API_SDK : coinapi_v1_1["default"];
var sdk = new COIN_API_SDK("YOUR_API_KEY_HERE");
function run() {
    return __awaiter(this, void 0, void 0, function () {
        var t, exchanges, Metadata_list_assets, Metadata_list_symbols, Exchange_rates_get_specific_rate, Exchange_rates_get_all_current_rates, Ohlcv_list_all_periods, Ohlcv_latest_data, Ohlcv_historic_data, Trades_latest_data_all, Trades_latest_data_symbol, Trades_historical_data, Quotes_current_data_all, Quotes_current_data_symbol, Quotes_latest_data_all, Quotes_latest_data_symbol, Quotes_historical_data, Orderbooks_current_data_all, Orderbooks_current_data_symbol, Orderbooks_latest_data, Orderbooks_historical_data;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    t = new Date(Date.parse("2016-11-01T22:08:41+00:00"));
                    return [4 /*yield*/, sdk.metadata_list_exchanges()];
                case 1:
                    exchanges = _a.sent();
                    console.log('exchanges:');
                    console.log('number: ', exchanges.length);
                    exchanges.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.metadata_list_assets()];
                case 2:
                    Metadata_list_assets = _a.sent();
                    console.log('Metadata_list_assets:');
                    console.log('number: ', Metadata_list_assets.length);
                    Metadata_list_assets.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.metadata_list_symbols()];
                case 3:
                    Metadata_list_symbols = _a.sent();
                    console.log('Metadata_list_symbols:');
                    console.log('number: ', Metadata_list_symbols.length);
                    Metadata_list_symbols.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.exchange_rates_get_specific_rate("BTC", "USD", t)];
                case 4:
                    Exchange_rates_get_specific_rate = _a.sent();
                    console.log('Exchange_rates_get_specific_rate:');
                    console.log(Exchange_rates_get_specific_rate);
                    return [4 /*yield*/, sdk.exchange_rates_get_all_current_rates("BTC")];
                case 5:
                    Exchange_rates_get_all_current_rates = _a.sent();
                    console.log('Exchange_rates_get_all_current_rates:');
                    console.log(Exchange_rates_get_all_current_rates);
                    return [4 /*yield*/, sdk.ohlcv_list_all_periods()];
                case 6:
                    Ohlcv_list_all_periods = _a.sent();
                    console.log('Ohlcv_list_all_periods:');
                    console.log('number: ', Ohlcv_list_all_periods.length);
                    Ohlcv_list_all_periods.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.ohlcv_latest_data("BITSTAMP_SPOT_BTC_USD", "1MIN", 5)];
                case 7:
                    Ohlcv_latest_data = _a.sent();
                    console.log('Ohlcv_latest_data:');
                    console.log('number: ', Ohlcv_latest_data.length);
                    Ohlcv_latest_data.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.ohlcv_historic_data("BITSTAMP_SPOT_BTC_USD", "1MIN", t, new Date(), 5)];
                case 8:
                    Ohlcv_historic_data = _a.sent();
                    console.log('Ohlcv_historic_data:');
                    console.log('number: ', Ohlcv_historic_data.length);
                    Ohlcv_historic_data.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.trades_latest_data_all(5)];
                case 9:
                    Trades_latest_data_all = _a.sent();
                    console.log('Trades_latest_data_all:');
                    console.log('number: ', Trades_latest_data_all.length);
                    Trades_latest_data_all.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.trades_latest_data_symbol("BITSTAMP_SPOT_BTC_USD", 5)];
                case 10:
                    Trades_latest_data_symbol = _a.sent();
                    console.log('Trades_latest_data_symbol:');
                    console.log('number: ', Trades_latest_data_symbol.length);
                    Trades_latest_data_symbol.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.trades_historical_data("BITSTAMP_SPOT_BTC_USD", t, new Date(), 5)];
                case 11:
                    Trades_historical_data = _a.sent();
                    console.log('Trades_historical_data:');
                    console.log('number: ', Trades_historical_data.length);
                    Trades_historical_data.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.quotes_current_data_all()];
                case 12:
                    Quotes_current_data_all = _a.sent();
                    console.log('Quotes_current_data_all:');
                    console.log('number: ', Quotes_current_data_all.length);
                    Quotes_current_data_all.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.quotes_current_data_symbol("BITSTAMP_SPOT_BTC_USD")];
                case 13:
                    Quotes_current_data_symbol = _a.sent();
                    console.log('Quotes_current_data_symbol:');
                    console.log(Quotes_current_data_symbol);
                    return [4 /*yield*/, sdk.quotes_latest_data_all(5)];
                case 14:
                    Quotes_latest_data_all = _a.sent();
                    console.log('Quotes_latest_data_all:');
                    console.log('number: ', Quotes_latest_data_all.length);
                    Quotes_latest_data_all.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.quotes_latest_data_symbol("BITSTAMP_SPOT_BTC_USD", 5)];
                case 15:
                    Quotes_latest_data_symbol = _a.sent();
                    console.log('Quotes_latest_data_symbol:');
                    console.log('number: ', Quotes_latest_data_symbol.length);
                    Quotes_latest_data_symbol.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.quotes_historical_data("BITSTAMP_SPOT_BTC_USD", t, new Date(), 5)];
                case 16:
                    Quotes_historical_data = _a.sent();
                    console.log('Quotes_historical_data:');
                    console.log('number: ', Quotes_historical_data.length);
                    Quotes_historical_data.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.orderbooks_current_data_all()];
                case 17:
                    Orderbooks_current_data_all = _a.sent();
                    console.log('Orderbooks_current_data_all:');
                    console.log('number: ', Orderbooks_current_data_all.length);
                    Orderbooks_current_data_all.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.orderbooks_current_data_symbol("BITSTAMP_SPOT_BTC_USD")];
                case 18:
                    Orderbooks_current_data_symbol = _a.sent();
                    console.log('Orderbooks_current_data_symbol:');
                    console.log(Orderbooks_current_data_symbol);
                    return [4 /*yield*/, sdk.orderbooks_latest_data("BITSTAMP_SPOT_BTC_USD", 5)];
                case 19:
                    Orderbooks_latest_data = _a.sent();
                    console.log('Orderbooks_latest_data:');
                    console.log('number: ', Orderbooks_latest_data.length);
                    Orderbooks_latest_data.forEach(function (x) { console.log(x); });
                    return [4 /*yield*/, sdk.orderbooks_historical_data("BITSTAMP_SPOT_BTC_USD", t, new Date(), 5)];
                case 20:
                    Orderbooks_historical_data = _a.sent();
                    console.log('Orderbooks_historical_data:');
                    console.log('number: ', Orderbooks_historical_data.length);
                    Orderbooks_historical_data.forEach(function (x) { console.log(x); });
                    return [2 /*return*/];
            }
        });
    });
}
run();
