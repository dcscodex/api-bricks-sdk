#ifndef _ExchangeRatesManager_H_
#define _ExchangeRatesManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "V1.ExchangeRate.h"
#include "V1.ExchangeRates.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup ExchangeRates ExchangeRates
 * \ingroup Operations
 *  @{
 */
class ExchangeRatesManager {
public:
	ExchangeRatesManager();
	virtual ~ExchangeRatesManager();

/*! \brief Get specific rate. *Synchronous*
 *
 * Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::
 * \param assetIdBase Requested exchange rate base asset identifier (from the Metadata -> Assets) *Required*
 * \param assetIdQuote Requested exchange rate quote asset identifier (from the Metadata -> Assets) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool get specific rateSync(char * accessToken,
	std::string assetIdBase, std::string assetIdQuote, 
	void(* handler)(V1.ExchangeRate, Error, void* )
	, void* userData);

/*! \brief Get specific rate. *Asynchronous*
 *
 * Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::
 * \param assetIdBase Requested exchange rate base asset identifier (from the Metadata -> Assets) *Required*
 * \param assetIdQuote Requested exchange rate quote asset identifier (from the Metadata -> Assets) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool get specific rateAsync(char * accessToken,
	std::string assetIdBase, std::string assetIdQuote, 
	void(* handler)(V1.ExchangeRate, Error, void* )
	, void* userData);


/*! \brief Get all current rates. *Synchronous*
 *
 * Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::
 * \param assetIdBase Requested exchange rates base asset identifier (from the Metadata -> Assets) *Required*
 * \param filterAssetId Comma or semicolon delimited asset identifiers used to filter response (optional)
 * \param invert True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangerateAssetIdBaseGetSync(char * accessToken,
	std::string assetIdBase, std::string filterAssetId, bool invert, 
	void(* handler)(V1.ExchangeRates, Error, void* )
	, void* userData);

/*! \brief Get all current rates. *Asynchronous*
 *
 * Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::
 * \param assetIdBase Requested exchange rates base asset identifier (from the Metadata -> Assets) *Required*
 * \param filterAssetId Comma or semicolon delimited asset identifiers used to filter response (optional)
 * \param invert True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangerateAssetIdBaseGetAsync(char * accessToken,
	std::string assetIdBase, std::string filterAssetId, bool invert, 
	void(* handler)(V1.ExchangeRates, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://api-realtime.fx.finfeedapi.com";
	}
};
/** @}*/

}
}
#endif /* ExchangeRatesManager_H_ */
