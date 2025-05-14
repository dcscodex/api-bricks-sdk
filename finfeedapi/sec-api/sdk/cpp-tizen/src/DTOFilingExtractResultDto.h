/*
 * DTO.FilingExtractResultDto.h
 *
 * Represents the result of a filing extraction.
 */

#ifndef _DTO.FilingExtractResultDto_H_
#define _DTO.FilingExtractResultDto_H_


#include <string>
#include "DTO.FilingItemDto.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the result of a filing extraction.
 *
 *  \ingroup Models
 *
 */

class DTO.FilingExtractResultDto : public Object {
public:
	/*! \brief Constructor.
	 */
	DTO.FilingExtractResultDto();
	DTO.FilingExtractResultDto(char* str);

	/*! \brief Destructor.
	 */
	virtual ~DTO.FilingExtractResultDto();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getAccessionNumber();

	/*! \brief Set 
	 */
	void setAccessionNumber(std::string  accession_number);
	/*! \brief Get 
	 */
	std::string getFormType();

	/*! \brief Set 
	 */
	void setFormType(std::string  form_type);
	/*! \brief Get 
	 */
	std::list<DTO.FilingItemDto> getItems();

	/*! \brief Set 
	 */
	void setItems(std::list <DTO.FilingItemDto> items);

private:
	std::string accession_number;
	std::string form_type;
	std::list <DTO.FilingItemDto>items;
	void __init();
	void __cleanup();

};
}
}

#endif /* _DTO.FilingExtractResultDto_H_ */
