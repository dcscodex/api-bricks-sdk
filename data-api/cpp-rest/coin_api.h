#ifndef _COIN_REST_API_
#define _COIN_REST_API_

#include <cpprest/http_client.h>
#include <cpprest/filestream.h>


#define TIME_BUFFER_CAPACITY 64

#include <string>
#include <sstream>
#include <vector>
#include <cstring>
#include <cstdio>

namespace cpp_rest {

	class coin_api_exception : public std::exception {
		private:
			int code;
		public:
			coin_api_exception(int code) : std::exception() {
				this->code = code;
			}

			virtual const char* what() const noexcept {
				switch(code) {
					case 400:
						return "Bad request";
						break;
					case 401:
						return "Key is wrong";
						break;
					case 403:
						return "Key doesnt\'t have enough privileges to access this resource";
						break;
					case 404:
						return "Not found";
						break;
					case 500:
						return "Server error";
						break;
					case 429:
						return "Exceeded API key rate limits";
						break;
					default:
						return "Unknown";
						break;
				}
			}
	};

	namespace response {

		struct precise_time {
			int year;
			int month;
			int day;
			int hours;
			int minutes;
			int seconds;
			int nanoseconds;

			precise_time() {
				this->year = 0;
				this->month = 0;
				this->day = 0;
				this->hours = 0;
				this->minutes = 0;
				this->seconds = 0;
				this->nanoseconds = 0;
			}

			precise_time(int year, int month, int day, int hours, int minutes, int seconds, int nanoseconds) {
				this->year = year;
				this->month = month;
				this->day = day;
				this->hours = hours;
				this->minutes = minutes;
				this->seconds = seconds;
				this->nanoseconds = nanoseconds;
			}

			precise_time(int year, int month, int day, int hours, int minutes, int seconds) {
				this->year = year;
				this->month = month;
				this->day = day;
				this->hours = hours;
				this->minutes = minutes;
				this->seconds = seconds;
				this->nanoseconds = 0;
			}
		};


		struct exchange {
			std::string exchange_id; // Our exchange identifier
			std::string name;        // Display name of the exchange
			std::string website;     // Exchange website address			
		};

		struct asset {
			std::string asset_id;    // Our asset identifier. Superset of the ISO 4217 currency codes standard.
			std::string name;	     // Display name of the asset.
			bool type_is_crypto;     // true for cryptocurrency assets, false otherwise.
		};

		enum SYMBOL_TYPE {
            SYMBOL_TYPE_INVALID,     // Reserverd value for invalid data
			SYMBOL_TYPE_SPOT,	     // FX Spot	           Agreement to exchange one asset for another one (e.g. Buy BTC for USD)
			SYMBOL_TYPE_FUTURES,     // Futures contract   FX Spot derivative contract where traders agree to trade fx spot at predetermined future time
			SYMBOL_TYPE_OPTION       // Option contract    FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date
		};

		enum OPTION_EXERCISE_STYLE {
			OPTION_EXERCISE_INVALID,
			OPTION_EXERCISE_AMERICAN,
			OPTION_EXERCISE_EUROPEAN
		};

        struct symbol {
			std::string symbol_id;       // Our symbol identifier, see table below for format description.
			std::string exchange_id;     // Our identifier of the exchange where symbol is traded.
			SYMBOL_TYPE symbol_type;     // Type of symbol (possible values are: SPOT, FUTURES or OPTION)
			std::string asset_id_base;   // FX Spot base asset identifier, for derivatives it's contact underlying (e.g. BTC for BTC/USD)
			std::string asset_id_quote;  // FX Spot quote asset identifier, for derivatives it's contract underlying (e.g. USD for BTC/USD)

			bool option_type_is_call;    // Boolean value representing option type. true for Call options, false for Put options
			double option_strike_price;  // Price at which option contract can be exercised
			double option_contract_unit; //	Base asset amount of underlying spot which single option represents
			OPTION_EXERCISE_STYLE option_exercise_style; // Option exercise style. Can be EUROPEAN or AMERICAN
			precise_time option_expiration_time; //	Option contract expiration time in ISO 8601
			precise_time future_delivery_time;   // Predetermined time of futures contract delivery date in ISO 8601
		};

		struct exchange_rate {
			precise_time time;           // Time in ISO 8601 of the market data used to calculate exchange rate
			std::string asset_id_base;   // Exchange rate base asset identifier
			std::string asset_id_quote;  // Exchange rate quote asset identifier
			double rate;                 // Exchange rate between assets			
		};

        enum PERIOD_IDENTIFIER {
			PERIOD_INVALID,
			PERIOD_1SEC, 
			PERIOD_2SEC,
			PERIOD_3SEC,
			PERIOD_4SEC,
			PERIOD_5SEC,
			PERIOD_6SEC,
			PERIOD_10SEC,
			PERIOD_15SEC,
			PERIOD_20SEC,
			PERIOD_30SEC,
			PERIOD_1MIN,
			PERIOD_2MIN,
			PERIOD_3MIN,
			PERIOD_4MIN,
			PERIOD_5MIN,
			PERIOD_6MIN,
			PERIOD_10MIN,
			PERIOD_15MIN,
			PERIOD_20MIN,
			PERIOD_30MIN,
			PERIOD_1HRS,
			PERIOD_2HRS,
			PERIOD_3HRS,
			PERIOD_4HRS,
			PERIOD_6HRS,
			PERIOD_8HRS,
			PERIOD_12HRS,
			PERIOD_1DAY,
			PERIOD_2DAY,
			PERIOD_3DAY,
			PERIOD_5DAY,
			PERIOD_7DAY,
			PERIOD_10DAY,
			PERIOD_1MTH,
			PERIOD_2MTH,
			PERIOD_3MTH,
			PERIOD_4MTH,
			PERIOD_6MTH,
			PERIOD_1YRS,
			PERIOD_2YRS,
			PERIOD_3YRS,
			PERIOD_4YRS,
			PERIOD_5YRS
		};

