/*
 * DTO.FilingSortBy.h
 *
 * Defines sorting options for the filing query.
 */

#ifndef _DTO.FilingSortBy_H_
#define _DTO.FilingSortBy_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Defines sorting options for the filing query.
 *
 *  \ingroup Models
 *
 */

class DTO.FilingSortBy : public Object {
public:
	/*! \brief Constructor.
	 */
	DTO.FilingSortBy();
	DTO.FilingSortBy(char* str);

	/*! \brief Destructor.
	 */
	virtual ~DTO.FilingSortBy();

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

#endif /* _DTO.FilingSortBy_H_ */
