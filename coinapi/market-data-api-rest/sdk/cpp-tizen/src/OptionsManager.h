#ifndef _OptionsManager_H_
#define _OptionsManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Options.OptionExchangeGroup.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Options Options
 * \ingroup Operations
 *  @{
 */
class OptionsManager {
public:
	OptionsManager();
	virtual ~OptionsManager();

/*! \brief Current data by Exchange. *Synchronous*
 *
 * Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.
 * \param exchangeId Exchange identifier (from the Metadata -> Exchanges) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OptionsExchangeIdCurrentGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Options.OptionExchangeGroup>, Error, void* )
	, void* userData);

/*! \brief Current data by Exchange. *Asynchronous*
 *
 * Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.
 * \param exchangeId Exchange identifier (from the Metadata -> Exchanges) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OptionsExchangeIdCurrentGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Options.OptionExchangeGroup>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://rest.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* OptionsManager_H_ */
