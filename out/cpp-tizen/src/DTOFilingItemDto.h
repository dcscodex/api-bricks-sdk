/*
 * DTO.FilingItemDto.h
 *
 * 
 */

#ifndef _DTO.FilingItemDto_H_
#define _DTO.FilingItemDto_H_


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

class DTO.FilingItemDto : public Object {
public:
	/*! \brief Constructor.
	 */
	DTO.FilingItemDto();
	DTO.FilingItemDto(char* str);

	/*! \brief Destructor.
	 */
	virtual ~DTO.FilingItemDto();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getItemNumber();

	/*! \brief Set 
	 */
	void setItemNumber(std::string  item_number);
	/*! \brief Get 
	 */
	std::string getItemTitle();

	/*! \brief Set 
	 */
	void setItemTitle(std::string  item_title);
	/*! \brief Get 
	 */
	std::string getContent();

	/*! \brief Set 
	 */
	void setContent(std::string  content);

private:
	std::string item_number;
	std::string item_title;
	std::string content;
	void __init();
	void __cleanup();

};
}
}

#endif /* _DTO.FilingItemDto_H_ */
