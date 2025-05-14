/*
 * Indexes.IndexIdentifier.h
 *
 * Represents an index id
 */

#ifndef _Indexes.IndexIdentifier_H_
#define _Indexes.IndexIdentifier_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents an index id
 *
 *  \ingroup Models
 *
 */

class Indexes.IndexIdentifier : public Object {
public:
	/*! \brief Constructor.
	 */
	Indexes.IndexIdentifier();
	Indexes.IndexIdentifier(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Indexes.IndexIdentifier();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Index ID
	 */
	std::string getId();

	/*! \brief Set Index ID
	 */
	void setId(std::string  id);

private:
	std::string id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Indexes.IndexIdentifier_H_ */
