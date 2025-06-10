/*
 * V1.Trade.h
 *
 * Represents a trade executed on the exchange.
 */

#ifndef _V1.Trade_H_
#define _V1.Trade_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents a trade executed on the exchange.
 *
 *  \ingroup Models
 *
 */

class V1.Trade : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.Trade();
	V1.Trade(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.Trade();

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
	/*! \brief Get The time of trade reported by the exchange.
	 */
	std::string getTimeExchange();

	/*! \brief Set The time of trade reported by the exchange.
	 */
	void setTimeExchange(std::string  time_exchange);
	/*! \brief Get The time when the trade was received by CoinAPI.
	 */
	std::string getTimeCoinapi();

	/*! \brief Set The time when the trade was received by CoinAPI.
	 */
	void setTimeCoinapi(std::string  time_coinapi);
	/*! \brief Get The unique identifier for the trade.
	 */
	std::string getUuid();

	/*! \brief Set The unique identifier for the trade.
	 */
	void setUuid(std::string  uuid);
	/*! \brief Get The price of the transaction.
	 */
	double getPrice();

	/*! \brief Set The price of the transaction.
	 */
	void setPrice(double  price);
	/*! \brief Get The base asset amount traded in the transaction.
	 */
	double getSize();

	/*! \brief Set The base asset amount traded in the transaction.
	 */
	void setSize(double  size);
	/*! \brief Get The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN).
	 */
	std::string getTakerSide();

	/*! \brief Set The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN).
	 */
	void setTakerSide(std::string  taker_side);
	/*! \brief Get The trade identifier.
	 */
	std::string getIdTrade();

	/*! \brief Set The trade identifier.
	 */
	void setIdTrade(std::string  id_trade);
	/*! \brief Get The order maker identifier.
	 */
	std::string getIdOrderMaker();

	/*! \brief Set The order maker identifier.
	 */
	void setIdOrderMaker(std::string  id_order_maker);
	/*! \brief Get The order taker identifier.
	 */
	std::string getIdOrderTaker();

	/*! \brief Set The order taker identifier.
	 */
	void setIdOrderTaker(std::string  id_order_taker);

private:
	std::string symbol_id;
	std::string time_exchange;
	std::string time_coinapi;
	std::string uuid;
	double price;
	double size;
	std::string taker_side;
	std::string id_trade;
	std::string id_order_maker;
	std::string id_order_taker;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.Trade_H_ */
