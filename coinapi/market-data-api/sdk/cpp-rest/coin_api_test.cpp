#include <sstream>
#include <iostream>
#include <iomanip>


#include "coin_api.h"

#define TEST_KEY "YOUR_API_KEY" 

std::wostream& operator<<(std::wostream& os, const cpp_rest::response::precise_time& pt) {
	os << pt.year << "/" << pt.month << "/" << pt.day << " ";
	os << pt.hours << ":" << pt.minutes << ":" << pt.seconds << "." << pt.nanoseconds;
	return os;
}

std::wostream& operator<<(std::wostream& os, const cpp_rest::response::exchange& entry) {
	os << "Exchange ( name = ";
	os << entry.name.c_str() << ", id = ";
	os << entry.exchange_id.c_str() << ", website = ";
	os << entry.website.c_str() << " )";

	return os;
}

std::wostream& operator<<(std::wostream& os, const cpp_rest::response::asset& entry) {
	os << "Asset ( name = ";
	os << entry.name.c_str() << ", id = ";
	os << entry.asset_id.c_str() << ", cryptocurrency = ";
	os << (entry.type_is_crypto ? "yes" : "no") << " )";

	return os;
}

std::wostream& operator<<(std::wostream& os, const cpp_rest::response::symbol& entry) {
    switch(entry.symbol_type) {
		case cpp_rest::response::SYMBOL_TYPE_INVALID:
			os << "Invalid ";
		break;
		case cpp_rest::response::SYMBOL_TYPE_SPOT:
			os << "Spot ";
		break;
		case cpp_rest::response::SYMBOL_TYPE_FUTURES:
			os << "Futures ";
		break;
		case cpp_rest::response::SYMBOL_TYPE_OPTION:
			os << "Option ";
		break;
	}
	os << "Symbol ( symbol_id = ";
	os << entry.symbol_id.c_str() << ", exchange_id = ";
	os << entry.exchange_id.c_str() << ", ";
	os << entry.asset_id_base.c_str() << "/" << entry.asset_id_quote.c_str() << " )";
	if (entry.symbol_type==cpp_rest::response::SYMBOL_TYPE_FUTURES) {        
		os << std::endl;
		os << "    Delivery time: " << entry.future_delivery_time;
	}
	if (entry.symbol_type==cpp_rest::response::SYMBOL_TYPE_OPTION) {
		os << std::endl;
		os << "    Type of option: " << (entry.option_type_is_call ? "Call" : "Put") << ", ";
		os << "Strike price: " << entry.option_strike_price << ", ";
		os << "Conract Unit: " << entry.option_contract_unit << std::endl;
		if (entry.option_exercise_style == cpp_rest::response::OPTION_EXERCISE_EUROPEAN)
			os << "    European exercise style";
		if (entry.option_exercise_style == cpp_rest::response::OPTION_EXERCISE_AMERICAN)
			os << "    American exercise style";
		os << std::endl;
		os << "    Expiration time: " << entry.option_expiration_time;
	}
	return os;
}

std::wostream& operator<<(std::wostream& os, const cpp_rest::response::exchange_rate& entry) {
	os << "Exchange rate for ";
	os << entry.asset_id_base.c_str() << "/" << entry.asset_id_quote.c_str() << " ";
	os << " at " << entry.time << " is " << std::fixed << std::setprecision(14) << entry.rate;
}

std::wostream& operator<<(std::wostream& os, const cpp_rest::response::period& period) {
	os << "Period ( seconds = ";
	os << period.length_seconds << ", months = ";
	os << period.length_months << ", unit count = ";
	os << period.unit_count << ", unit_name = ";
	os << period.unit_name.c_str() << ", display name: ";
	os << period.display_name.c_str();

	return os;
}

