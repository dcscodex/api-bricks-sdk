/*
 * V1.QuoteTrade.h
 *
 * Represents a quote trade data model.
 */

#ifndef _V1.QuoteTrade_H_
#define _V1.QuoteTrade_H_


#include <string>
#include "V1.LastTrade.h"
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents a quote trade data model.
 *
 *  \ingroup Models
 *
 */

class V1.QuoteTrade : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.QuoteTrade();
	V1.QuoteTrade(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.QuoteTrade();

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
	/*! \brief Get The exchange time of the quote trade.
	 */
	std::string getTimeExchange();

	/*! \brief Set The exchange time of the quote trade.
	 */
	void setTimeExchange(std::string  time_exchange);
	/*! \brief Get The CoinAPI time when the quote trade was received.
	 */
	std::string getTimeCoinapi();

	/*! \brief Set The CoinAPI time when the quote trade was received.
	 */
	void setTimeCoinapi(std::string  time_coinapi);
	/*! \brief Get The best asking price.
	 */
	double getAskPrice();

	/*! \brief Set The best asking price.
	 */
	void setAskPrice(double  ask_price);
	/*! \brief Get The volume resting on the best ask. If the value is equal to zero, then the size is unknown.
	 */
	double getAskSize();

	/*! \brief Set The volume resting on the best ask. If the value is equal to zero, then the size is unknown.
	 */
	void setAskSize(double  ask_size);
	/*! \brief Get The best bidding price.
	 */
	double getBidPrice();

	/*! \brief Set The best bidding price.
	 */
	void setBidPrice(double  bid_price);
	/*! \brief Get The volume resting on the best bid. If the value is equal to zero, then the size is unknown.
	 */
	double getBidSize();

	/*! \brief Set The volume resting on the best bid. If the value is equal to zero, then the size is unknown.
	 */
	void setBidSize(double  bid_size);
	/*! \brief Get 
	 */
	V1.LastTrade getLastTrade();

	/*! \brief Set 
	 */
	void setLastTrade(V1.LastTrade  last_trade);

private:
	std::string symbol_id;
	std::string time_exchange;
	std::string time_coinapi;
	double ask_price;
	double ask_size;
	double bid_price;
	double bid_size;
	V1.LastTrade last_trade;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.QuoteTrade_H_ */
