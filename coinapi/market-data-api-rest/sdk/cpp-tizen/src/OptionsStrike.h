/*
 * Options.Strike.h
 *
 * Represents a strike within the option exchange group.
 */

#ifndef _Options.Strike_H_
#define _Options.Strike_H_


#include <string>
#include "V1.QuoteTrade.h"
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents a strike within the option exchange group.
 *
 *  \ingroup Models
 *
 */

class Options.Strike : public Object {
public:
	/*! \brief Constructor.
	 */
	Options.Strike();
	Options.Strike(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Options.Strike();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The strike price.
	 */
	double getStrikePrice();

	/*! \brief Set The strike price.
	 */
	void setStrikePrice(double  strike_price);
	/*! \brief Get 
	 */
	V1.QuoteTrade getCall();

	/*! \brief Set 
	 */
	void setCall(V1.QuoteTrade  call);
	/*! \brief Get 
	 */
	V1.QuoteTrade getPut();

	/*! \brief Set 
	 */
	void setPut(V1.QuoteTrade  put);

private:
	double strike_price;
	V1.QuoteTrade call;
	V1.QuoteTrade put;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Options.Strike_H_ */