		enum TRADE_SIDE {
			TRADE_SIDE_INVALID,
			TRADE_SIDE_BUY,
			TRADE_SIDE_SELL,
			TRADE_SIDE_BUY_ESTIMATED,
			TRADE_SIDE_SELL_ESTIMATED,
			TRADE_SIDE_UNKNOWN
		};

		struct period {
			PERIOD_IDENTIFIER period_id; // Period identifier, used in other API calls
			int length_seconds;          // Seconds part of period length
			int length_months;           // Months part of period length
			int unit_count;              // Period length in units
			std::string unit_name;		 // Type of unit (second/minute/hour/day/month/year)
			std::string display_name;    // Display name of period length
        };

		struct timedata {
			precise_time time_period_start; // Period starting time (range left inclusive)
			precise_time time_period_end;	// Period ending time (range right exclusive)
			precise_time time_open;			// Time of first trade inside period range
			precise_time time_close;		// Time of last trade inside period range
			double price_open;	            // First trade price inside period range
			double price_high;	            // Highest traded price inside period range
			double price_low;	            // Lowest traded price inside period range
			double price_close;	            // Last trade price inside period range
			double volume_traded;	        // Cumulative base amount traded inside period range
			int trades_count;	            // Amount of trades executed inside period range
		};

		struct trade {
			std::string symbol_id;			// Our symbol identifier
			precise_time time_exchange;		// Time of trade reported by exchange
			precise_time time_coinapi;      // Time when coinapi first received trade from exchange
			std::string uuid;               // Our trade unique identifier in form of UUIDv4
			double price;                   // Price of the transaction
			double size;					// Base asset amount traded in the transaction
			TRADE_SIDE taker_side;			//Aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN)
		};

		struct quote {
			std::string symbol_id;			// Our symbol identifier
			precise_time time_exchange;		// Exchange time of orderbook
			precise_time time_coinapi;		// CoinAPI time when orderbook received from exchange
			double ask_price;				// Best asking price
			double ask_size;				// Volume resting on best ask
			double bid_price;               // Best bidding price
			double bid_size;                // Volume resting on best bid
		};

		struct quote_with_trade {
			struct quote quote;
			trade last_trade;				// Last executed transaction
		};

		struct level {
			double price;                   // Price of bid/ask
            double size;                    // Volume resting on bid/ask level in base amount
		};

		struct orderbook {
			std::string symbol_id;			// Our symbol identifier
			precise_time time_exchange;		// Exchange time of orderbook
			precise_time time_coinapi;		// CoinAPI time when orderbook received from exchange	
			std::vector<level> bids;        // Best 20 bid levels in order from best to worst
			std::vector<level> asks;        // Best 20 ask levels in order from best to worst
		};  


		typedef std::vector<exchange> exchanges;
        typedef std::vector<asset> assets;
        typedef std::vector<symbol> symbols;
        typedef std::vector<exchange_rate> exchange_rates;
        typedef std::vector<period> periods;
        typedef std::vector<timedata> timeseries;
		typedef std::vector<trade> trades;
		typedef std::vector<quote> quotes;
		typedef std::vector<quote_with_trade> quotes_with_trade;
		typedef std::vector<orderbook> orderbooks;
	}

	class coin_api {
		private:
			std::wstring key;

			pplx::task<web::json::value> get_json(const utility::string_t & path_query_fragment) const {
		        web::http::client::http_client_config client_config;				

				web::http::http_request msg(web::http::methods::GET);
				std::string str_key(key.begin(), key.end());

				msg.set_request_uri(path_query_fragment);
				msg.headers().add(U("X-CoinAPI-Key"), utility::string_t(str_key.c_str()));

				// used for debug purposes
                //std::wcout << "path_query_fragment: " << path_query_fragment.c_str() << std::endl;

		        web::http::client::http_client client(U("https://rest.coinapi.io/"), client_config);
				return client.request(msg).then([=](web::http::http_response response) -> pplx::task<web::json::value> {
					if(response.status_code() == web::http::status_codes::OK) {
			            return response.extract_json();
			        }
					else {
						throw coin_api_exception(response.status_code());
					}
			        // Handle error cases, for now return empty json value...
			        return pplx::task_from_result(web::json::value());
				});
			}		

			static response::precise_time parseISO8601time(const std::string& iso8601time) {
				response::precise_time result;
				sscanf(iso8601time.c_str(), "%d-%d-%dT%d:%d:%d.%dZ", &result.year, &result.month, &result.day, &result.hours, &result.minutes, &result.seconds, &result.nanoseconds);
				result.nanoseconds *= 100;
				return result;
			}

			static std::string iso8601time_to_str(const response::precise_time& time, bool nanoseconds = true) {
				char time_Buffer[TIME_BUFFER_CAPACITY];
				if (nanoseconds)
					sprintf(time_Buffer, "%04d-%02d-%02dT%02d:%02d:%02d.%07d", time.year, time.month, time.day, time.hours, time.minutes, time.seconds, time.nanoseconds/100);
				else
					sprintf(time_Buffer, "%04d-%02d-%02dT%02d:%02d:%02d", time.year, time.month, time.day, time.hours, time.minutes, time.seconds);
				return time_Buffer;
			}

			static void parse_exchange_rate(response::exchange_rate& result, const web::json::value& exchangerate_entry) {
				if (exchangerate_entry.has_field("asset_id_base"))
					result.asset_id_base = exchangerate_entry.as_object().at("asset_id_base").as_string().c_str();
				result.asset_id_quote = exchangerate_entry.as_object().at("asset_id_quote").as_string().c_str();
				result.rate = exchangerate_entry.as_object().at("rate").as_double();

				std::string time = exchangerate_entry.as_object().at("time").as_string().c_str();
				result.time = parseISO8601time(time);
			}

