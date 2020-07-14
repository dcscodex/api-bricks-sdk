/*
 * Severity.h
 *
 * Severity of the message.
 */

#ifndef _Severity_H_
#define _Severity_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Severity of the message.
 *
 *  \ingroup Models
 *
 */

class Severity : public Object {
public:
	/*! \brief Constructor.
	 */
	Severity();
	Severity(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Severity();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);


private:
	void __init();
	void __cleanup();

};
}
}

#endif /* _Severity_H_ */
