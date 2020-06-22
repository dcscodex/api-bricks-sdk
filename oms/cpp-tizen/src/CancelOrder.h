/*
 * CancelOrder.h
 *
 * 
 */

#ifndef _CancelOrder_H_
#define _CancelOrder_H_


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

class CancelOrder : public Object {
public:
	/*! \brief Constructor.
	 */
	CancelOrder();
	CancelOrder(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CancelOrder();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Exchange name
	 */
	std::string getExchangeId();

	/*! \brief Set Exchange name
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get Order Id
	 */
	std::string getExchangeOrderId();

	/*! \brief Set Order Id
	 */
	void setExchangeOrderId(std::string  exchange_order_id);
	/*! \brief Get Client order Id
	 */
	std::string getClientOrderId();

	/*! \brief Set Client order Id
	 */
	void setClientOrderId(std::string  client_order_id);

private:
	std::string exchange_id;
	std::string exchange_order_id;
	std::string client_order_id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CancelOrder_H_ */