			static void parse_timeseries(response::timeseries& timeseries, const web::json::value& json_response) {
				if (json_response.is_array()) {
					for(size_t i=0; i<json_response.size(); i++) {
						const web::json::value& timedata_entry = json_response.as_array().at(i);
						if (timedata_entry.is_object()) {
							response::timedata timedata;
							timedata.time_period_start = parseISO8601time(timedata_entry.as_object().at("time_period_start").as_string().c_str());
							timedata.time_period_end = parseISO8601time(timedata_entry.as_object().at("time_period_end").as_string().c_str());
							timedata.time_open = parseISO8601time(timedata_entry.as_object().at("time_open").as_string().c_str());
							timedata.time_close = parseISO8601time(timedata_entry.as_object().at("time_close").as_string().c_str());
							timedata.price_open = timedata_entry.as_object().at("price_open").as_double();
							timedata.price_high = timedata_entry.as_object().at("price_high").as_double();
							timedata.price_low = timedata_entry.as_object().at("price_low").as_double();
							timedata.price_close = timedata_entry.as_object().at("price_close").as_double();
							timedata.volume_traded = timedata_entry.as_object().at("volume_traded").as_double();
							timedata.trades_count = timedata_entry.as_object().at("trades_count").as_integer();
							timeseries.push_back(timedata);
						}
					}
				}
			}

			static response::TRADE_SIDE parse_trade_side(const std::string& side) {
				if (side=="BUY")
					return response::TRADE_SIDE_BUY;
				if (side=="SELL")
					return response::TRADE_SIDE_SELL;
				if (side=="BUY_ESTIMATED")
					return response::TRADE_SIDE_BUY_ESTIMATED;
				if (side=="SELL_ESTIMATED")
					return response::TRADE_SIDE_SELL_ESTIMATED;
				if (side=="SELL_UNKNOWN")
					return response::TRADE_SIDE_UNKNOWN;
				return response::TRADE_SIDE_INVALID;
			}

			
			static void parse_trade(response::trade& result, const web::json::value& json_response, bool symbol_id) {
				if (json_response.has_field("symbol_id"))
					result.symbol_id = json_response.as_object().at("symbol_id").as_string().c_str();
			
				result.time_exchange = parseISO8601time(json_response.as_object().at("time_exchange").as_string().c_str());
				result.time_coinapi = parseISO8601time(json_response.as_object().at("time_coinapi").as_string().c_str());
				result.uuid = json_response.as_object().at("uuid").as_string().c_str();
				result.price = json_response.as_object().at("price").as_double();
				result.size = json_response.as_object().at("size").as_double();
				result.taker_side = parse_trade_side(json_response.as_object().at("taker_side").as_string().c_str());
			}

			static void parse_trades(response::trades& result, const web::json::value& json_response) {
				if (json_response.is_array()) {
					for(size_t i=0; i<json_response.size(); i++) {
						const web::json::value& trade_entry = json_response.as_array().at(i);
						if (trade_entry.is_object()) {
							response::trade entry;

							parse_trade(entry, trade_entry, true);							
							result.push_back(entry);
						}
					}
				}
			}

			static void parse_quote(response::quote& result, const web::json::value& json_response) {
				result.symbol_id = json_response.as_object().at("symbol_id").as_string().c_str();
				result.time_exchange = parseISO8601time(json_response.as_object().at("time_exchange").as_string().c_str());
				result.time_coinapi = parseISO8601time(json_response.as_object().at("time_coinapi").as_string().c_str());
				result.ask_price = json_response.as_object().at("ask_price").as_double();
				result.ask_size = json_response.as_object().at("ask_size").as_double();
				result.bid_price = json_response.as_object().at("bid_price").as_double();
				result.bid_size = json_response.as_object().at("bid_size").as_double();	
			} 

			static void parse_quotes(response::quotes& result, const web::json::value& json_response) {
				if (json_response.is_array()) {
					for(size_t i=0; i<json_response.size(); i++) {
						const web::json::value& quote_entry = json_response.as_array().at(i);
						if (quote_entry.is_object()) {
							response::quote entry;

							parse_quote(entry, quote_entry);							
							result.push_back(entry);
						}
					}
				}
			}

			static void parse_levels(std::vector<response::level>& result, const web::json::value& json_response) {
				if (json_response.is_array()) {
					for(size_t i=0; i<json_response.size(); i++) {
						const web::json::value& level_entry = json_response.as_array().at(i);
						if (level_entry.is_object()) {
							response::level entry;

							entry.price = level_entry.as_object().at("price").as_double();
							entry.size = level_entry.as_object().at("size").as_double();

							result.push_back(entry);
						}
					}
				}
			}

			static void parse_orderbook(response::orderbook& result, const web::json::value& json_response) {
				result.symbol_id = json_response.as_object().at("symbol_id").as_string().c_str();
				result.time_exchange = parseISO8601time(json_response.as_object().at("time_exchange").as_string().c_str());
				result.time_coinapi = parseISO8601time(json_response.as_object().at("time_coinapi").as_string().c_str());

				if (json_response.has_field("asks"))
					parse_levels(result.asks, json_response.as_object().at("asks"));
				if (json_response.has_field("bids"))
					parse_levels(result.bids, json_response.as_object().at("bids"));
			} 

			static void parse_orderbooks(response::orderbooks& result, const web::json::value& json_response) {
				if (json_response.is_array()) {
					for(size_t i=0; i<json_response.size(); i++) {
						const web::json::value& orderbook_entry = json_response.as_array().at(i);
						if (orderbook_entry.is_object()) {
							response::orderbook entry;

							parse_orderbook(entry, orderbook_entry);							
							result.push_back(entry);
						}
					}
				}
			}

