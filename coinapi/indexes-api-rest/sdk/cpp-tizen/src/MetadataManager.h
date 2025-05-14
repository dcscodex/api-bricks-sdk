#ifndef _MetadataManager_H_
#define _MetadataManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Metadata.Exchange.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Metadata Metadata
 * \ingroup Operations
 *  @{
 */
class MetadataManager {
public:
	MetadataManager();
	virtual ~MetadataManager();

/*! \brief List all exchanges by exchange_id. *Synchronous*
 *
 * 
 * \param exchangeId The ID of the exchange. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool apiMetadataExchangesExchangeIdGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Metadata.Exchange>, Error, void* )
	, void* userData);

/*! \brief List all exchanges by exchange_id. *Asynchronous*
 *
 * 
 * \param exchangeId The ID of the exchange. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool apiMetadataExchangesExchangeIdGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Metadata.Exchange>, Error, void* )
	, void* userData);


/*! \brief List all exchanges. *Synchronous*
 *
 * Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::
 * \param filterExchangeId Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool apiMetadataExchangesGetSync(char * accessToken,
	std::string filterExchangeId, 
	void(* handler)(std::list<Metadata.Exchange>, Error, void* )
	, void* userData);

/*! \brief List all exchanges. *Asynchronous*
 *
 * Get a detailed list of exchanges provided by the system.                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::
 * \param filterExchangeId Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool apiMetadataExchangesGetAsync(char * accessToken,
	std::string filterExchangeId, 
	void(* handler)(std::list<Metadata.Exchange>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://rest-api.indexes.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* MetadataManager_H_ */
