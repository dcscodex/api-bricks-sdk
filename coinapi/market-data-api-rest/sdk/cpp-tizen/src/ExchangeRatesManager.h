#ifndef _ExchangeRatesManager_H_
#define _ExchangeRatesManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "V1.ExchangeRate.h"
#include "V1.ExchangeRates.h"
#include "V1.ExchangeRatesTimeseriesItem.h"
#include "V1.TimeseriesPeriod.h"
#include <list>
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
 * Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::
 * \param assetIdBase Requested exchange rate base asset identifier (from the Metadata -> Assets) *Required*
 * \param assetIdQuote Requested exchange rate quote asset identifier (from the Metadata -> Assets) *Required*
 * \param time Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool get specific rateSync(char * accessToken,
	std::string assetIdBase, std::string assetIdQuote, std::string time, 
	void(* handler)(V1.ExchangeRate, Error, void* )
	, void* userData);

/*! \brief Get specific rate. *Asynchronous*
 *
 * Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::
 * \param assetIdBase Requested exchange rate base asset identifier (from the Metadata -> Assets) *Required*
 * \param assetIdQuote Requested exchange rate quote asset identifier (from the Metadata -> Assets) *Required*
 * \param time Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool get specific rateAsync(char * accessToken,
	std::string assetIdBase, std::string assetIdQuote, std::string time, 
	void(* handler)(V1.ExchangeRate, Error, void* )
	, void* userData);


/*! \brief Timeseries data. *Synchronous*
 *
 * Get the historical exchange rates between two assets in the form of the timeseries.
 * \param assetIdBase Requested exchange rates base asset identifier (from the Metadata -> Assets) *Required*
 * \param assetIdQuote Requested exchange rates base asset identifier (from the Metadata -> Assets) *Required*
 * \param periodId Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`)
 * \param timeStart Timeseries starting time in ISO 8601 (required)
 * \param timeEnd Timeseries ending time in ISO 8601 (required)
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetSync(char * accessToken,
	std::string assetIdBase, std::string assetIdQuote, std::string periodId, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<V1.ExchangeRatesTimeseriesItem>, Error, void* )
	, void* userData);

/*! \brief Timeseries data. *Asynchronous*
 *
 * Get the historical exchange rates between two assets in the form of the timeseries.
 * \param assetIdBase Requested exchange rates base asset identifier (from the Metadata -> Assets) *Required*
 * \param assetIdQuote Requested exchange rates base asset identifier (from the Metadata -> Assets) *Required*
 * \param periodId Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`)
 * \param timeStart Timeseries starting time in ISO 8601 (required)
 * \param timeEnd Timeseries ending time in ISO 8601 (required)
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetAsync(char * accessToken,
	std::string assetIdBase, std::string assetIdQuote, std::string periodId, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<V1.ExchangeRatesTimeseriesItem>, Error, void* )
	, void* userData);


/*! \brief Get all current rates. *Synchronous*
 *
 * Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC); :::
 * \param assetIdBase Requested exchange rates base asset identifier (from the Metadata -> Assets) *Required*
 * \param filterAssetId Comma or semicolon delimited asset identifiers used to filter response (optional)
 * \param invert True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
 * \param time Time for historical rates (optional)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangerateAssetIdBaseGetSync(char * accessToken,
	std::string assetIdBase, std::string filterAssetId, bool invert, std::string time, 
	void(* handler)(V1.ExchangeRates, Error, void* )
	, void* userData);

/*! \brief Get all current rates. *Asynchronous*
 *
 * Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC); :::
 * \param assetIdBase Requested exchange rates base asset identifier (from the Metadata -> Assets) *Required*
 * \param filterAssetId Comma or semicolon delimited asset identifiers used to filter response (optional)
 * \param invert True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
 * \param time Time for historical rates (optional)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangerateAssetIdBaseGetAsync(char * accessToken,
	std::string assetIdBase, std::string filterAssetId, bool invert, std::string time, 
	void(* handler)(V1.ExchangeRates, Error, void* )
	, void* userData);


/*! \brief Timeseries periods. *Synchronous*
 *
 * You can also obtain historical exchange rates of any asset pair, grouped into time periods. Get full list of supported time periods available for requesting exchange rates historical timeseries data.              ## Timeseries periods Time unit | Period identifiers --- | --- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangerateHistoryPeriodsGetSync(char * accessToken,
	
	void(* handler)(std::list<V1.TimeseriesPeriod>, Error, void* )
	, void* userData);

/*! \brief Timeseries periods. *Asynchronous*
 *
 * You can also obtain historical exchange rates of any asset pair, grouped into time periods. Get full list of supported time periods available for requesting exchange rates historical timeseries data.              ## Timeseries periods Time unit | Period identifiers --- | --- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangerateHistoryPeriodsGetAsync(char * accessToken,
	
	void(* handler)(std::list<V1.TimeseriesPeriod>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://rest.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* ExchangeRatesManager_H_ */
