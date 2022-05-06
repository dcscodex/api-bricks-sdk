#ifndef _ExchangeManager_H_
#define _ExchangeManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "ExchangeLoginRequire.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Exchange Exchange
 * \ingroup Operations
 *  @{
 */
class ExchangeManager {
public:
	ExchangeManager();
	virtual ~ExchangeManager();

/*! \brief Get exchange configuration. *Synchronous*
 *
 * Get information about the required parameters or server site location of the exchanges supported in the EMS API.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool exchangeLoginRequireSync(char * accessToken,
	
	void(* handler)(std::list<ExchangeLoginRequire>, Error, void* )
	, void* userData);

/*! \brief Get exchange configuration. *Asynchronous*
 *
 * Get information about the required parameters or server site location of the exchanges supported in the EMS API.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool exchangeLoginRequireAsync(char * accessToken,
	
	void(* handler)(std::list<ExchangeLoginRequire>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://ems-mgmt-sandbox.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* ExchangeManager_H_ */