std::wostream& operator<<(std::wostream& os, const cpp_rest::response::timedata& entry) {
	os << std::endl;
	os << " Time period start  : " << entry.time_period_start << std::endl;
    os << " Time period end    : " << entry.time_period_end << std::endl;
    os << " Time open          : " << entry.time_open << std::endl;
    os << " Time close         : " << entry.time_close << std::endl;
    os << " Price open    : " << entry.price_open << std::endl;
	os << " Price high    : " << entry.price_high << std::endl;
	os << " Price low     : " << entry.price_low << std::endl;
	os << " Price close   : " << entry.price_close << std::endl;
	os << " Volume Traded : " << entry.volume_traded << std::endl;
    os << " Trades count  : " << entry.trades_count << std::endl;

	return os;
}

std::wostream& operator<<(std::wostream& os, const cpp_rest::response::trade& entry) {
	os << std::endl;
	switch(entry.taker_side) {
		case cpp_rest::response::TRADE_SIDE_BUY:
			os << "Trade, taker side is BUY, ";
			break;
		case cpp_rest::response::TRADE_SIDE_SELL:
			os << "Trade, taker side is SELL, ";
			break;
		case cpp_rest::response::TRADE_SIDE_BUY_ESTIMATED:
			os << "Trade, taker side is BUY ESTIMATED, ";
			break;
		case cpp_rest::response::TRADE_SIDE_SELL_ESTIMATED:
			os << "Trade, taker side is SELL ESTIMATED, ";
			break;
		case cpp_rest::response::TRADE_SIDE_UNKNOWN:
			os << "Trade, taker side is Unknown, ";
			break;
	}
	os << " Symbol id       : " << entry.symbol_id.c_str() << std::endl;
	os << " Time exchange   : " << entry.time_exchange << " , ";
	os << " Time CoinAPI    : " << entry.time_coinapi << std::endl;
	os << " UUID            : " << entry.uuid.c_str() << " , ";
	os << " Price: " << entry.price << " , ";
	os << " size: " << entry.size << std::endl;


	return os;
}


std::wostream& operator<<(std::wostream& os, const cpp_rest::response::quote_with_trade& entry) {
	os << std::endl;
	os << " Symbol id       : " << entry.quote.symbol_id.c_str() << std::endl;
	os << " Time exchange   : " << entry.quote.time_exchange << " , ";
	os << " Time CoinAPI    : " << entry.quote.time_coinapi << std::endl;
	os << " bid Price: " << entry.quote.bid_price << " , ";
	os << " bid size: " << entry.quote.bid_size << std::endl;
    os << " ask Price: " << entry.quote.ask_price << " , ";
	os << " ask size: " << entry.quote.ask_size << std::endl;
    os << entry.last_trade << std::endl;

	return os;
}

std::wostream& operator<<(std::wostream& os, const cpp_rest::response::quote& entry) {
	os << std::endl;
	os << " Symbol id       : " << entry.symbol_id.c_str() << std::endl;
	os << " Time exchange   : " << entry.time_exchange << " , ";
	os << " Time CoinAPI    : " << entry.time_coinapi << std::endl;
	os << " bid Price: " << entry.bid_price << " , ";
	os << " bid size: " << entry.bid_size << std::endl;
    os << " ask Price: " << entry.ask_price << " , ";
	os << " ask size: " << entry.ask_size << std::endl;

	return os;
}

std::wostream& operator<<(std::wostream& os, const cpp_rest::response::orderbook& entry) {
	os << std::endl;
	os << " Symbol id       : " << entry.symbol_id.c_str() << std::endl;
	os << " Time exchange   : " << entry.time_exchange << " , ";
	os << " Time CoinAPI    : " << entry.time_coinapi << std::endl;
	os << " Asks: ";
	for(size_t i=0; i<entry.asks.size(); i++) {
		os << entry.asks[i].price << "(" << entry.asks[i].size << "), ";
	}
	os << std::endl;
	os << " Bids: ";
	for(size_t i=0; i<entry.bids.size(); i++) {
		os << entry.bids[i].price << "(" << entry.bids[i].size << "), ";
	}
	os << std::endl;

	return os;
}

void test_metadata_list_all_exchanges() {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "List all exchanges started" << std::endl;
	c.metadata_list_all_exchanges().then([=](cpp_rest::response::exchanges result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "List all exchanges finished" << std::endl;
	}).wait();
}

