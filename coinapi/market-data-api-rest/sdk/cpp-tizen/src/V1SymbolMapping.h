/*
 * V1.SymbolMapping.h
 *
 * Represents symbol mapping information for exchange symbols.
 */

#ifndef _V1.SymbolMapping_H_
#define _V1.SymbolMapping_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents symbol mapping information for exchange symbols.
 *
 *  \ingroup Models
 *
 */

class V1.SymbolMapping : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.SymbolMapping();
	V1.SymbolMapping(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.SymbolMapping();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The symbol ID.
	 */
	std::string getSymbolId();

	/*! \brief Set The symbol ID.
	 */
	void setSymbolId(std::string  symbol_id);
	/*! \brief Get The exchange-specific symbol ID.
	 */
	std::string getSymbolIdExchange();

	/*! \brief Set The exchange-specific symbol ID.
	 */
	void setSymbolIdExchange(std::string  symbol_id_exchange);
	/*! \brief Get The CoinAPI DataInfo ID.
	 */
	int getCoinapiDatainfoId();

	/*! \brief Set The CoinAPI DataInfo ID.
	 */
	void setCoinapiDatainfoId(int  coinapi_datainfo_id);
	/*! \brief Get The exchange-specific base asset ID.
	 */
	std::string getAssetIdBaseExchange();

	/*! \brief Set The exchange-specific base asset ID.
	 */
	void setAssetIdBaseExchange(std::string  asset_id_base_exchange);
	/*! \brief Get The exchange-specific quote asset ID.
	 */
	std::string getAssetIdQuoteExchange();

	/*! \brief Set The exchange-specific quote asset ID.
	 */
	void setAssetIdQuoteExchange(std::string  asset_id_quote_exchange);
	/*! \brief Get The base asset ID.
	 */
	std::string getAssetIdBase();

	/*! \brief Set The base asset ID.
	 */
	void setAssetIdBase(std::string  asset_id_base);
	/*! \brief Get The quote asset ID.
	 */
	std::string getAssetIdQuote();

	/*! \brief Set The quote asset ID.
	 */
	void setAssetIdQuote(std::string  asset_id_quote);
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

private:
	std::string symbol_id;
	std::string symbol_id_exchange;
	int coinapi_datainfo_id;
	std::string asset_id_base_exchange;
	std::string asset_id_quote_exchange;
	std::string asset_id_base;
	std::string asset_id_quote;
	double price_precision;
	double size_precision;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.SymbolMapping_H_ */
