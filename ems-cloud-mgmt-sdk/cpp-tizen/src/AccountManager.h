#ifndef _AccountManager_H_
#define _AccountManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "AccountData.h"
#include "GetAccount.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Account Account
 * \ingroup Operations
 *  @{
 */
class AccountManager {
public:
	AccountManager();
	virtual ~AccountManager();

/*! \brief Delete account. *Synchronous*
 *
 * Delete specific exchange account maintained by the EMS API for your subscription.
 * \param exchangeId Exchange identifier of the account to delete *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deleteAccountSync(char * accessToken,
	std::list<std::string> exchangeId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Delete account. *Asynchronous*
 *
 * Delete specific exchange account maintained by the EMS API for your subscription.
 * \param exchangeId Exchange identifier of the account to delete *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deleteAccountAsync(char * accessToken,
	std::list<std::string> exchangeId, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Delete all accounts. *Synchronous*
 *
 * Delete all exchange accounts maintained by the EMS API for your subscription.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deleteAccountAllSync(char * accessToken,
	
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Delete all accounts. *Asynchronous*
 *
 * Delete all exchange accounts maintained by the EMS API for your subscription.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool deleteAccountAllAsync(char * accessToken,
	
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief Get accounts. *Synchronous*
 *
 * Get all accounts maintained for your subscription in the EMS API.
 * \param filterExchangeId Exchange id of the specific account to provide single account instead of the list of all accounts
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getAccountSync(char * accessToken,
	std::list<std::string> filterExchangeId, 
	void(* handler)(std::list<GetAccount>, Error, void* )
	, void* userData);

/*! \brief Get accounts. *Asynchronous*
 *
 * Get all accounts maintained for your subscription in the EMS API.
 * \param filterExchangeId Exchange id of the specific account to provide single account instead of the list of all accounts
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getAccountAsync(char * accessToken,
	std::list<std::string> filterExchangeId, 
	void(* handler)(std::list<GetAccount>, Error, void* )
	, void* userData);


/*! \brief Add or update account. *Synchronous*
 *
 * Add new or update existing exchange account for your subscription in the EMS API.
 * \param body Exchange account object that needs to be add/update to the EMS *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool persistAccountSync(char * accessToken,
	std::shared_ptr<AccountData> body, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief Add or update account. *Asynchronous*
 *
 * Add new or update existing exchange account for your subscription in the EMS API.
 * \param body Exchange account object that needs to be add/update to the EMS *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool persistAccountAsync(char * accessToken,
	std::shared_ptr<AccountData> body, 
	
	void(* handler)(Error, void* ) , void* userData);



	static std::string getBasePath()
	{
		return "https://ems-mgmt-sandbox.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* AccountManager_H_ */
