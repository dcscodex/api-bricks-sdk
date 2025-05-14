/*
 * DTO.FilingMetadataDto.h
 *
 * Represents the response for a single SEC filing metadata record.  Maps fields from the edgar_submissions table.
 */

#ifndef _DTO.FilingMetadataDto_H_
#define _DTO.FilingMetadataDto_H_


#include <string>
#include "Date.h"
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response for a single SEC filing metadata record.  Maps fields from the edgar_submissions table.
 *
 *  \ingroup Models
 *
 */

class DTO.FilingMetadataDto : public Object {
public:
	/*! \brief Constructor.
	 */
	DTO.FilingMetadataDto();
	DTO.FilingMetadataDto(char* str);

	/*! \brief Destructor.
	 */
	virtual ~DTO.FilingMetadataDto();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	long long getCik();

	/*! \brief Set 
	 */
	void setCik(long long  cik);
	/*! \brief Get 
	 */
	std::string getAccessionNumber();

	/*! \brief Set 
	 */
	void setAccessionNumber(std::string  accession_number);
	/*! \brief Get 
	 */
	Date getFilingDate();

	/*! \brief Set 
	 */
	void setFilingDate(Date  filing_date);
	/*! \brief Get 
	 */
	Date getReportDate();

	/*! \brief Set 
	 */
	void setReportDate(Date  report_date);
	/*! \brief Get 
	 */
	std::string getAcceptanceDateTime();

	/*! \brief Set 
	 */
	void setAcceptanceDateTime(std::string  acceptance_date_time);
	/*! \brief Get 
	 */
	std::string getAct();

	/*! \brief Set 
	 */
	void setAct(std::string  act);
	/*! \brief Get 
	 */
	std::string getForm();

	/*! \brief Set 
	 */
	void setForm(std::string  form);
	/*! \brief Get 
	 */
	std::string getFileNumber();

	/*! \brief Set 
	 */
	void setFileNumber(std::string  file_number);
	/*! \brief Get 
	 */
	std::string getFilmNumber();

	/*! \brief Set 
	 */
	void setFilmNumber(std::string  film_number);
	/*! \brief Get 
	 */
	std::string getItems();

	/*! \brief Set 
	 */
	void setItems(std::string  items);
	/*! \brief Get 
	 */
	std::string getCoreType();

	/*! \brief Set 
	 */
	void setCoreType(std::string  core_type);
	/*! \brief Get 
	 */
	int getSize();

	/*! \brief Set 
	 */
	void setSize(int  size);
	/*! \brief Get 
	 */
	bool getIsXbrl();

	/*! \brief Set 
	 */
	void setIsXbrl(bool  is_xbrl);
	/*! \brief Get 
	 */
	bool getIsInlineXbrl();

	/*! \brief Set 
	 */
	void setIsInlineXbrl(bool  is_inline_xbrl);
	/*! \brief Get 
	 */
	std::string getPrimaryDocument();

	/*! \brief Set 
	 */
	void setPrimaryDocument(std::string  primary_document);
	/*! \brief Get 
	 */
	std::string getPrimaryDocDescription();

	/*! \brief Set 
	 */
	void setPrimaryDocDescription(std::string  primary_doc_description);
	/*! \brief Get 
	 */
	std::string getSourceFile();

	/*! \brief Set 
	 */
	void setSourceFile(std::string  source_file);

private:
	long long cik;
	std::string accession_number;
	Date filing_date;
	Date report_date;
	std::string acceptance_date_time;
	std::string act;
	std::string form;
	std::string file_number;
	std::string film_number;
	std::string items;
	std::string core_type;
	int size;
	bool is_xbrl;
	bool is_inline_xbrl;
	std::string primary_document;
	std::string primary_doc_description;
	std::string source_file;
	void __init();
	void __cleanup();

};
}
}

#endif /* _DTO.FilingMetadataDto_H_ */
