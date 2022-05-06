/*
 * KeyValue.h
 *
 * Key Value pair used to configure exchange accounts.
 */

#ifndef _KeyValue_H_
#define _KeyValue_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Key Value pair used to configure exchange accounts.
 *
 *  \ingroup Models
 *
 */

class KeyValue : public Object {
public:
	/*! \brief Constructor.
	 */
	KeyValue();
	KeyValue(char* str);

	/*! \brief Destructor.
	 */
	virtual ~KeyValue();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getKey();

	/*! \brief Set 
	 */
	void setKey(std::string  key);
	/*! \brief Get 
	 */
	std::string getValue();

	/*! \brief Set 
	 */
	void setValue(std::string  value);

private:
	std::string key;
	std::string value;
	void __init();
	void __cleanup();

};
}
}

#endif /* _KeyValue_H_ */