			static response::PERIOD_IDENTIFIER to_period_identifier(const std::string& period_str) {
				if (period_str=="1SEC")
					return response::PERIOD_1SEC;
				if (period_str=="2SEC")
					return response::PERIOD_2SEC;
				if (period_str=="3SEC")
					return response::PERIOD_3SEC;
				if (period_str=="4SEC")
					return response::PERIOD_4SEC;
				if (period_str=="5SEC")
					return response::PERIOD_5SEC;
				if (period_str=="6SEC")
					return response::PERIOD_6SEC;
				if (period_str=="19SEC")
					return response::PERIOD_10SEC;
				if (period_str=="15SEC")
					return response::PERIOD_15SEC;
				if (period_str=="20SEC")
					return response::PERIOD_20SEC;
				if (period_str=="30SEC")
					return response::PERIOD_30SEC;
				if (period_str=="1MIN")			
					return response::PERIOD_1MIN;
				if (period_str=="2MIN")			
					return response::PERIOD_2MIN;
				if (period_str=="3MIN")			
					return response::PERIOD_3MIN;
				if (period_str=="4MIN")			
					return response::PERIOD_4MIN;
				if (period_str=="5MIN")			
					return response::PERIOD_5MIN;
				if (period_str=="6MIN")			
					return response::PERIOD_6MIN;
				if (period_str=="10MIN")			
					return response::PERIOD_10MIN;
				if (period_str=="15MIN")			
					return response::PERIOD_15MIN;
				if (period_str=="20MIN")			
					return response::PERIOD_20MIN;
				if (period_str=="30MIN")			
					return response::PERIOD_30MIN;
				if (period_str=="1HRS")			
					return response::PERIOD_1HRS;
				if (period_str=="2HRS")			
					return response::PERIOD_2HRS;
				if (period_str=="3HRS")			
					return response::PERIOD_3HRS;
				if (period_str=="4HRS")			
					return response::PERIOD_4HRS;
				if (period_str=="6HRS")			
					return response::PERIOD_6HRS;
				if (period_str=="8HRS")			
					return response::PERIOD_8HRS;
				if (period_str=="12HRS")			
					return response::PERIOD_12HRS;
				if (period_str=="1DAY")			
					return response::PERIOD_1DAY;
				if (period_str=="2DAY")			
					return response::PERIOD_2DAY;
				if (period_str=="3DAY")			
					return response::PERIOD_3DAY;
				if (period_str=="5DAY")			
					return response::PERIOD_5DAY;
				if (period_str=="7DAY")			
					return response::PERIOD_7DAY;
				if (period_str=="10DAY")			
					return response::PERIOD_10DAY;
				if (period_str=="1MTH")			
					return response::PERIOD_1MTH;
				if (period_str=="2MTH")			
					return response::PERIOD_2MTH;
				if (period_str=="3MTH")			
					return response::PERIOD_3MTH;
				if (period_str=="4MTH")			
					return response::PERIOD_4MTH;
				if (period_str=="6MTH")			
					return response::PERIOD_6MTH;
				if (period_str=="1YRS")			
					return response::PERIOD_1YRS;
				if (period_str=="2YRS")			
					return response::PERIOD_2YRS;
				if (period_str=="3YRS")			
					return response::PERIOD_3YRS;
				if (period_str=="4YRS")			
					return response::PERIOD_4YRS;
				if (period_str=="5YRS")			
					return response::PERIOD_5YRS;
				return response::PERIOD_INVALID;
			}

			static std::string period_to_str(response::PERIOD_IDENTIFIER period) {
				switch(period) {
					case response::PERIOD_1SEC:
						return "1SEC";
						break;
					case response::PERIOD_2SEC:
						return "2SEC";
						break;
					case response::PERIOD_3SEC:
						return "3SEC";
						break;
					case response::PERIOD_4SEC:
						return "4SEC";
						break;
					case response::PERIOD_5SEC:
						return "5SEC";
						break;
					case response::PERIOD_6SEC:
						return "6SEC";
						break;
					case response::PERIOD_10SEC:
						return "10SEC";
						break;
					case response::PERIOD_15SEC:
						return "15SEC";
						break;
					case response::PERIOD_20SEC:
						return "20SEC";
						break;
					case response::PERIOD_30SEC:
						return "30SEC";
						break;
					case response::PERIOD_1MIN:
						return "1MIN";
						break;
					case response::PERIOD_2MIN:
						return "2MIN";
						break;
					case response::PERIOD_3MIN:
						return "3MIN";
						break;
					case response::PERIOD_4MIN:
						return "4MIN";
						break;
					case response::PERIOD_5MIN:
						return "5MIN";
						break;
					case response::PERIOD_6MIN:
						return "6MIN";
						break;
					case response::PERIOD_10MIN:
						return "10MIN";
						break;
					case response::PERIOD_15MIN:
						return "15MIN";
						break;
					case response::PERIOD_20MIN:
						return "20MIN";
						break;
					case response::PERIOD_30MIN:
						return "30MIN";
						break;
					case response::PERIOD_1HRS:
						return "1HRS";
						break;
					case response::PERIOD_2HRS:
						return "2HRS";
						break;
					case response::PERIOD_3HRS:
						return "3HRS";
						break;
					case response::PERIOD_4HRS:
						return "4HRS";
						break;
					case response::PERIOD_6HRS:
						return "6HRS";
						break;
					case response::PERIOD_8HRS:
						return "8HRS";
						break;
					case response::PERIOD_12HRS:
						return "12HRS";
						break;
					case response::PERIOD_1DAY:
						return "1DAY";
						break;
					case response::PERIOD_2DAY:
						return "2DAY";
						break;
					case response::PERIOD_3DAY:
						return "3DAY";
						break;
					case response::PERIOD_5DAY:
						return "5DAY";
						break;
					case response::PERIOD_7DAY:
						return "7DAY";
						break;
					case response::PERIOD_10DAY:
						return "10DAY";
						break;
					case response::PERIOD_1MTH:
						return "1MTH";
						break;
					case response::PERIOD_2MTH:
						return "2MTH";
						break;
					case response::PERIOD_3MTH:
						return "3MTH";
						break;
					case response::PERIOD_4MTH:
						return "4MTH";
						break;
					case response::PERIOD_6MTH:
						return "6MTH";
						break;
					case response::PERIOD_1YRS:
						return "1YRS";
						break;
					case response::PERIOD_2YRS:
						return "2YRS";
						break;
					case response::PERIOD_3YRS:
						return "3YRS";
						break;
					case response::PERIOD_4YRS:
						return "4YRS";
						break;
					case response::PERIOD_5YRS:
						return "5YRS";
						break;
					default:
						return "INVALID";
						break;
				}		
			}

