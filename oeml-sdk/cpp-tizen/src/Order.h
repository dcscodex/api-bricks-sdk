/*
 * Order.h
 *
 * 
 */

#ifndef _Order_H_
#define _Order_H_


#include <string>
#include "Order_data.h"
#include <list>
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

class Order : public Object {
public:
	/*! \brief Constructor.
	 */
	Order();
	Order(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Order();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get null
	 */
	std::string getType();

	/*! \brief Set null
	 */
	void setType(std::string  type);
	/*! \brief Get Exchange name
	 */
	std::string getExchangeName();

	/*! \brief Set Exchange name
	 */
	void setExchangeName(std::string  exchange_name);
	/*! \brief Get Orders array
	 */
	std::list<Order_data> getData();

	/*! \brief Set Orders array
	 */
	void setData(std::list <Order_data> data);

private:
	std::string type;
	std::string exchange_name;
	std::list <Order_data>data;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Order_H_ */
