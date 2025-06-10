/*
 * V1.Quote.h
 *
 * Represents a quote data model.
 */

#ifndef _V1.Quote_H_
#define _V1.Quote_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents a quote data model.
 *
 *  \ingroup Models
 *
 */

class V1.Quote : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.Quote();
	V1.Quote(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.Quote();

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
	/*! \brief Get The exchange time of the quote.
	 */
	std::string getTimeExchange();

	/*! \brief Set The exchange time of the quote.
	 */
	void setTimeExchange(std::string  time_exchange);
	/*! \brief Get The CoinAPI time when the quote was received.
	 */
	std::string getTimeCoinapi();

	/*! \brief Set The CoinAPI time when the quote was received.
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

private:
	std::string symbol_id;
	std::string time_exchange;
	std::string time_coinapi;
	double ask_price;
	double ask_size;
	double bid_price;
	double bid_size;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.Quote_H_ */