		public:
			coin_api(const std::string& key) {
				this->key = std::wstring(key.begin(), key.end());
			}

			coin_api(const std::wstring& key) {
				this->key = key;
			}

			// Get a detailed list of exchanges provided by the system.
			pplx::task<response::exchanges> metadata_list_all_exchanges() {
				return get_json(web::uri_builder(U("/v1/exchanges")).to_string()).then([](web::json::value json_response) -> pplx::task<response::exchanges> {
					response::exchanges result;

					if (json_response.is_array()) {
						for(size_t i=0; i<json_response.size(); i++) {
							const web::json::value& exchange_entry = json_response.as_array().at(i);
							if (exchange_entry.is_object()) {
								response::exchange entry;
								entry.exchange_id = exchange_entry.as_object().at("exchange_id").as_string().c_str();
								if (exchange_entry.as_object().at("name").is_string())
									entry.name = exchange_entry.as_object().at("name").as_string().c_str();
								entry.website = exchange_entry.as_object().at("website").as_string().c_str();
								result.push_back(entry);
							}
					    }
					}
			        return pplx::task_from_result(result);
				});
			}

            // Get detailed list of assets.
			pplx::task<response::assets> metadata_list_all_assets() {
				return get_json(web::uri_builder(U("/v1/assets")).to_string()).then([](web::json::value json_response) -> pplx::task<response::assets> {
					response::assets result;

					if (json_response.is_array()) {
						for(size_t i=0; i<json_response.size(); i++) {
							const web::json::value& asset_entry = json_response.as_array().at(i);
							if (asset_entry.is_object()) {
								response::asset entry;
								entry.asset_id = asset_entry.as_object().at("asset_id").as_string().c_str();
								if (asset_entry.as_object().at("name").is_string())
									entry.name = asset_entry.as_object().at("name").as_string().c_str();
								if (asset_entry.as_object().at("type_is_crypto").is_integer())
									entry.type_is_crypto = (asset_entry.as_object().at("type_is_crypto").as_integer()) != 0;
								if (asset_entry.as_object().at("type_is_crypto").is_boolean())
									entry.type_is_crypto = asset_entry.as_object().at("type_is_crypto").as_bool();
								result.push_back(entry);
							}
					    }
					}
			        return pplx::task_from_result(result);
				});
			}

			// Get detailed list of all symbols.
			pplx::task<response::symbols> metadata_list_all_symbols() {
				return get_json(web::uri_builder(U("/v1/symbols")).to_string()).then([](web::json::value json_response) -> pplx::task<response::symbols> {
					response::symbols result;

					if (json_response.is_array()) {
						for(size_t i=0; i<json_response.size(); i++) {
							const web::json::value& symbol_entry = json_response.as_array().at(i);
							if (symbol_entry.is_object()) {
								response::symbol entry;
								entry.symbol_type = response::SYMBOL_TYPE_INVALID;
								entry.option_exercise_style = response::OPTION_EXERCISE_INVALID;

								entry.symbol_id = symbol_entry.as_object().at("symbol_id").as_string().c_str();
								entry.exchange_id = symbol_entry.as_object().at("exchange_id").as_string().c_str();
								std::string symbol_type = symbol_entry.as_object().at("symbol_type").as_string().c_str();
								if (symbol_type=="SPOT")
									entry.symbol_type = response::SYMBOL_TYPE_SPOT;
								if (symbol_type=="FUTURES") {
									entry.symbol_type = response::SYMBOL_TYPE_FUTURES;
									entry.future_delivery_time = parseISO8601time(symbol_entry.as_object().at("future_delivery_time").as_string().c_str());
								}
								if (symbol_type=="OPTION") {
									entry.symbol_type = response::SYMBOL_TYPE_OPTION;

									entry.option_type_is_call = symbol_entry.as_object().at("option_type_is_call").as_bool();
									entry.option_strike_price = symbol_entry.as_object().at("option_strike_price").as_double();
								    entry.option_contract_unit = symbol_entry.as_object().at("option_contract_unit").as_double();

									std::string option_exercise_style = symbol_entry.as_object().at("option_exercise_style").as_string().c_str();
									if (option_exercise_style=="EUROPEAN") {
										entry.option_exercise_style = response::OPTION_EXERCISE_EUROPEAN;
									}
									if (option_exercise_style=="AMERICAN") {
										entry.option_exercise_style = response::OPTION_EXERCISE_AMERICAN;
									}
									entry.option_expiration_time = parseISO8601time(symbol_entry.as_object().at("option_expiration_time").as_string().c_str());
								}

								entry.asset_id_base = symbol_entry.as_object().at("asset_id_base").as_string().c_str();
								entry.asset_id_quote = symbol_entry.as_object().at("asset_id_quote").as_string().c_str();

								result.push_back(entry);
							}
					    }
					}
			        return pplx::task_from_result(result);
				});
			}

