#ifndef _EndpointsManager_H_
#define _EndpointsManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "AccountEndpoint.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Endpoints Endpoints
 * \ingroup Operations
 *  @{
 */
class EndpointsManager {
public:
	EndpointsManager();
	virtual ~EndpointsManager();

/*! \brief Get API endpoints. *Synchronous*
 *
 * Get all API endpoints that the EMS API expose for your subscription.
 * \param filterExchangeId Exchange id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool endpointsSync(char * accessToken,
	std::list<std::string> filterExchangeId, 
	void(* handler)(std::list<AccountEndpoint>, Error, void* )
	, void* userData);

/*! \brief Get API endpoints. *Asynchronous*
 *
 * Get all API endpoints that the EMS API expose for your subscription.
 * \param filterExchangeId Exchange id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool endpointsAsync(char * accessToken,
	std::list<std::string> filterExchangeId, 
	void(* handler)(std::list<AccountEndpoint>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://ems-mgmt-sandbox.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* EndpointsManager_H_ */
