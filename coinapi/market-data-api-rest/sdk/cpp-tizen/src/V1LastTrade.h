/*
 * V1.LastTrade.h
 *
 * Represents the last executed transaction.
 */

#ifndef _V1.LastTrade_H_
#define _V1.LastTrade_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the last executed transaction.
 *
 *  \ingroup Models
 *
 */

class V1.LastTrade : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.LastTrade();
	V1.LastTrade(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.LastTrade();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The exchange time of the last trade.
	 */
	std::string getTimeExchange();

	/*! \brief Set The exchange time of the last trade.
	 */
	void setTimeExchange(std::string  time_exchange);
	/*! \brief Get The CoinAPI time when the last trade was received.
	 */
	std::string getTimeCoinapi();

	/*! \brief Set The CoinAPI time when the last trade was received.
	 */
	void setTimeCoinapi(std::string  time_coinapi);
	/*! \brief Get The UUID of the last trade.
	 */
	std::string getUuid();

	/*! \brief Set The UUID of the last trade.
	 */
	void setUuid(std::string  uuid);
	/*! \brief Get The price of the last trade.
	 */
	double getPrice();

	/*! \brief Set The price of the last trade.
	 */
	void setPrice(double  price);
	/*! \brief Get The size of the last trade.
	 */
	double getSize();

	/*! \brief Set The size of the last trade.
	 */
	void setSize(double  size);
	/*! \brief Get The taker side of the last trade.
	 */
	std::string getTakerSide();

	/*! \brief Set The taker side of the last trade.
	 */
	void setTakerSide(std::string  taker_side);

private:
	std::string time_exchange;
	std::string time_coinapi;
	std::string uuid;
	double price;
	double size;
	std::string taker_side;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.LastTrade_H_ */