			// Get exchange rate between pair of requested assets at current time.
			// asset_id_base    Requested exchange rate base asset identifier.
			// asset_id_quote   Requested exchange rate quote asset identifier.
			pplx::task<response::exchange_rate> get_exchange_rate(std::string asset_id_base, std::string asset_id_quote) {
				utility::string_t url = web::uri_builder(U("/v1/exchangerate")).append_path(asset_id_base.c_str()).append_path(asset_id_quote.c_str()).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::exchange_rate> {
					response::exchange_rate result;
					parse_exchange_rate(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			// Get exchange rate between pair of requested assets at specific time.			
			// asset_id_base    Requested exchange rate base asset identifier.
			// asset_id_quote   Requested exchange rate quote asset identifier.
			// time             Time at which exchange rate is calculated
			pplx::task<response::exchange_rate> get_exchange_rate(std::string asset_id_base, std::string asset_id_quote, const response::precise_time& time) {
				utility::string_t url = web::uri_builder(U("/v1/exchangerate")).append_path(asset_id_base.c_str()).append_path(asset_id_quote.c_str()).append_query(U("time"), iso8601time_to_str(time)).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::exchange_rate> {
					response::exchange_rate result;
					parse_exchange_rate(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			// Get the current exchange rate between requested asset and all other assets.
			// asset_id_base	Requested exchange rates base asset identifier
			pplx::task<response::exchange_rates> get_all_exchange_rates(std::string asset_id_base) {
				utility::string_t url = web::uri_builder(U("/v1/exchangerate")).append_path(asset_id_base.c_str()).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::exchange_rates> {
					response::exchange_rates result;
					std::string response_id_base = json_response.as_object().at("asset_id_base").as_string().c_str(); 
		
					web::json::value& rates_array = json_response.as_object().at("rates");
					if (rates_array.is_array()) {
						for(size_t i=0; i<rates_array.size(); i++) {
							const web::json::value& rate_entry = rates_array.as_array().at(i);
							if (rate_entry.is_object()) {
								response::exchange_rate rate;
								parse_exchange_rate(rate, rate_entry);
								rate.asset_id_base = response_id_base;
								result.push_back(rate);								
							}
						}
					}				
			        return pplx::task_from_result(result);
				});
			}

			// Get full list of supported time periods available for requesting OHLCV timeseries data.
			pplx::task<response::periods> ohlcv_list_all_periods() {
				return get_json(web::uri_builder(U("/v1/ohlcv/periods")).to_string()).then([](web::json::value json_response) -> pplx::task<response::periods> {
					response::periods result;

					if (json_response.is_array()) {
						for(size_t i=0; i<json_response.size(); i++) {
							const web::json::value& period_entry = json_response.as_array().at(i);
							if (period_entry.is_object()) {
								response::period entry;

								entry.period_id = to_period_identifier(period_entry.as_object().at("period_id").as_string().c_str());
								entry.length_seconds = period_entry.as_object().at("length_seconds").as_integer();
								entry.length_months = period_entry.as_object().at("length_months").as_integer();
								entry.unit_count = period_entry.as_object().at("unit_count").as_integer();
								entry.unit_name = period_entry.as_object().at("unit_name").as_string().c_str();
								entry.display_name = period_entry.as_object().at("display_name").as_string().c_str();

								result.push_back(entry);
							}
						}
					}
			        return pplx::task_from_result(result);
				});			
			}

			// Get OHLCV latest timeseries data for requested symbol and period, returned in time descending order.
			pplx::task<response::timeseries> ohlcv_get_latest_timeseries(std::string symbol, response::PERIOD_IDENTIFIER period) {
				utility::string_t url = web::uri_builder(U("/v1/ohlcv")).append_path(symbol.c_str()).append_path(U("latest")).append_query(U("period_id"), period_to_str(period).c_str()).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::timeseries> {
					response::timeseries result;
					parse_timeseries(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::timeseries> ohlcv_get_latest_timeseries(std::string symbol, response::PERIOD_IDENTIFIER period, int limit) {
				utility::string_t url = web::uri_builder(U("/v1/ohlcv")).append_path(symbol.c_str()).append_path(U("latest")).append_query(U("period_id"), period_to_str(period).c_str()).append_query(U("limit"), limit).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::timeseries> {
					response::timeseries result;
					parse_timeseries(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			// Get OHLCV timeseries data for requested symbol and period, returned in time ascending order.
			pplx::task<response::timeseries> ohlcv_get_historical_timeseries(std::string symbol, response::PERIOD_IDENTIFIER period, const response::precise_time& time_start) {
				utility::string_t url = web::uri_builder(U("/v1/ohlcv")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("period_id"), period_to_str(period).c_str()).append_query(U("time_start"), iso8601time_to_str(time_start, false)).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::timeseries> {
					response::timeseries result;
					parse_timeseries(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::timeseries> ohlcv_get_historical_timeseries(std::string symbol, response::PERIOD_IDENTIFIER period, const response::precise_time& time_start, int limit) {
				utility::string_t url = web::uri_builder(U("/v1/ohlcv")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("period_id"), period_to_str(period).c_str()).append_query(U("time_start"), iso8601time_to_str(time_start, false)).append_query(U("limit"), limit).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::timeseries> {
					response::timeseries result;
					parse_timeseries(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::timeseries> ohlcv_get_historical_timeseries(std::string symbol, response::PERIOD_IDENTIFIER period, const response::precise_time& time_start, const response::precise_time& time_end) {
				utility::string_t url = web::uri_builder(U("/v1/ohlcv")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("period_id"), period_to_str(period).c_str()).append_query(U("time_start"), iso8601time_to_str(time_start, false)).append_query(U("time_end"), iso8601time_to_str(time_end, false)).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::timeseries> {
					response::timeseries result;
					parse_timeseries(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::timeseries> ohlcv_get_historical_timeseries(std::string symbol, response::PERIOD_IDENTIFIER period, const response::precise_time& time_start, const response::precise_time& time_end, int limit) {
				utility::string_t url = web::uri_builder(U("/v1/ohlcv")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("period_id"), period_to_str(period).c_str()).append_query(U("time_start"), iso8601time_to_str(time_start, false)).append_query(U("time_end"), iso8601time_to_str(time_end, false)).append_query(U("limit"), limit).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::timeseries> {
					response::timeseries result;
					parse_timeseries(result, json_response);
			        return pplx::task_from_result(result);
				});
			}		
		
			// Get latest trades from all symbols up to 1 minute ago or get latest trades from a specific symbol without time limitation.
			// Latest data is always returned in time descending order.
			pplx::task<response::trades> trades_get_latest_data() {
				utility::string_t url = web::uri_builder(U("/v1/trades")).append_path(U("latest")).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::trades> {
					response::trades result;
					parse_trades(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::trades> trades_get_latest_data(int limit) {
				utility::string_t url = web::uri_builder(U("/v1/trades")).append_path(U("latest")).append_query(U("limit"), limit).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::trades> {
					response::trades result;
					parse_trades(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::trades> trades_get_latest_data(std::string symbol) {
				utility::string_t url = web::uri_builder(U("/v1/trades")).append_path(symbol.c_str()).append_path(U("latest")).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::trades> {
					response::trades result;
					parse_trades(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::trades> trades_get_latest_data(std::string symbol, int limit) {
				utility::string_t url = web::uri_builder(U("/v1/trades")).append_path(symbol.c_str()).append_path(U("latest")).append_query(U("limit"), limit).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::trades> {
					response::trades result;
					parse_trades(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::trades> trades_get_historical_data(std::string symbol, const response::precise_time& time_start) {
				utility::string_t url = web::uri_builder(U("/v1/trades")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("time_start"), iso8601time_to_str(time_start, false)).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::trades> {
					response::trades result;
					parse_trades(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::trades> trades_get_historical_data(std::string symbol, const response::precise_time& time_start, int limit) {
				utility::string_t url = web::uri_builder(U("/v1/trades")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("time_start"), iso8601time_to_str(time_start, false)).append_query(U("limit"), limit).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::trades> {
					response::trades result;
					parse_trades(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::trades> trades_get_historical_data(std::string symbol, const response::precise_time& time_start, const response::precise_time& time_end) {
				utility::string_t url = web::uri_builder(U("/v1/trades")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("time_start"), iso8601time_to_str(time_start, false)).append_query(U("time_end"), iso8601time_to_str(time_end, false)).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::trades> {
					response::trades result;
					parse_trades(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::trades> trades_get_historical_data(std::string symbol, const response::precise_time& time_start, const response::precise_time& time_end, int limit) {
				utility::string_t url = web::uri_builder(U("/v1/trades")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("time_start"), iso8601time_to_str(time_start, false)).append_query(U("time_end"), iso8601time_to_str(time_end, false)).append_query(U("limit"), limit).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::trades> {
					response::trades result;
					parse_trades(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			// Get current quotes for all symbols
			pplx::task<response::quotes_with_trade> quotes_get_for_all_symbols() {
				return get_json(web::uri_builder(U("/v1/quotes/current")).to_string()).then([](web::json::value json_response) -> pplx::task<response::quotes_with_trade> {
					response::quotes_with_trade result;

					if (json_response.is_array()) {
						for(size_t i=0; i<json_response.size(); i++) {
							const web::json::value& quote_entry = json_response.as_array().at(i);
							if (quote_entry.is_object()) {
								response::quote_with_trade entry;

								parse_quote(entry.quote, quote_entry); 
								if (quote_entry.has_field("last_trade"))
                                	parse_trade(entry.last_trade, quote_entry.as_object().at("last_trade"), false);
								result.push_back(entry);
							}
						}
					}
			        return pplx::task_from_result(result);
				});		
			}

			// Get current quote for a specific symbol
			pplx::task<response::quote_with_trade> quotes_get_for_symbol(std::string symbol) {
				utility::string_t url = web::uri_builder(U("/v1/quotes")).append_path(symbol.c_str()).append_path(U("current")).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::quote_with_trade> {
					response::quote_with_trade result;
					
					//std::wcout << json_response.as_string().c_str();

					if (json_response.is_object()) {
						parse_quote(result.quote, json_response); 
						if (json_response.has_field("last_trade"))
                        	parse_trade(result.last_trade, json_response.as_object().at("last_trade"), false);		
					}

			        return pplx::task_from_result(result);
				});
			}

			// Get latest quote updates up to 1 minute ago or get updates for a specific symbol without time limit. 
			// Latest data is always returned in time descending order.
			pplx::task<response::quotes> quotes_get_latest_data() {
				return get_json(web::uri_builder(U("/v1/quotes/latest")).to_string()).then([](web::json::value json_response) -> pplx::task<response::quotes> {
					response::quotes result;

					if (json_response.is_array()) {
						for(size_t i=0; i<json_response.size(); i++) {
							const web::json::value& quote_entry = json_response.as_array().at(i);
							if (quote_entry.is_object()) {
								response::quote entry;

								parse_quote(entry, quote_entry); 
								result.push_back(entry);
							}
						}
					}
			        return pplx::task_from_result(result);
				});		
			}

			pplx::task<response::quotes> quotes_get_latest_data(int limit) {
				utility::string_t url = web::uri_builder(U("/v1/quotes")).append_path(U("latest")).append_query(U("limit"), limit).to_string();
				return get_json(web::uri_builder(url).to_string()).then([](web::json::value json_response) -> pplx::task<response::quotes> {
					response::quotes result;

					if (json_response.is_array()) {
						for(size_t i=0; i<json_response.size(); i++) {
							const web::json::value& quote_entry = json_response.as_array().at(i);
							if (quote_entry.is_object()) {
								response::quote entry;

								parse_quote(entry, quote_entry); 
								result.push_back(entry);
							}
						}
					}
			        return pplx::task_from_result(result);
				});		
			}

			pplx::task<response::quotes> quotes_get_latest_data(std::string symbol) {
				utility::string_t url = web::uri_builder(U("/v1/quotes")).append_path(symbol.c_str()).append_path(U("latest")).to_string();
				return get_json(web::uri_builder(url).to_string()).then([](web::json::value json_response) -> pplx::task<response::quotes> {
					response::quotes result;

					if (json_response.is_array()) {
						for(size_t i=0; i<json_response.size(); i++) {
							const web::json::value& quote_entry = json_response.as_array().at(i);
							if (quote_entry.is_object()) {
								response::quote entry;

								parse_quote(entry, quote_entry); 
								result.push_back(entry);
							}
						}
					}
			        return pplx::task_from_result(result);
				});		
			}

			pplx::task<response::quotes> quotes_get_latest_data(std::string symbol, int limit) {
				utility::string_t url = web::uri_builder(U("/v1/quotes")).append_path(symbol.c_str()).append_path(U("latest")).append_query(U("limit"), limit).to_string();
				return get_json(web::uri_builder(url).to_string()).then([](web::json::value json_response) -> pplx::task<response::quotes> {
					response::quotes result;

					if (json_response.is_array()) {
						for(size_t i=0; i<json_response.size(); i++) {
							const web::json::value& quote_entry = json_response.as_array().at(i);
							if (quote_entry.is_object()) {
								response::quote entry;

								parse_quote(entry, quote_entry); 
								result.push_back(entry);
							}
						}
					}
			        return pplx::task_from_result(result);
				});		
			}


			// Get historical quote updates within requested time range, returned in time ascending order
			pplx::task<response::quotes> quotes_get_historical_data(std::string symbol, const response::precise_time& time_start) {
				utility::string_t url = web::uri_builder(U("/v1/quotes")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("time_start"), iso8601time_to_str(time_start, false)).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::quotes> {
					response::quotes result;
					parse_quotes(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::quotes> quotes_get_historical_data(std::string symbol, const response::precise_time& time_start, int limit) {
				utility::string_t url = web::uri_builder(U("/v1/quotes")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("time_start"), iso8601time_to_str(time_start, false)).append_query(U("limit"), limit).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::quotes> {
					response::quotes result;
					parse_quotes(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::quotes> quotes_get_historical_data(std::string symbol, const response::precise_time& time_start, const response::precise_time& time_end) {
				utility::string_t url = web::uri_builder(U("/v1/quotes")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("time_start"), iso8601time_to_str(time_start, false)).append_query(U("time_end"), iso8601time_to_str(time_end, false)).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::quotes> {
					response::quotes result;
					parse_quotes(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::quotes> quotes_get_historical_data(std::string symbol, const response::precise_time& time_start, const response::precise_time& time_end, int limit) {
				utility::string_t url = web::uri_builder(U("/v1/quotes")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("time_start"), iso8601time_to_str(time_start, false)).append_query(U("time_end"), iso8601time_to_str(time_end, false)).append_query(U("limit"), limit).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::quotes> {
					response::quotes result;
					parse_quotes(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			// Get current orderbook snapshot for all symbols
			pplx::task<response::orderbooks> orderbooks_get_for_all_symbols() {
				return get_json(web::uri_builder(U("/v1/orderbooks/current")).to_string()).then([](web::json::value json_response) -> pplx::task<response::orderbooks> {
					response::orderbooks result;
					parse_orderbooks(result, json_response);
			        return pplx::task_from_result(result);
				});		
			}

			// Get current orderbook snapshot for specific symbol
			pplx::task<response::orderbook> orderbooks_get_for_symbol(std::string symbol) {
				utility::string_t url = web::uri_builder(U("/v1/orderbooks")).append_path(symbol.c_str()).append_path(U("current")).to_string();
				return get_json(url).then([](web::json::value json_response) -> pplx::task<response::orderbook> {
					response::orderbook result;
					parse_orderbook(result, json_response);
			        return pplx::task_from_result(result);
				});
			}
			
			// Get latest orderbook snapshots for a specific symbol, returned in time descending order.							
			pplx::task<response::orderbooks> orderbooks_get_latest_data(std::string symbol) {
				utility::string_t url = web::uri_builder(U("/v1/orderbooks")).append_path(symbol.c_str()).append_path(U("latest")).to_string();
				return get_json(web::uri_builder(url).to_string()).then([](web::json::value json_response) -> pplx::task<response::orderbooks> {
					response::orderbooks result;
					parse_orderbooks(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::orderbooks> orderbooks_get_latest_data(std::string symbol, int limit) {
				utility::string_t url = web::uri_builder(U("/v1/orderbooks")).append_path(symbol.c_str()).append_path(U("latest")).append_query(U("limit"), limit).to_string();
				return get_json(web::uri_builder(url).to_string()).then([](web::json::value json_response) -> pplx::task<response::orderbooks> {
					response::orderbooks result;
					parse_orderbooks(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			// Get historical orderbook snapshots for a specific symbol within time range, returned in time ascending order.
			pplx::task<response::orderbooks> orderbooks_get_historical_data(std::string symbol, const response::precise_time& time_start) {
				utility::string_t url = web::uri_builder(U("/v1/orderbooks")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("time_start"), iso8601time_to_str(time_start, false)).to_string();
				return get_json(web::uri_builder(url).to_string()).then([](web::json::value json_response) -> pplx::task<response::orderbooks> {
					response::orderbooks result;
					parse_orderbooks(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::orderbooks> orderbooks_get_historical_data(std::string symbol, const response::precise_time& time_start, int limit) {
				utility::string_t url = web::uri_builder(U("/v1/orderbooks")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("time_start"), iso8601time_to_str(time_start, false)).append_query(U("limit"), limit).to_string();				
				return get_json(web::uri_builder(url).to_string()).then([](web::json::value json_response) -> pplx::task<response::orderbooks> {
					response::orderbooks result;
					parse_orderbooks(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::orderbooks> orderbooks_get_historical_data(std::string symbol, const response::precise_time& time_start, const response::precise_time& time_end) {
				utility::string_t url = web::uri_builder(U("/v1/orderbooks")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("time_start"), iso8601time_to_str(time_start, false)).append_query(U("time_end"), iso8601time_to_str(time_end, false)).to_string();
				return get_json(web::uri_builder(url).to_string()).then([](web::json::value json_response) -> pplx::task<response::orderbooks> {
					response::orderbooks result;
					parse_orderbooks(result, json_response);
			        return pplx::task_from_result(result);
				});
			}

			pplx::task<response::orderbooks> orderbooks_get_historical_data(std::string symbol, const response::precise_time& time_start, const response::precise_time& time_end, int limit) {
				utility::string_t url = web::uri_builder(U("/v1/orderbooks")).append_path(symbol.c_str()).append_path(U("history")).append_query(U("time_start"), iso8601time_to_str(time_start, false)).append_query(U("time_end"), iso8601time_to_str(time_end, false)).append_query(U("limit"), limit).to_string();
				return get_json(web::uri_builder(url).to_string()).then([](web::json::value json_response) -> pplx::task<response::orderbooks> {
					response::orderbooks result;
					parse_orderbooks(result, json_response);
			        return pplx::task_from_result(result);
				});
			}
	};
}

#endif

