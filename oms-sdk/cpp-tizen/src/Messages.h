/*
 * Messages.h
 *
 * 
 */

#ifndef _Messages_H_
#define _Messages_H_


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

class Messages : public Object {
public:
	/*! \brief Constructor.
	 */
	Messages();
	Messages(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Messages();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Type of message
	 */
	std::string getType();

	/*! \brief Set Type of message
	 */
	void setType(std::string  type);
	/*! \brief Get Exchange name
	 */
	std::string getExchangeId();

	/*! \brief Set Exchange name
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get Message
	 */
	std::string getMessage();

	/*! \brief Set Message
	 */
	void setMessage(std::string  message);

private:
	std::string type;
	std::string exchange_id;
	std::string message;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Messages_H_ */