void test_metadata_list_all_assets() {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "List all assets started" << std::endl;
	c.metadata_list_all_assets().then([=](cpp_rest::response::assets result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "List all assets finished" << std::endl;
	}).wait();
}

void test_metadata_list_all_symbols() {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "List all symbols started" << std::endl;
	c.metadata_list_all_symbols().then([=](cpp_rest::response::symbols result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "List all symbols finished" << std::endl;
	}).wait();
}

void test_get_exchange_rate(std::string asset_id_base, std::string asset_id_quote) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get exchange rate started" << std::endl;
	c.get_exchange_rate(asset_id_base, asset_id_quote).then([=](cpp_rest::response::exchange_rate result) {
		std::wcout << result << std::endl;
		std::wcout << "Get exchange rate finished" << std::endl;
	}).wait();
}

void test_get_exchange_rate(std::string asset_id_base, std::string asset_id_quote, cpp_rest::response::precise_time time) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get exchange rate started" << std::endl;
	c.get_exchange_rate(asset_id_base, asset_id_quote, time).then([=](cpp_rest::response::exchange_rate result) {
		std::wcout << result << std::endl;
		std::wcout << "Get exchange rate finished" << std::endl;
	}).wait();
}

void test_get_all_exchange_rates(std::string asset_id_base) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get all exchange rates started" << std::endl;
	c.get_all_exchange_rates(asset_id_base).then([=](cpp_rest::response::exchange_rates result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get all exchange rates finished" << std::endl;
	}).wait();
}

void test_ohlcv_list_all_periods() {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "List all periods started" << std::endl;
	c.ohlcv_list_all_periods().then([=](cpp_rest::response::periods result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "List all periods finished" << std::endl;
	}).wait();
}

void test_ohlcv_get_latest_timeseries(std::string symbol, cpp_rest::response::PERIOD_IDENTIFIER period) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get latest timeseries started" << std::endl;
	c.ohlcv_get_latest_timeseries(symbol, period).then([=](cpp_rest::response::timeseries result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get latest timeseries started finished" << std::endl;
	}).wait();
}

void test_ohlcv_get_latest_timeseries(std::string symbol, cpp_rest::response::PERIOD_IDENTIFIER period, int limit) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get latest timeseries started" << std::endl;
	c.ohlcv_get_latest_timeseries(symbol, period, limit).then([=](cpp_rest::response::timeseries result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get latest timeseries finished" << std::endl;
	}).wait();
}

void test_ohlcv_get_historical_timeseries(std::string symbol, cpp_rest::response::PERIOD_IDENTIFIER period, cpp_rest::response::precise_time time_start) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical timeseries started" << std::endl;
	c.ohlcv_get_historical_timeseries(symbol, period, time_start).then([=](cpp_rest::response::timeseries result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical timeseries finished" << std::endl;
	}).wait();
}


void test_ohlcv_get_historical_timeseries(std::string symbol, cpp_rest::response::PERIOD_IDENTIFIER period, cpp_rest::response::precise_time time_start, cpp_rest::response::precise_time time_end) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical timeseries started" << std::endl;
	c.ohlcv_get_historical_timeseries(symbol, period, time_start, time_end).then([=](cpp_rest::response::timeseries result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical timeseries finished" << std::endl;
	}).wait();
}

void test_ohlcv_get_historical_timeseries(std::string symbol, cpp_rest::response::PERIOD_IDENTIFIER period, cpp_rest::response::precise_time time_start, int limit) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical timeseries started" << std::endl;
	c.ohlcv_get_historical_timeseries(symbol, period, time_start, limit).then([=](cpp_rest::response::timeseries result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical timeseries finished" << std::endl;
	}).wait();
}

void test_ohlcv_get_historical_timeseries(std::string symbol, cpp_rest::response::PERIOD_IDENTIFIER period, cpp_rest::response::precise_time time_start, cpp_rest::response::precise_time time_end, int limit) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical timeseries started" << std::endl;
	c.ohlcv_get_historical_timeseries(symbol, period, time_start, time_end, limit).then([=](cpp_rest::response::timeseries result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical timeseries finished" << std::endl;
	}).wait();
}


