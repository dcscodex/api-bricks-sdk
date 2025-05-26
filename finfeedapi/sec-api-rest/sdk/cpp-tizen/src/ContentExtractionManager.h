#ifndef _ContentExtractionManager_H_
#define _ContentExtractionManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "AnyType.h"
#include "DTO.ExtractorType.h"
#include "Mvc.ProblemDetails.h"
#include "Mvc.ValidationProblemDetails.h"
#include <map>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup ContentExtraction ContentExtraction
 * \ingroup Operations
 *  @{
 */
class ContentExtractionManager {
public:
	ContentExtractionManager();
	virtual ~ContentExtractionManager();

/*! \brief Extract and classify SEC filing content. *Synchronous*
 *
 * Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::
 * \param accessionNumber The SEC filing accession number used to retrieve the filing from EDGAR database. *Required*
 * \param type Result type (text or html, default: text)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExtractorGetSync(char * accessToken,
	std::string accessionNumber, DTO.ExtractorType type, 
	void(* handler)(std::map<std::string,std::string>, Error, void* )
	, void* userData);

/*! \brief Extract and classify SEC filing content. *Asynchronous*
 *
 * Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::
 * \param accessionNumber The SEC filing accession number used to retrieve the filing from EDGAR database. *Required*
 * \param type Result type (text or html, default: text)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExtractorGetAsync(char * accessToken,
	std::string accessionNumber, DTO.ExtractorType type, 
	void(* handler)(std::map<std::string,std::string>, Error, void* )
	, void* userData);


/*! \brief Extract specific item content from SEC filing. *Synchronous*
 *
 * Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::
 * \param accessionNumber The SEC filing accession number used to retrieve the filing from EDGAR database. *Required*
 * \param itemNumber The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\"). *Required*
 * \param type Result type (text or html, default: text)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExtractorItemGetSync(char * accessToken,
	std::string accessionNumber, std::string itemNumber, DTO.ExtractorType type, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Extract specific item content from SEC filing. *Asynchronous*
 *
 * Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::
 * \param accessionNumber The SEC filing accession number used to retrieve the filing from EDGAR database. *Required*
 * \param itemNumber The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\"). *Required*
 * \param type Result type (text or html, default: text)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExtractorItemGetAsync(char * accessToken,
	std::string accessionNumber, std::string itemNumber, DTO.ExtractorType type, 
	void(* handler)(std::string, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://api-historical.sec.finfeedapi.com";
	}
};
/** @}*/

}
}
#endif /* ContentExtractionManager_H_ */
