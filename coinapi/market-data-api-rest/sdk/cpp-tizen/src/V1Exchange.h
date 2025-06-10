/*
 * V1.Exchange.h
 *
 * Represents an exchange.
 */

#ifndef _V1.Exchange_H_
#define _V1.Exchange_H_


#include <string>
#include "V1.Icon.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents an exchange.
 *
 *  \ingroup Models
 *
 */

class V1.Exchange : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.Exchange();
	V1.Exchange(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.Exchange();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the exchange ID.
	 */
	std::string getExchangeId();

	/*! \brief Set Gets or sets the exchange ID.
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get Gets or sets the website URL of the exchange.
	 */
	std::string getWebsite();

	/*! \brief Set Gets or sets the website URL of the exchange.
	 */
	void setWebsite(std::string  website);
	/*! \brief Get Gets or sets the name of the exchange.
	 */
	std::string getName();

	/*! \brief Set Gets or sets the name of the exchange.
	 */
	void setName(std::string  name);
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
	/*! \brief Get Gets or sets the number of trades.
	 */
	long long getDataTradeCount();

	/*! \brief Set Gets or sets the number of trades.
	 */
	void setDataTradeCount(long long  data_trade_count);
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
	/*! \brief Get Gets or sets the list of metric IDs.
	 */
	std::list<std::string> getMetricId();

	/*! \brief Set Gets or sets the list of metric IDs.
	 */
	void setMetricId(std::list <std::string> metric_id);
	/*! \brief Get Gets or sets the list of icons for the exchange.
	 */
	std::list<V1.Icon> getIcons();

	/*! \brief Set Gets or sets the list of icons for the exchange.
	 */
	void setIcons(std::list <V1.Icon> icons);
	/*! \brief Get Rank of the exchange.
	 */
	double getRank();

	/*! \brief Set Rank of the exchange.
	 */
	void setRank(double  rank);
	/*! \brief Get Status of the integration
	 */
	std::string getIntegrationStatus();

	/*! \brief Set Status of the integration
	 */
	void setIntegrationStatus(std::string  integration_status);

private:
	std::string exchange_id;
	std::string website;
	std::string name;
	std::string data_start;
	std::string data_end;
	std::string data_quote_start;
	std::string data_quote_end;
	std::string data_orderbook_start;
	std::string data_orderbook_end;
	std::string data_trade_start;
	std::string data_trade_end;
	long long data_trade_count;
	long long data_symbols_count;
	double volume_1hrs_usd;
	double volume_1day_usd;
	double volume_1mth_usd;
	std::list <std::string>metric_id;
	std::list <V1.Icon>icons;
	double rank;
	std::string integration_status;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.Exchange_H_ */
