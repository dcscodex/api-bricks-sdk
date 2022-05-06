#ifndef _CertificateManager_H_
#define _CertificateManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Certificate Certificate
 * \ingroup Operations
 *  @{
 */
class CertificateManager {
public:
	CertificateManager();
	virtual ~CertificateManager();

/*! \brief Get authentication certificate. *Synchronous*
 *
 * Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool certificateSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get authentication certificate. *Asynchronous*
 *
 * Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool certificateAsync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://ems-mgmt-sandbox.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* CertificateManager_H_ */
