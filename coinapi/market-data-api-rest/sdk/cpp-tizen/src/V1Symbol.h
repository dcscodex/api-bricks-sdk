/*
 * V1.Symbol.h
 *
 * Represents a symbol data model.
 */

#ifndef _V1.Symbol_H_
#define _V1.Symbol_H_


#include <string>
#include <map>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents a symbol data model.
 *
 *  \ingroup Models
 *
 */

class V1.Symbol : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.Symbol();
	V1.Symbol(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.Symbol();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The symbol identifier.
	 */
	std::string getSymbolId();

	/*! \brief Set The symbol identifier.
	 */
	void setSymbolId(std::string  symbol_id);
	/*! \brief Get The exchange identifier.
	 */
	std::string getExchangeId();

	/*! \brief Set The exchange identifier.
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get The symbol type.
	 */
	std::string getSymbolType();

	/*! \brief Set The symbol type.
	 */
	void setSymbolType(std::string  symbol_type);
	/*! \brief Get The base asset identifier.
	 */
	std::string getAssetIdBase();

	/*! \brief Set The base asset identifier.
	 */
	void setAssetIdBase(std::string  asset_id_base);
	/*! \brief Get The quote asset identifier.
	 */
	std::string getAssetIdQuote();

	/*! \brief Set The quote asset identifier.
	 */
	void setAssetIdQuote(std::string  asset_id_quote);
	/*! \brief Get The unit asset identifier.
	 */
	std::string getAssetIdUnit();

	/*! \brief Set The unit asset identifier.
	 */
	void setAssetIdUnit(std::string  asset_id_unit);
	/*! \brief Get The contract unit for futures.
	 */
	double getFutureContractUnit();

	/*! \brief Set The contract unit for futures.
	 */
	void setFutureContractUnit(double  future_contract_unit);
	/*! \brief Get The asset used as the unit for futures contract.
	 */
	std::string getFutureContractUnitAsset();

	/*! \brief Set The asset used as the unit for futures contract.
	 */
	void setFutureContractUnitAsset(std::string  future_contract_unit_asset);
	/*! \brief Get The future delivery time for futures contract.
	 */
	std::string getFutureDeliveryTime();

	/*! \brief Set The future delivery time for futures contract.
	 */
	void setFutureDeliveryTime(std::string  future_delivery_time);
	/*! \brief Get Indicates whether the option type is a call.
	 */
	bool getOptionTypeIsCall();

	/*! \brief Set Indicates whether the option type is a call.
	 */
	void setOptionTypeIsCall(bool  option_type_is_call);
	/*! \brief Get The strike price for options.
	 */
	double getOptionStrikePrice();

	/*! \brief Set The strike price for options.
	 */
	void setOptionStrikePrice(double  option_strike_price);
	/*! \brief Get The contract unit for options.
	 */
	double getOptionContractUnit();

	/*! \brief Set The contract unit for options.
	 */
	void setOptionContractUnit(double  option_contract_unit);
	/*! \brief Get The exercise style for options.
	 */
	std::string getOptionExerciseStyle();

	/*! \brief Set The exercise style for options.
	 */
	void setOptionExerciseStyle(std::string  option_exercise_style);
	/*! \brief Get The expiration time for options.
	 */
	std::string getOptionExpirationTime();

	/*! \brief Set The expiration time for options.
	 */
	void setOptionExpirationTime(std::string  option_expiration_time);
	/*! \brief Get The delivery time for contracts.
	 */
	std::string getContractDeliveryTime();

	/*! \brief Set The delivery time for contracts.
	 */
	void setContractDeliveryTime(std::string  contract_delivery_time);
	/*! \brief Get The contract unit for contracts.
	 */
	double getContractUnit();

	/*! \brief Set The contract unit for contracts.
	 */
	void setContractUnit(double  contract_unit);
	/*! \brief Get The asset used as the unit for contracts.
	 */
	std::string getContractUnitAsset();

	/*! \brief Set The asset used as the unit for contracts.
	 */
	void setContractUnitAsset(std::string  contract_unit_asset);
	/*! \brief Get The contract identifier.
	 */
	std::string getContractId();

	/*! \brief Set The contract identifier.
	 */
	void setContractId(std::string  contract_id);
	/*! \brief Get The display name of the contract.
	 */
	std::string getContractDisplayName();

	/*! \brief Set The display name of the contract.
	 */
	void setContractDisplayName(std::string  contract_display_name);
	/*! \brief Get The display description of the contract.
	 */
	std::string getContractDisplayDescription();

	/*! \brief Set The display description of the contract.
	 */
	void setContractDisplayDescription(std::string  contract_display_description);
	/*! \brief Get 
	 */
	std::string getDataStart();

	/*! \brief Set 
	 */
	void setDataStart(std::string  data_start);
	/*! \brief Get 
	 */
	std::string getDataEnd();

	/*! \brief Set 
	 */
	void setDataEnd(std::string  data_end);
	/*! \brief Get The start date of quote data.
	 */
	std::string getDataQuoteStart();

	/*! \brief Set The start date of quote data.
	 */
	void setDataQuoteStart(std::string  data_quote_start);
	/*! \brief Get The end date of quote data.
	 */
	std::string getDataQuoteEnd();

	/*! \brief Set The end date of quote data.
	 */
	void setDataQuoteEnd(std::string  data_quote_end);
	/*! \brief Get The start date of order book data.
	 */
	std::string getDataOrderbookStart();

	/*! \brief Set The start date of order book data.
	 */
	void setDataOrderbookStart(std::string  data_orderbook_start);
	/*! \brief Get The end date of order book data.
	 */
	std::string getDataOrderbookEnd();

	/*! \brief Set The end date of order book data.
	 */
	void setDataOrderbookEnd(std::string  data_orderbook_end);
	/*! \brief Get The start date of trade data.
	 */
	std::string getDataTradeStart();

	/*! \brief Set The start date of trade data.
	 */
	void setDataTradeStart(std::string  data_trade_start);
	/*! \brief Get The end date of trade data.
	 */
	std::string getDataTradeEnd();

	/*! \brief Set The end date of trade data.
	 */
	void setDataTradeEnd(std::string  data_trade_end);
	/*! \brief Get The index identifier.
	 */
	std::string getIndexId();

	/*! \brief Set The index identifier.
	 */
	void setIndexId(std::string  index_id);
	/*! \brief Get The display name of the index.
	 */
	std::string getIndexDisplayName();

	/*! \brief Set The display name of the index.
	 */
	void setIndexDisplayName(std::string  index_display_name);
	/*! \brief Get The display description of the index.
	 */
	std::string getIndexDisplayDescription();

	/*! \brief Set The display description of the index.
	 */
	void setIndexDisplayDescription(std::string  index_display_description);
	/*! \brief Get The volume in the last 1 hour.
	 */
	double getVolume1hrs();

	/*! \brief Set The volume in the last 1 hour.
	 */
	void setVolume1hrs(double  volume_1hrs);
	/*! \brief Get The volume in USD in the last 1 hour.
	 */
	double getVolume1hrsUsd();

	/*! \brief Set The volume in USD in the last 1 hour.
	 */
	void setVolume1hrsUsd(double  volume_1hrs_usd);
	/*! \brief Get The volume in the last 1 day.
	 */
	double getVolume1day();

	/*! \brief Set The volume in the last 1 day.
	 */
	void setVolume1day(double  volume_1day);
	/*! \brief Get The volume in USD in the last 1 day.
	 */
	double getVolume1dayUsd();

	/*! \brief Set The volume in USD in the last 1 day.
	 */
	void setVolume1dayUsd(double  volume_1day_usd);
	/*! \brief Get The volume in the last 1 month.
	 */
	double getVolume1mth();

	/*! \brief Set The volume in the last 1 month.
	 */
	void setVolume1mth(double  volume_1mth);
	/*! \brief Get The volume in USD in the last 1 month.
	 */
	double getVolume1mthUsd();

	/*! \brief Set The volume in USD in the last 1 month.
	 */
	void setVolume1mthUsd(double  volume_1mth_usd);
	/*! \brief Get The price.
	 */
	double getPrice();

	/*! \brief Set The price.
	 */
	void setPrice(double  price);
	/*! \brief Get The symbol identifier in the exchange.
	 */
	std::string getSymbolIdExchange();

	/*! \brief Set The symbol identifier in the exchange.
	 */
	void setSymbolIdExchange(std::string  symbol_id_exchange);
	/*! \brief Get The base asset identifier in the exchange.
	 */
	std::string getAssetIdBaseExchange();

	/*! \brief Set The base asset identifier in the exchange.
	 */
	void setAssetIdBaseExchange(std::string  asset_id_base_exchange);
	/*! \brief Get The quote asset identifier in the exchange.
	 */
	std::string getAssetIdQuoteExchange();

	/*! \brief Set The quote asset identifier in the exchange.
	 */
	void setAssetIdQuoteExchange(std::string  asset_id_quote_exchange);
	/*! \brief Get The price precision.
	 */
	double getPricePrecision();

	/*! \brief Set The price precision.
	 */
	void setPricePrecision(double  price_precision);
	/*! \brief Get The size precision.
	 */
	double getSizePrecision();

	/*! \brief Set The size precision.
	 */
	void setSizePrecision(double  size_precision);
	/*! \brief Get Not normalized raw kvp data.
	 */
	std::map<std::string, std::string> getRawKvp();

	/*! \brief Set Not normalized raw kvp data.
	 */
	void setRawKvp(std::map <std::string, std::string> raw_kvp);
	/*! \brief Get Volume unit in USD.
	 */
	double getVolumeToUsd();

	/*! \brief Set Volume unit in USD.
	 */
	void setVolumeToUsd(double  volume_to_usd);

private:
	std::string symbol_id;
	std::string exchange_id;
	std::string symbol_type;
	std::string asset_id_base;
	std::string asset_id_quote;
	std::string asset_id_unit;
	double future_contract_unit;
	std::string future_contract_unit_asset;
	std::string future_delivery_time;
	bool option_type_is_call;
	double option_strike_price;
	double option_contract_unit;
	std::string option_exercise_style;
	std::string option_expiration_time;
	std::string contract_delivery_time;
	double contract_unit;
	std::string contract_unit_asset;
	std::string contract_id;
	std::string contract_display_name;
	std::string contract_display_description;
	std::string data_start;
	std::string data_end;
	std::string data_quote_start;
	std::string data_quote_end;
	std::string data_orderbook_start;
	std::string data_orderbook_end;
	std::string data_trade_start;
	std::string data_trade_end;
	std::string index_id;
	std::string index_display_name;
	std::string index_display_description;
	double volume_1hrs;
	double volume_1hrs_usd;
	double volume_1day;
	double volume_1day_usd;
	double volume_1mth;
	double volume_1mth_usd;
	double price;
	std::string symbol_id_exchange;
	std::string asset_id_base_exchange;
	std::string asset_id_quote_exchange;
	double price_precision;
	double size_precision;
	std::map <std::string, std::string>raw_kvp;
	double volume_to_usd;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.Symbol_H_ */
