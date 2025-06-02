#ifndef _FilingMetadataManager_H_
#define _FilingMetadataManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "DTO.FilingMetadataDto.h"
#include "DTO.FilingSortBy.h"
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
/** \addtogroup FilingMetadata FilingMetadata
 * \ingroup Operations
 *  @{
 */
class FilingMetadataManager {
public:
	FilingMetadataManager();
	virtual ~FilingMetadataManager();

/*! \brief Query SEC filing metadata. *Synchronous*
 *
 * Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::
 * \param cik Filter by Central Index Key (CIK)
 * \param ticker Filter by stock ticker symbol
 * \param formType Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
 * \param fillingDateStart Filter by filling date start (inclusive), format YYYY-MM-DD
 * \param fillingDateEnd Filter by filling date end (inclusive), format YYYY-MM-DD
 * \param reportDateStart Filter by report date start (inclusive), format YYYY-MM-DD
 * \param reportDateEnd Filter by report date end (inclusive), format YYYY-MM-DD
 * \param itemsContain Filter filings where the 'Items' field contains the specified text
 * \param pageSize Number of results per page (default: 50, max: 200)
 * \param pageNumber Page number to retrieve (default: 1)
 * \param sortBy Field to sort results by (default: AccessionNumber)
 * \param sortOrder Sort order (asc or desc, default: desc)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1FilingsGetSync(char * accessToken,
	long long cik, std::string ticker, std::string formType, std::string fillingDateStart, std::string fillingDateEnd, std::string reportDateStart, std::string reportDateEnd, std::string itemsContain, int pageSize, int pageNumber, DTO.FilingSortBy sortBy, std::string sortOrder, 
	void(* handler)(std::list<DTO.FilingMetadataDto>, Error, void* )
	, void* userData);

/*! \brief Query SEC filing metadata. *Asynchronous*
 *
 * Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::
 * \param cik Filter by Central Index Key (CIK)
 * \param ticker Filter by stock ticker symbol
 * \param formType Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
 * \param fillingDateStart Filter by filling date start (inclusive), format YYYY-MM-DD
 * \param fillingDateEnd Filter by filling date end (inclusive), format YYYY-MM-DD
 * \param reportDateStart Filter by report date start (inclusive), format YYYY-MM-DD
 * \param reportDateEnd Filter by report date end (inclusive), format YYYY-MM-DD
 * \param itemsContain Filter filings where the 'Items' field contains the specified text
 * \param pageSize Number of results per page (default: 50, max: 200)
 * \param pageNumber Page number to retrieve (default: 1)
 * \param sortBy Field to sort results by (default: AccessionNumber)
 * \param sortOrder Sort order (asc or desc, default: desc)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1FilingsGetAsync(char * accessToken,
	long long cik, std::string ticker, std::string formType, std::string fillingDateStart, std::string fillingDateEnd, std::string reportDateStart, std::string reportDateEnd, std::string itemsContain, int pageSize, int pageNumber, DTO.FilingSortBy sortBy, std::string sortOrder, 
	void(* handler)(std::list<DTO.FilingMetadataDto>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://api-historical.sec.finfeedapi.com";
	}
};
/** @}*/

}
}
#endif /* FilingMetadataManager_H_ */
