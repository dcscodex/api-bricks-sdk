#ifndef _MetricsV1Manager_H_
#define _MetricsV1Manager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "V1.GeneralData.h"
#include "V1.ListingItem.h"
#include "V1.Metric.h"
#include "V1.MetricData.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup MetricsV1 MetricsV1
 * \ingroup Operations
 *  @{
 */
class MetricsV1Manager {
public:
	MetricsV1Manager();
	virtual ~MetricsV1Manager();

/*! \brief Current metrics for given asset. *Synchronous*
 *
 * Get current asset metrics.
 * \param metricId Metric identifier (from the Metrics -> Listing)
 * \param assetId Asset identifier (from the Metadata -> Assets)
 * \param assetIdExternal Exchange asset identifier
 * \param exchangeId Exchange identifier (from the Metadata -> Exchanges)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsAssetCurrentGetSync(char * accessToken,
	std::string metricId, std::string assetId, std::string assetIdExternal, std::string exchangeId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData);

/*! \brief Current metrics for given asset. *Asynchronous*
 *
 * Get current asset metrics.
 * \param metricId Metric identifier (from the Metrics -> Listing)
 * \param assetId Asset identifier (from the Metadata -> Assets)
 * \param assetIdExternal Exchange asset identifier
 * \param exchangeId Exchange identifier (from the Metadata -> Exchanges)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsAssetCurrentGetAsync(char * accessToken,
	std::string metricId, std::string assetId, std::string assetIdExternal, std::string exchangeId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData);


/*! \brief Historical metrics for asset. *Synchronous*
 *
 * Get asset metrics history.
 * \param metricId Metric identifier (from the Metrics -> Listing) *Required*
 * \param exchangeId Exchange identifier (from the Metadata -> Exchanges) *Required*
 * \param assetId Asset identifier (from the Metadata -> Assets)
 * \param assetIdExternal Exchange asset identifier
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Ending time in ISO 8601
 * \param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
 * \param periodId Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsAssetHistoryGetSync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string assetId, std::string assetIdExternal, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData);

/*! \brief Historical metrics for asset. *Asynchronous*
 *
 * Get asset metrics history.
 * \param metricId Metric identifier (from the Metrics -> Listing) *Required*
 * \param exchangeId Exchange identifier (from the Metadata -> Exchanges) *Required*
 * \param assetId Asset identifier (from the Metadata -> Assets)
 * \param assetIdExternal Exchange asset identifier
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Ending time in ISO 8601
 * \param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
 * \param periodId Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsAssetHistoryGetAsync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string assetId, std::string assetIdExternal, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData);


/*! \brief Listing of all supported metrics for asset. *Synchronous*
 *
 * Get data metrics for asset.
 * \param metricId Metric identifier (from the Metrics -> Listing)
 * \param exchangeId Exchange identifier (from the Metadata -> Exchanges)
 * \param chainId Chain identifier
 * \param networkId Network identifier
 * \param assetId Asset identifier (from the Metadata -> Assets)
 * \param assetIdExternal The asset external identifier
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsAssetListingGetSync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string chainId, std::string networkId, std::string assetId, std::string assetIdExternal, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData);

/*! \brief Listing of all supported metrics for asset. *Asynchronous*
 *
 * Get data metrics for asset.
 * \param metricId Metric identifier (from the Metrics -> Listing)
 * \param exchangeId Exchange identifier (from the Metadata -> Exchanges)
 * \param chainId Chain identifier
 * \param networkId Network identifier
 * \param assetId Asset identifier (from the Metadata -> Assets)
 * \param assetIdExternal The asset external identifier
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsAssetListingGetAsync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string chainId, std::string networkId, std::string assetId, std::string assetIdExternal, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData);


/*! \brief Current metrics for given exchange. *Synchronous*
 *
 * Get current exchange metrics values.
 * \param exchangeId The exchange identifier (from the Metadata -> Exchanges) *Required*
 * \param metricId The metric identifier (from the Metrics -> Listing)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsExchangeCurrentGetSync(char * accessToken,
	std::string exchangeId, std::string metricId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData);

/*! \brief Current metrics for given exchange. *Asynchronous*
 *
 * Get current exchange metrics values.
 * \param exchangeId The exchange identifier (from the Metadata -> Exchanges) *Required*
 * \param metricId The metric identifier (from the Metrics -> Listing)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsExchangeCurrentGetAsync(char * accessToken,
	std::string exchangeId, std::string metricId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData);


/*! \brief Historical metrics for the exchange. *Synchronous*
 *
 * Get exchange metrics history.
 * \param metricId Metric identifier (from the Metrics -> Listing) *Required*
 * \param exchangeId Exchange identifier (from the Metadata -> Exchanges) *Required*
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Ending time in ISO 8601
 * \param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
 * \param periodId Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsExchangeHistoryGetSync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData);

/*! \brief Historical metrics for the exchange. *Asynchronous*
 *
 * Get exchange metrics history.
 * \param metricId Metric identifier (from the Metrics -> Listing) *Required*
 * \param exchangeId Exchange identifier (from the Metadata -> Exchanges) *Required*
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Ending time in ISO 8601
 * \param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
 * \param periodId Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsExchangeHistoryGetAsync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData);


/*! \brief Listing of all supported exchange metrics. *Synchronous*
 *
 * Get data metrics for exchange.
 * \param exchangeId The exchange identifier (from the Metadata -> Exchanges) *Required*
 * \param metricId The metric identifier (from the Metrics -> Listing)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsExchangeListingGetSync(char * accessToken,
	std::string exchangeId, std::string metricId, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData);

/*! \brief Listing of all supported exchange metrics. *Asynchronous*
 *
 * Get data metrics for exchange.
 * \param exchangeId The exchange identifier (from the Metadata -> Exchanges) *Required*
 * \param metricId The metric identifier (from the Metrics -> Listing)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsExchangeListingGetAsync(char * accessToken,
	std::string exchangeId, std::string metricId, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData);


/*! \brief Listing of all supported metrics by CoinAPI. *Synchronous*
 *
 * Get all data metrics.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsListingGetSync(char * accessToken,
	
	void(* handler)(std::list<V1.Metric>, Error, void* )
	, void* userData);

/*! \brief Listing of all supported metrics by CoinAPI. *Asynchronous*
 *
 * Get all data metrics.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsListingGetAsync(char * accessToken,
	
	void(* handler)(std::list<V1.Metric>, Error, void* )
	, void* userData);


/*! \brief Current metrics for given symbol. *Synchronous*
 *
 * Get current symbol metrics.
 * \param metricId Metric identifier (from the Metrics -> Listing)
 * \param symbolId Symbol identifier (from the Metadata -> Symbols)
 * \param exchangeId Exchange id (from the Metadata -> Exchanges)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsSymbolCurrentGetSync(char * accessToken,
	std::string metricId, std::string symbolId, std::string exchangeId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData);

/*! \brief Current metrics for given symbol. *Asynchronous*
 *
 * Get current symbol metrics.
 * \param metricId Metric identifier (from the Metrics -> Listing)
 * \param symbolId Symbol identifier (from the Metadata -> Symbols)
 * \param exchangeId Exchange id (from the Metadata -> Exchanges)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsSymbolCurrentGetAsync(char * accessToken,
	std::string metricId, std::string symbolId, std::string exchangeId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData);


/*! \brief Historical metrics for symbol. *Synchronous*
 *
 * Get symbol metrics history.
 * \param metricId Metric identifier (from the Metrics -> Listing) *Required*
 * \param symbolId Symbol identifier (from the Metadata -> Symbols) *Required*
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Ending time in ISO 8601
 * \param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
 * \param periodId Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsSymbolHistoryGetSync(char * accessToken,
	std::string metricId, std::string symbolId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData);

/*! \brief Historical metrics for symbol. *Asynchronous*
 *
 * Get symbol metrics history.
 * \param metricId Metric identifier (from the Metrics -> Listing) *Required*
 * \param symbolId Symbol identifier (from the Metadata -> Symbols) *Required*
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Ending time in ISO 8601
 * \param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
 * \param periodId Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsSymbolHistoryGetAsync(char * accessToken,
	std::string metricId, std::string symbolId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData);


/*! \brief Listing of all supported metrics for symbol. *Synchronous*
 *
 * Get data metrics for symbol.
 * \param metricId Metric identifier (from the Metrics -> Listing)
 * \param exchangeId Exchange identifier (from the Metadata -> Exchanges)
 * \param symbolId Symbol identifier (from the Metadata -> Symbols)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsSymbolListingGetSync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string symbolId, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData);

/*! \brief Listing of all supported metrics for symbol. *Asynchronous*
 *
 * Get data metrics for symbol.
 * \param metricId Metric identifier (from the Metrics -> Listing)
 * \param exchangeId Exchange identifier (from the Metadata -> Exchanges)
 * \param symbolId Symbol identifier (from the Metadata -> Symbols)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetricsSymbolListingGetAsync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string symbolId, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://rest.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* MetricsV1Manager_H_ */