void test_trades_get_latest_data() {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get latest trades started" << std::endl;
	c.trades_get_latest_data().then([=](cpp_rest::response::trades result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get latest trades finished" << std::endl;
	}).wait();
}

void test_trades_get_latest_data(int limit) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get latest trades started" << std::endl;
	c.trades_get_latest_data(limit).then([=](cpp_rest::response::trades result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get latest trades finished" << std::endl;
	}).wait();
}

void test_trades_get_latest_data(std::string symbol) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get latest trades started" << std::endl;
	c.trades_get_latest_data(symbol).then([=](cpp_rest::response::trades result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get latest trades finished" << std::endl;
	}).wait();
}

void test_trades_get_latest_data(std::string symbol, int limit) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get latest trades started" << std::endl;
	c.trades_get_latest_data(symbol, limit).then([=](cpp_rest::response::trades result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get latest trades finished" << std::endl;
	}).wait();
}

void test_trades_get_historical_data(std::string symbol, cpp_rest::response::precise_time time_start) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical trades started" << std::endl;
	c.trades_get_historical_data(symbol, time_start).then([=](cpp_rest::response::trades result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical trades finished" << std::endl;
	}).wait();
}

void test_trades_get_historical_data(std::string symbol, cpp_rest::response::precise_time time_start, int limit) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical trades started" << std::endl;
	c.trades_get_historical_data(symbol, time_start, limit).then([=](cpp_rest::response::trades result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical trades finished" << std::endl;
	}).wait();
}

void test_trades_get_historical_data(std::string symbol, cpp_rest::response::precise_time time_start, cpp_rest::response::precise_time time_end) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical trades started" << std::endl;
	c.trades_get_historical_data(symbol, time_start, time_end).then([=](cpp_rest::response::trades result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical trades finished" << std::endl;
	}).wait();
}

void test_trades_get_historical_data(std::string symbol, cpp_rest::response::precise_time time_start, cpp_rest::response::precise_time time_end, int limit) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical trades started" << std::endl;
	c.trades_get_historical_data(symbol, time_start, time_end, limit).then([=](cpp_rest::response::trades result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical trades finished" << std::endl;
	}).wait();
}


void test_quotes_get_for_all_symbols() {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get current quotes started" << std::endl;
	c.quotes_get_for_all_symbols().then([=](cpp_rest::response::quotes_with_trade result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get current quotes finished" << std::endl;
	}).wait();
}

void test_quotes_get_for_symbol(std::string symbol_id) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get current quotes started" << std::endl;
	c.quotes_get_for_symbol(symbol_id).then([=](cpp_rest::response::quote_with_trade result) {
		std::wcout << result << std::endl;
		std::wcout << "Get current quotes finished" << std::endl;
	}).wait();
}

void test_quotes_get_latest_data() {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get latest quotes started" << std::endl;
	c.quotes_get_latest_data().then([=](cpp_rest::response::quotes result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get latest quotes finished" << std::endl;
	}).wait();
}

void test_quotes_get_latest_data(std::string symbol_id) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get latest quotes started" << std::endl;
	c.quotes_get_latest_data(symbol_id).then([=](cpp_rest::response::quotes result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get latest quotes finished" << std::endl;
	}).wait();
}

void test_quotes_get_latest_data(int limit) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get latest quotes started" << std::endl;
	c.quotes_get_latest_data(limit).then([=](cpp_rest::response::quotes result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get latest quotes finished" << std::endl;
	}).wait();
}

void test_quotes_get_latest_data(std::string symbol_id, int limit) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get latest quotes started" << std::endl;
	c.quotes_get_latest_data(symbol_id, limit).then([=](cpp_rest::response::quotes result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get latest quotes finished" << std::endl;
	}).wait();
}

void test_quotes_get_historical_data(std::string symbol, cpp_rest::response::precise_time time_start) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical quotes started" << std::endl;
	c.quotes_get_historical_data(symbol, time_start).then([=](cpp_rest::response::quotes result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical quotes finished" << std::endl;
	}).wait();
}

