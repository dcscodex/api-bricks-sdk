/*
 * V1.ExchangeRates.h
 *
 * Represents exchange rates for a specific base asset.
 */

#ifndef _V1.ExchangeRates_H_
#define _V1.ExchangeRates_H_


#include <string>
#include "V1.ExchangeRatesRate.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents exchange rates for a specific base asset.
 *
 *  \ingroup Models
 *
 */

class V1.ExchangeRates : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.ExchangeRates();
	V1.ExchangeRates(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.ExchangeRates();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the base asset ID.
	 */
	std::string getAssetIdBase();

	/*! \brief Set Gets or sets the base asset ID.
	 */
	void setAssetIdBase(std::string  asset_id_base);
	/*! \brief Get Gets or sets the list of exchange rates.
	 */
	std::list<V1.ExchangeRatesRate> getRates();

	/*! \brief Set Gets or sets the list of exchange rates.
	 */
	void setRates(std::list <V1.ExchangeRatesRate> rates);

private:
	std::string asset_id_base;
	std::list <V1.ExchangeRatesRate>rates;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.ExchangeRates_H_ */
