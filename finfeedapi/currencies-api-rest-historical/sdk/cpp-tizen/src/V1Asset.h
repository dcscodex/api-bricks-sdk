/*
 * V1.Asset.h
 *
 * Represents an asset.
 */

#ifndef _V1.Asset_H_
#define _V1.Asset_H_


#include <string>
#include "V1.ChainNetworkAddress.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents an asset.
 *
 *  \ingroup Models
 *
 */

class V1.Asset : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.Asset();
	V1.Asset(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.Asset();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the asset ID.
	 */
	std::string getAssetId();

	/*! \brief Set Gets or sets the asset ID.
	 */
	void setAssetId(std::string  asset_id);
	/*! \brief Get Gets or sets the name of the asset.
	 */
	std::string getName();

	/*! \brief Set Gets or sets the name of the asset.
	 */
	void setName(std::string  name);
	/*! \brief Get Gets or sets a value indicating whether the asset is a cryptocurrency.
	 */
	int getTypeIsCrypto();

	/*! \brief Set Gets or sets a value indicating whether the asset is a cryptocurrency.
	 */
	void setTypeIsCrypto(int  type_is_crypto);
	/*! \brief Get Gets or sets the start date of quote data.
	 */
	std::string getDataQuoteStart();

	/*! \brief Set Gets or sets the start date of quote data.
	 */
	void setDataQuoteStart(std::string  data_quote_start);
	/*! \brief Get Gets or sets the end date of quote data.
	 */
	std::string getDataQuoteEnd();

	/*! \brief Set Gets or sets the end date of quote data.
	 */
	void setDataQuoteEnd(std::string  data_quote_end);
	/*! \brief Get Gets or sets the start date of order book data.
	 */
	std::string getDataOrderbookStart();

	/*! \brief Set Gets or sets the start date of order book data.
	 */
	void setDataOrderbookStart(std::string  data_orderbook_start);
	/*! \brief Get Gets or sets the end date of order book data.
	 */
	std::string getDataOrderbookEnd();

	/*! \brief Set Gets or sets the end date of order book data.
	 */
	void setDataOrderbookEnd(std::string  data_orderbook_end);
	/*! \brief Get Gets or sets the start date of trade data.
	 */
	std::string getDataTradeStart();

	/*! \brief Set Gets or sets the start date of trade data.
	 */
	void setDataTradeStart(std::string  data_trade_start);
	/*! \brief Get Gets or sets the end date of trade data.
	 */
	std::string getDataTradeEnd();

	/*! \brief Set Gets or sets the end date of trade data.
	 */
	void setDataTradeEnd(std::string  data_trade_end);
	/*! \brief Get Gets or sets the number of symbols.
	 */
	long long getDataSymbolsCount();

	/*! \brief Set Gets or sets the number of symbols.
	 */
	void setDataSymbolsCount(long long  data_symbols_count);
	/*! \brief Get Gets or sets the USD volume in the last 1 hour.
	 */
	double getVolume1hrsUsd();

	/*! \brief Set Gets or sets the USD volume in the last 1 hour.
	 */
	void setVolume1hrsUsd(double  volume_1hrs_usd);
	/*! \brief Get Gets or sets the USD volume in the last 1 day.
	 */
	double getVolume1dayUsd();

	/*! \brief Set Gets or sets the USD volume in the last 1 day.
	 */
	void setVolume1dayUsd(double  volume_1day_usd);
	/*! \brief Get Gets or sets the USD volume in the last 1 month.
	 */
	double getVolume1mthUsd();

	/*! \brief Set Gets or sets the USD volume in the last 1 month.
	 */
	void setVolume1mthUsd(double  volume_1mth_usd);
	/*! \brief Get Gets or sets the USD price of the asset.
	 */
	double getPriceUsd();

	/*! \brief Set Gets or sets the USD price of the asset.
	 */
	void setPriceUsd(double  price_usd);
	/*! \brief Get Gets or sets the ID of the icon for the asset.
	 */
	std::string getIdIcon();

	/*! \brief Set Gets or sets the ID of the icon for the asset.
	 */
	void setIdIcon(std::string  id_icon);
	/*! \brief Get Gets or sets the current supply of the asset.
	 */
	double getSupplyCurrent();

	/*! \brief Set Gets or sets the current supply of the asset.
	 */
	void setSupplyCurrent(double  supply_current);
	/*! \brief Get Gets or sets the total supply of the asset.
	 */
	double getSupplyTotal();

	/*! \brief Set Gets or sets the total supply of the asset.
	 */
	void setSupplyTotal(double  supply_total);
	/*! \brief Get Gets or sets the maximum supply of the asset.
	 */
	double getSupplyMax();

	/*! \brief Set Gets or sets the maximum supply of the asset.
	 */
	void setSupplyMax(double  supply_max);
	/*! \brief Get 
	 */
	std::list<V1.ChainNetworkAddress> getChainAddresses();

	/*! \brief Set 
	 */
	void setChainAddresses(std::list <V1.ChainNetworkAddress> chain_addresses);
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

private:
	std::string asset_id;
	std::string name;
	int type_is_crypto;
	std::string data_quote_start;
	std::string data_quote_end;
	std::string data_orderbook_start;
	std::string data_orderbook_end;
	std::string data_trade_start;
	std::string data_trade_end;
	long long data_symbols_count;
	double volume_1hrs_usd;
	double volume_1day_usd;
	double volume_1mth_usd;
	double price_usd;
	std::string id_icon;
	double supply_current;
	double supply_total;
	double supply_max;
	std::list <V1.ChainNetworkAddress>chain_addresses;
	std::string data_start;
	std::string data_end;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.Asset_H_ */