void test_quotes_get_historical_data(std::string symbol, cpp_rest::response::precise_time time_start, int limit) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical quotes started" << std::endl;
	c.quotes_get_historical_data(symbol, time_start, limit).then([=](cpp_rest::response::quotes result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical quotes finished" << std::endl;
	}).wait();
}

void test_quotes_get_historical_data(std::string symbol, cpp_rest::response::precise_time time_start, cpp_rest::response::precise_time time_end) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical quotes started" << std::endl;
	c.quotes_get_historical_data(symbol, time_start, time_end).then([=](cpp_rest::response::quotes result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical quotes finished" << std::endl;
	}).wait();
}

void test_quotes_get_historical_data(std::string symbol, cpp_rest::response::precise_time time_start, cpp_rest::response::precise_time time_end, int limit) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical quotes started" << std::endl;
	c.quotes_get_historical_data(symbol, time_start, time_end, limit).then([=](cpp_rest::response::quotes result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical quotes finished" << std::endl;
	}).wait();
}

void test_orderbooks_get_for_all_symbols() {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get current orderbooks started" << std::endl;
	c.orderbooks_get_for_all_symbols().then([=](cpp_rest::response::orderbooks result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get current orderbooks finished" << std::endl;
	}).wait();
}

void test_orderbooks_get_for_symbol(std::string symbol_id) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get current orderbooks started" << std::endl;
	c.orderbooks_get_for_symbol(symbol_id).then([=](cpp_rest::response::orderbook result) {
		std::wcout << result << std::endl;
		std::wcout << "Get current orderbooks finished" << std::endl;
	}).wait();
}

void test_orderbooks_get_latest_data(std::string symbol_id) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get latest orderbooks started" << std::endl;
	c.orderbooks_get_latest_data(symbol_id).then([=](cpp_rest::response::orderbooks result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get latest orderbooks finished" << std::endl;
	}).wait();
}

void test_orderbooks_get_latest_data(std::string symbol_id, int limit) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get latest orderbooks started" << std::endl;
	c.orderbooks_get_latest_data(symbol_id, limit).then([=](cpp_rest::response::orderbooks result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get latest orderbooks finished" << std::endl;
	}).wait();
}

void test_orderbooks_get_historical_data(std::string symbol, cpp_rest::response::precise_time time_start) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical orderbooks started" << std::endl;
	c.orderbooks_get_historical_data(symbol, time_start).then([=](cpp_rest::response::orderbooks result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical orderbooks finished" << std::endl;
	}).wait();
}

void test_orderbooks_get_historical_data(std::string symbol, cpp_rest::response::precise_time time_start, int limit) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical orderbooks started" << std::endl;
	c.orderbooks_get_historical_data(symbol, time_start, limit).then([=](cpp_rest::response::orderbooks result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical orderbooks finished" << std::endl;
	}).wait();
}

void test_orderbooks_get_historical_data(std::string symbol, cpp_rest::response::precise_time time_start, cpp_rest::response::precise_time time_end) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical orderbooks started" << std::endl;
	c.orderbooks_get_historical_data(symbol, time_start, time_end).then([=](cpp_rest::response::orderbooks result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical orderbooks finished" << std::endl;
	}).wait();
}

void test_orderbooks_get_historical_data(std::string symbol, cpp_rest::response::precise_time time_start, cpp_rest::response::precise_time time_end, int limit) {
	cpp_rest::coin_api c(TEST_KEY);   
	std::wcout << "Get historical orderbooks started" << std::endl;
	c.orderbooks_get_historical_data(symbol, time_start, time_end, limit).then([=](cpp_rest::response::orderbooks result) {
		for(size_t i=0; i<result.size(); i++) {
			std::wcout << result[i] << std::endl;
		}
		std::wcout << "Get historical orderbooks finished" << std::endl;
	}).wait();
}

