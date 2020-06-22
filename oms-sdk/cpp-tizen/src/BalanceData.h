/*
 * Balance_data.h
 *
 * 
 */

#ifndef _Balance_data_H_
#define _Balance_data_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Balance_data : public Object {
public:
	/*! \brief Constructor.
	 */
	Balance_data();
	Balance_data(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Balance_data();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get symbol_exchange
	 */
	std::string getId();

	/*! \brief Set symbol_exchange
	 */
	void setId(std::string  id);
	/*! \brief Get Currency code.
	 */
	std::string getSymbolExchange();

	/*! \brief Set Currency code.
	 */
	void setSymbolExchange(std::string  symbol_exchange);
	/*! \brief Get CoinAPI currency code.
	 */
	std::string getSymbolCoinapi();

	/*! \brief Set CoinAPI currency code.
	 */
	void setSymbolCoinapi(std::string  symbol_coinapi);
	/*! \brief Get The current balance.
	 */
	float getBalance();

	/*! \brief Set The current balance.
	 */
	void setBalance(float  balance);
	/*! \brief Get The amount that is available to trade.
	 */
	float getAvailable();

	/*! \brief Set The amount that is available to trade.
	 */
	void setAvailable(float  available);
	/*! \brief Get Blocked funds.
	 */
	float getLocked();

	/*! \brief Set Blocked funds.
	 */
	void setLocked(float  locked);
	/*! \brief Get Source of last modification. 
	 */
	std::string getUpdateOrigin();

	/*! \brief Set Source of last modification. 
	 */
	void setUpdateOrigin(std::string  update_origin);

private:
	std::string id;
	std::string symbol_exchange;
	std::string symbol_coinapi;
	float balance;
	float available;
	float locked;
	std::string update_origin;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Balance_data_H_ */
