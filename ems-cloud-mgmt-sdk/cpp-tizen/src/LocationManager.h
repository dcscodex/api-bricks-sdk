#ifndef _LocationManager_H_
#define _LocationManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Locations.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Location Location
 * \ingroup Operations
 *  @{
 */
class LocationManager {
public:
	LocationManager();
	virtual ~LocationManager();

/*! \brief Get site locations. *Synchronous*
 *
 * This endpoint providing information about the server site locations supported in the EMS API.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool locationsSync(char * accessToken,
	
	void(* handler)(std::list<Locations>, Error, void* )
	, void* userData);

/*! \brief Get site locations. *Asynchronous*
 *
 * This endpoint providing information about the server site locations supported in the EMS API.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool locationsAsync(char * accessToken,
	
	void(* handler)(std::list<Locations>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://ems-mgmt-sandbox.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* LocationManager_H_ */