int main(int argc, char* argv[]) {
	try {
		// https://rest.coinapi.io/v1/exchanges?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_metadata_list_all_exchanges();

		// https://rest.coinapi.io/v1/assets?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_metadata_list_all_assets();

		// https://rest.coinapi.io/v1/symbols?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_metadata_list_all_symbols();

		// https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_get_exchange_rate("BTC", "USD");
		// https://rest.coinapi.io/v1/exchangerate/BTC/USD?time=2016-11-01T22:08:41Z&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_get_exchange_rate("BTC", "USD", cpp_rest::response::precise_time(2016,11,1,22,8,41));

		// https://rest.coinapi.io/v1/exchangerate/BTC?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_get_all_exchange_rates("BTC");

		// https://rest.coinapi.io/v1/ohlcv/periods?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_ohlcv_list_all_periods();

		// https://rest.coinapi.io/v1/ohlcv/BITSTAMP_SPOT_BTC_USD/latest?period_id=1MIN&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_ohlcv_get_latest_timeseries("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::PERIOD_1MIN);

		// https://rest.coinapi.io/v1/ohlcv/BITSTAMP_SPOT_BTC_USD/latest?period_id=1MIN&limit=5&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_ohlcv_get_latest_timeseries("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::PERIOD_1MIN, 5);

		// https://rest.coinapi.io/v1/ohlcv/BITSTAMP_SPOT_BTC_USD/history?period_id=1MIN&time_start=2016-11-01T22:08:41Z&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_ohlcv_get_historical_timeseries("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::PERIOD_1MIN, cpp_rest::response::precise_time(2016,11,1,22,8,41));

		// https://rest.coinapi.io/v1/ohlcv/BITSTAMP_SPOT_BTC_USD/history?period_id=1MIN&time_start=2016-11-01T22:08:41Z&time_end=2017-06-25T10:24:07-05:00&limit=5&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_ohlcv_get_historical_timeseries("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::PERIOD_1MIN, cpp_rest::response::precise_time(2016,11,1,22,8,41), cpp_rest::response::precise_time(2017,6,25,3,24,7), 5);

		// https://rest.coinapi.io/v1/ohlcv/BITSTAMP_SPOT_BTC_USD/history?period_id=1MIN&time_start=2016-11-01T22:08:41Z&time_end=2017-06-25T10:24:07-05:00&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_ohlcv_get_historical_timeseries("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::PERIOD_1MIN, cpp_rest::response::precise_time(2016,11,1,22,8,41), cpp_rest::response::precise_time(2017,6,25,3,24,7));

		// https://rest.coinapi.io/v1/ohlcv/BITSTAMP_SPOT_BTC_USD/history?period_id=1MIN&time_start=2016-11-01T22:08:41Z&limit=5&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_ohlcv_get_historical_timeseries("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::PERIOD_1MIN, cpp_rest::response::precise_time(2016,11,1,22,8,41), 5);

		// https://rest.coinapi.io/v1/trades/latest?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_trades_get_latest_data();

		// https://rest.coinapi.io/v1/trades/latest?limit=5&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_trades_get_latest_data(5);

		// https://rest.coinapi.io/v1/trades/BITSTAMP_SPOT_BTC_USD/latest?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_trades_get_latest_data("BITSTAMP_SPOT_BTC_USD");

		// https://rest.coinapi.io/v1/trades/BITSTAMP_SPOT_BTC_USD/latest?limit=5&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_trades_get_latest_data("BITSTAMP_SPOT_BTC_USD", 5);

		// https://rest.coinapi.io/v1/trades/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_trades_get_historical_data("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::precise_time(2016,11,1,22,8,41));

		// https://rest.coinapi.io/v1/trades/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&limit=5&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_trades_get_historical_data("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::precise_time(2016,11,1,22,8,41), 5);

		// https://rest.coinapi.io/v1/trades/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&time_end=2017-06-25T10:24:08-05:00&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_trades_get_historical_data("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::precise_time(2016,11,1,22,8,41), cpp_rest::response::precise_time(2017,6,25,3,24,8));

		// https://rest.coinapi.io/v1/trades/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&time_end=2017-06-25T10:24:08-05:00&limit=5&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_trades_get_historical_data("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::precise_time(2016,11,1,22,8,41), cpp_rest::response::precise_time(2017,6,25,3,24,8), 5);

		// https://rest.coinapi.io/v1/quotes/current?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_quotes_get_for_all_symbols();

		// https://rest.coinapi.io/v1/quotes/BITSTAMP_SPOT_BTC_USD/current?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_quotes_get_for_symbol("BITSTAMP_SPOT_BTC_USD");

		// https://rest.coinapi.io/v1/quotes/latest?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_quotes_get_latest_data();

		// https://rest.coinapi.io/v1/quotes/latest?limit=5&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_quotes_get_latest_data(5);

		// https://rest.coinapi.io/v1/quotes/BITSTAMP_SPOT_BTC_USD/latest?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_quotes_get_latest_data("BITSTAMP_SPOT_BTC_USD");

		// https://rest.coinapi.io/v1/quotes/BITSTAMP_SPOT_BTC_USD/latest?limit=5&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_quotes_get_latest_data("BITSTAMP_SPOT_BTC_USD", 5);

		// https://rest.coinapi.io/v1/quotes/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_orderbooks_get_historical_data("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::precise_time(2016,11,1,22,8,41));

		// https://rest.coinapi.io/v1/quotes/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&limit=5&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_orderbooks_get_historical_data("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::precise_time(2016,11,1,22,8,41), 5);

		// https://rest.coinapi.io/v1/quotes/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&time_end=2017-06-25T10:24:09-05:00&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_orderbooks_get_historical_data("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::precise_time(2016,11,1,22,8,41), cpp_rest::response::precise_time(2017,6,25,3,24,9));

		// https://rest.coinapi.io/v1/quotes/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&time_end=2017-06-25T10:24:09-05:00&limit=5&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_orderbooks_get_historical_data("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::precise_time(2016,11,1,22,8,41), cpp_rest::response::precise_time(2017,6,25,3,24,9), 5);

		// https://rest.coinapi.io/v1/orderbooks/current?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_orderbooks_get_for_all_symbols();

		// https://rest.coinapi.io/v1/orderbooks/BITSTAMP_SPOT_BTC_USD/current?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_orderbooks_get_for_symbol("BITSTAMP_SPOT_BTC_USD");

		// https://rest.coinapi.io/v1/orderbooks/BITSTAMP_SPOT_BTC_USD/latest?apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_orderbooks_get_latest_data("BITSTAMP_SPOT_BTC_USD");

		// https://rest.coinapi.io/v1/orderbooks/BITSTAMP_SPOT_BTC_USD/latest?limit=5&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_orderbooks_get_latest_data("BITSTAMP_SPOT_BTC_USD", 5);

		// https://rest.coinapi.io/v1/orderbooks/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_orderbooks_get_historical_data("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::precise_time(2016,11,1,22,8,41));

		// https://rest.coinapi.io/v1/orderbooks/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&limit=5&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_orderbooks_get_historical_data("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::precise_time(2016,11,1,22,8,41), 5);

		// https://rest.coinapi.io/v1/orderbooks/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&time_end=2017-06-25T10:24:09-05:00&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_orderbooks_get_historical_data("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::precise_time(2016,11,1,22,8,41), cpp_rest::response::precise_time(2017,6,25,3,24,9));

		// https://rest.coinapi.io/v1/orderbooks/BITSTAMP_SPOT_BTC_USD/history?time_start=2016-11-01T22:08:41Z&time_end=2017-06-25T10:24:09-05:00&limit=5&apikey=73034021-0EBC-493D-8A00-E0F138111F41
		test_orderbooks_get_historical_data("BITSTAMP_SPOT_BTC_USD", cpp_rest::response::precise_time(2016,11,1,22,8,41), cpp_rest::response::precise_time(2017,6,25,3,24,9), 5);

	}
	catch(const std::exception& ex) {
		std::wcout << "Exception" << std::endl;
		std::wcout << ex.what() << std::endl;
	}	

	return 0;
}


