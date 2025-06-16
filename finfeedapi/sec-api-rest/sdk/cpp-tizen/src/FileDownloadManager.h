#ifndef _FileDownloadManager_H_
#define _FileDownloadManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Mvc.ProblemDetails.h"
#include "Mvc.ValidationProblemDetails.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup FileDownload FileDownload
 * \ingroup Operations
 *  @{
 */
class FileDownloadManager {
public:
	FileDownloadManager();
	virtual ~FileDownloadManager();

/*! \brief Download file from SEC EDGAR archive. *Synchronous*
 *
 * Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: `d123456d10k.htm`, `d789012d8k.htm` - XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml` - Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the `/v1/filings` endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::
 * \param accessionNo SEC filing accession number in format: 0000000000-00-000000 *Required*
 * \param fileName Name of the file to download from the filing *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1DownloadGetSync(char * accessToken,
	std::string accessionNo, std::string fileName, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Download file from SEC EDGAR archive. *Asynchronous*
 *
 * Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: `d123456d10k.htm`, `d789012d8k.htm` - XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml` - Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the `/v1/filings` endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::
 * \param accessionNo SEC filing accession number in format: 0000000000-00-000000 *Required*
 * \param fileName Name of the file to download from the filing *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1DownloadGetAsync(char * accessToken,
	std::string accessionNo, std::string fileName, 
	
	void(* handler)(Error, void* ) , void* userData);



	static std::string getBasePath()
	{
		return "https://api.sec.finfeedapi.com";
	}
};
/** @}*/

}
}
#endif /* FileDownloadManager_H_ */
