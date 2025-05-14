/*
 * Level3.DeleteOrderModel.h
 *
 * Represents the response DTO for order delete information
 */

#ifndef _Level3.DeleteOrderModel_H_
#define _Level3.DeleteOrderModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for order delete information
 *
 *  \ingroup Models
 *
 */

class Level3.DeleteOrderModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Level3.DeleteOrderModel();
	Level3.DeleteOrderModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Level3.DeleteOrderModel();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The stock symbol
	 */
	std::string getSymbol();

	/*! \brief Set The stock symbol
	 */
	void setSymbol(std::string  symbol);
	/*! \brief Get Original timestamp in nanoseconds since epoch
	 */
	long long getTimestampNanos();

	/*! \brief Set Original timestamp in nanoseconds since epoch
	 */
	void setTimestampNanos(long long  timestamp_nanos);
	/*! \brief Get Time when the order was deleted as DateTime
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the order was deleted as DateTime
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Order identifier reference
	 */
	long long getOrderIdReference();

	/*! \brief Set Order identifier reference
	 */
	void setOrderIdReference(long long  order_id_reference);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	long long order_id_reference;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Level3.DeleteOrderModel_H_ */
