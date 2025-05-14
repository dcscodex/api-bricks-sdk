/*
 * DTO.ExtractorType.h
 *
 * 
 */

#ifndef _DTO.ExtractorType_H_
#define _DTO.ExtractorType_H_


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

class DTO.ExtractorType : public Object {
public:
	/*! \brief Constructor.
	 */
	DTO.ExtractorType();
	DTO.ExtractorType(char* str);

	/*! \brief Destructor.
	 */
	virtual ~DTO.ExtractorType();

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

#endif /* _DTO.ExtractorType_H_ */
