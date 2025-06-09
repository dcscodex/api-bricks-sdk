#ifndef _FullTextSearchManager_H_
#define _FullTextSearchManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "DTO.SecFilingResultDto.h"
#include "Mvc.ProblemDetails.h"
#include "Mvc.ValidationProblemDetails.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup FullTextSearch FullTextSearch
 * \ingroup Operations
 *  @{
 */
class FullTextSearchManager {
public:
	FullTextSearchManager();
	virtual ~FullTextSearchManager();

/*! \brief Full-text search of SEC filing documents. *Synchronous*
 *
 * Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::
 * \param formType Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
 * \param fillingDateStart Filter by filling date start (inclusive), format YYYY-MM-DD
 * \param fillingDateEnd Filter by filling date end (inclusive), format YYYY-MM-DD
 * \param textContains Keywords that the text must contain. Multiple values can be comma-separated
 * \param textNotContain Keywords that the text must not contain. Multiple values can be comma-separated
 * \param pageSize Number of results per page (default: 100)
 * \param pageNumber Page number to retrieve (default: 1)
 * \param sortBy Field to sort by (default: AccessionNumber)
 * \param sortOrder Sort order (asc or desc). Defaults to asc
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1FullTextGetSync(char * accessToken,
	std::string formType, std::string fillingDateStart, std::string fillingDateEnd, std::string textContains, std::string textNotContain, int pageSize, int pageNumber, std::string sortBy, std::string sortOrder, 
	void(* handler)(std::list<DTO.SecFilingResultDto>, Error, void* )
	, void* userData);

/*! \brief Full-text search of SEC filing documents. *Asynchronous*
 *
 * Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::
 * \param formType Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
 * \param fillingDateStart Filter by filling date start (inclusive), format YYYY-MM-DD
 * \param fillingDateEnd Filter by filling date end (inclusive), format YYYY-MM-DD
 * \param textContains Keywords that the text must contain. Multiple values can be comma-separated
 * \param textNotContain Keywords that the text must not contain. Multiple values can be comma-separated
 * \param pageSize Number of results per page (default: 100)
 * \param pageNumber Page number to retrieve (default: 1)
 * \param sortBy Field to sort by (default: AccessionNumber)
 * \param sortOrder Sort order (asc or desc). Defaults to asc
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1FullTextGetAsync(char * accessToken,
	std::string formType, std::string fillingDateStart, std::string fillingDateEnd, std::string textContains, std::string textNotContain, int pageSize, int pageNumber, std::string sortBy, std::string sortOrder, 
	void(* handler)(std::list<DTO.SecFilingResultDto>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://api.sec.finfeedapi.com";
	}
};
/** @}*/

}
}
#endif /* FullTextSearchManager_H_ */
