/*
 * Position.h
 *
 * 
 */

#ifndef _Position_H_
#define _Position_H_


#include <string>
#include "Position_data.h"
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

class Position : public Object {
public:
	/*! \brief Constructor.
	 */
	Position();
	Position(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Position();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Result type.
	 */
	std::string getType();

	/*! \brief Set Result type.
	 */
	void setType(std::string  type);
	/*! \brief Get Name of exchange.
	 */
	std::string getExchangeName();

	/*! \brief Set Name of exchange.
	 */
	void setExchangeName(std::string  exchange_name);
	/*! \brief Get 
	 */
	std::list<Position_data> getData();

	/*! \brief Set 
	 */
	void setData(std::list <Position_data> data);

private:
	std::string type;
	std::string exchange_name;
	std::list <Position_data>data;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Position_H_ */
