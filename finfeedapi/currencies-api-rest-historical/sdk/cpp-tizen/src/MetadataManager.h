#ifndef _MetadataManager_H_
#define _MetadataManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "V1.Asset.h"
#include "V1.Icon.h"
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

/*! \brief List all assets by asset ID. *Synchronous*
 *
 * 
 * \param assetId The asset ID. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsAssetIdGetSync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.Asset>, Error, void* )
	, void* userData);

/*! \brief List all assets by asset ID. *Asynchronous*
 *
 * 
 * \param assetId The asset ID. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsAssetIdGetAsync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.Asset>, Error, void* )
	, void* userData);


/*! \brief List all assets. *Synchronous*
 *
 * Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::
 * \param filterAssetId Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsGetSync(char * accessToken,
	std::string filterAssetId, 
	void(* handler)(std::list<V1.Asset>, Error, void* )
	, void* userData);

/*! \brief List all assets. *Asynchronous*
 *
 * Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::
 * \param filterAssetId Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsGetAsync(char * accessToken,
	std::string filterAssetId, 
	void(* handler)(std::list<V1.Asset>, Error, void* )
	, void* userData);


/*! \brief List all asset icons. *Synchronous*
 *
 * Gets the list of icons (of the given size) for all the assets.
 * \param size The size of the icons. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsIconsSizeGetSync(char * accessToken,
	int size, 
	void(* handler)(std::list<V1.Icon>, Error, void* )
	, void* userData);

/*! \brief List all asset icons. *Asynchronous*
 *
 * Gets the list of icons (of the given size) for all the assets.
 * \param size The size of the icons. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsIconsSizeGetAsync(char * accessToken,
	int size, 
	void(* handler)(std::list<V1.Icon>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://api-historical.fx.finfeedapi.com";
	}
};
/** @}*/

}
}
#endif /* MetadataManager_H_ */
