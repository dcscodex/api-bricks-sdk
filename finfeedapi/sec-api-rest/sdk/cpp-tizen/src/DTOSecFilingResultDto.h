/*
 * DTO.SecFilingResultDto.h
 *
 * 
 */

#ifndef _DTO.SecFilingResultDto_H_
#define _DTO.SecFilingResultDto_H_


#include <string>
#include "Date.h"
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

class DTO.SecFilingResultDto : public Object {
public:
	/*! \brief Constructor.
	 */
	DTO.SecFilingResultDto();
	DTO.SecFilingResultDto(char* str);

	/*! \brief Destructor.
	 */
	virtual ~DTO.SecFilingResultDto();

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
	Date getFilingDate();

	/*! \brief Set 
	 */
	void setFilingDate(Date  filing_date);
	/*! \brief Get 
	 */
	std::string getCompanyName();

	/*! \brief Set 
	 */
	void setCompanyName(std::string  company_name);
	/*! \brief Get 
	 */
	long long getCik();

	/*! \brief Set 
	 */
	void setCik(long long  cik);
	/*! \brief Get 
	 */
	std::string getDocumentFilename();

	/*! \brief Set 
	 */
	void setDocumentFilename(std::string  document_filename);
	/*! \brief Get 
	 */
	std::string getDocumentDescription();

	/*! \brief Set 
	 */
	void setDocumentDescription(std::string  document_description);
	/*! \brief Get 
	 */
	std::string getSourceFile();

	/*! \brief Set 
	 */
	void setSourceFile(std::string  source_file);

private:
	std::string accession_number;
	std::string form_type;
	Date filing_date;
	std::string company_name;
	long long cik;
	std::string document_filename;
	std::string document_description;
	std::string source_file;
	void __init();
	void __cleanup();

};
}
}

#endif /* _DTO.SecFilingResultDto_H_ */
