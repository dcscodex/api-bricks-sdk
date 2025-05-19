/*
 * V1.ExchangeRatesRate.h
 *
 * Represents an exchange rate within a collection of exchange rates.
 */

#ifndef _V1.ExchangeRatesRate_H_
#define _V1.ExchangeRatesRate_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents an exchange rate within a collection of exchange rates.
 *
 *  \ingroup Models
 *
 */

class V1.ExchangeRatesRate : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.ExchangeRatesRate();
	V1.ExchangeRatesRate(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.ExchangeRatesRate();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the time of the exchange rate.
	 */
	std::string getTime();

	/*! \brief Set Gets or sets the time of the exchange rate.
	 */
	void setTime(std::string  time);
	/*! \brief Get Gets or sets the quote asset ID of the exchange rate.
	 */
	std::string getAssetIdQuote();

	/*! \brief Set Gets or sets the quote asset ID of the exchange rate.
	 */
	void setAssetIdQuote(std::string  asset_id_quote);
	/*! \brief Get Gets or sets the exchange rate value.
	 */
	double getRate();

	/*! \brief Set Gets or sets the exchange rate value.
	 */
	void setRate(double  rate);

private:
	std::string time;
	std::string asset_id_quote;
	double rate;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.ExchangeRatesRate_H_ */
