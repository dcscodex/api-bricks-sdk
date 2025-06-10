#ifndef _ExternalMetricsManager_H_
#define _ExternalMetricsManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "V1.Chain.h"
#include "V1.ExternalAsset.h"
#include "V1.ExternalExchange.h"
#include "V1.MetricInfo.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup ExternalMetrics ExternalMetrics
 * \ingroup Operations
 *  @{
 */
class ExternalMetricsManager {
public:
	ExternalMetricsManager();
	virtual ~ExternalMetricsManager();

/*! \brief Historical metrics for the asset from external sources. *Synchronous*
 *
 * Get asset metrics history from external data providers. Data is typically aggregated daily.
 * \param metricId Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key) *Required*
 * \param assetId Asset identifier (e.g., `USDC`, `USDT` - from supported assets list) *Required*
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Ending time in ISO 8601
 * \param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
 * \param periodId Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsAssetHistoryGetSync(char * accessToken,
	std::string metricId, std::string assetId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData);

/*! \brief Historical metrics for the asset from external sources. *Asynchronous*
 *
 * Get asset metrics history from external data providers. Data is typically aggregated daily.
 * \param metricId Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key) *Required*
 * \param assetId Asset identifier (e.g., `USDC`, `USDT` - from supported assets list) *Required*
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Ending time in ISO 8601
 * \param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
 * \param periodId Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsAssetHistoryGetAsync(char * accessToken,
	std::string metricId, std::string assetId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData);


/*! \brief Listing of metrics available for specific asset. *Synchronous*
 *
 * Get all metrics that are actually available for the specified asset from external providers.
 * \param assetId Asset identifier (e.g., USDC, USDT) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsAssetListingGetSync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData);

/*! \brief Listing of metrics available for specific asset. *Asynchronous*
 *
 * Get all metrics that are actually available for the specified asset from external providers.
 * \param assetId Asset identifier (e.g., USDC, USDT) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsAssetListingGetAsync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData);


/*! \brief Listing of all supported external assets. *Synchronous*
 *
 * Get all assets (primarily stablecoins) supported by external data providers.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsAssetsGetSync(char * accessToken,
	
	void(* handler)(std::list<V1.ExternalAsset>, Error, void* )
	, void* userData);

/*! \brief Listing of all supported external assets. *Asynchronous*
 *
 * Get all assets (primarily stablecoins) supported by external data providers.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsAssetsGetAsync(char * accessToken,
	
	void(* handler)(std::list<V1.ExternalAsset>, Error, void* )
	, void* userData);


/*! \brief Historical metrics for the chain from external sources. *Synchronous*
 *
 * Get chain metrics history from external data providers. Data is typically aggregated daily.
 * \param metricId Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key) *Required*
 * \param chainId Chain identifier (e.g., `Ethereum`, `Arbitrum` - from supported chains list) *Required*
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Ending time in ISO 8601
 * \param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
 * \param periodId Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsChainHistoryGetSync(char * accessToken,
	std::string metricId, std::string chainId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData);

/*! \brief Historical metrics for the chain from external sources. *Asynchronous*
 *
 * Get chain metrics history from external data providers. Data is typically aggregated daily.
 * \param metricId Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` - internal metric key) *Required*
 * \param chainId Chain identifier (e.g., `Ethereum`, `Arbitrum` - from supported chains list) *Required*
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Ending time in ISO 8601
 * \param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
 * \param periodId Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsChainHistoryGetAsync(char * accessToken,
	std::string metricId, std::string chainId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData);


/*! \brief Listing of metrics available for specific chain. *Synchronous*
 *
 * Get all metrics that are actually available for the specified blockchain chain from external providers.
 * \param chainId Chain identifier (e.g., ETHEREUM, ARBITRUM) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsChainListingGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData);

/*! \brief Listing of metrics available for specific chain. *Asynchronous*
 *
 * Get all metrics that are actually available for the specified blockchain chain from external providers.
 * \param chainId Chain identifier (e.g., ETHEREUM, ARBITRUM) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsChainListingGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData);


/*! \brief Listing of all supported external chains. *Synchronous*
 *
 * Get all blockchain chains supported by external data providers.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsChainsGetSync(char * accessToken,
	
	void(* handler)(std::list<V1.Chain>, Error, void* )
	, void* userData);

/*! \brief Listing of all supported external chains. *Asynchronous*
 *
 * Get all blockchain chains supported by external data providers.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsChainsGetAsync(char * accessToken,
	
	void(* handler)(std::list<V1.Chain>, Error, void* )
	, void* userData);


/*! \brief Historical metrics for the exchange from both external and internal sources. *Synchronous*
 *
 * Get exchange metrics history from external data providers or internal sources based on metric type.
 * \param metricId Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` for external, or generic metric IDs) *Required*
 * \param exchangeId Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`) *Required*
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Ending time in ISO 8601
 * \param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
 * \param periodId Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsExchangeHistoryGetSync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData);

/*! \brief Historical metrics for the exchange from both external and internal sources. *Asynchronous*
 *
 * Get exchange metrics history from external data providers or internal sources based on metric type.
 * \param metricId Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD` for external, or generic metric IDs) *Required*
 * \param exchangeId Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`) *Required*
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Ending time in ISO 8601
 * \param timeFormat If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
 * \param periodId Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsExchangeHistoryGetAsync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData);


/*! \brief Listing of metrics available for specific exchange (both external and generic). *Synchronous*
 *
 * Get all metrics that are actually available for the specified exchange from both external providers and internal sources.
 * \param exchangeId Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsExchangeListingGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData);

/*! \brief Listing of metrics available for specific exchange (both external and generic). *Asynchronous*
 *
 * Get all metrics that are actually available for the specified exchange from both external providers and internal sources.
 * \param exchangeId Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsExchangeListingGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData);


/*! \brief Listing of all supported external exchanges. *Synchronous*
 *
 * Get all exchanges that have mapping to external data providers for metrics that actually have sources.  Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsExchangesGetSync(char * accessToken,
	
	void(* handler)(std::list<V1.ExternalExchange>, Error, void* )
	, void* userData);

/*! \brief Listing of all supported external exchanges. *Asynchronous*
 *
 * Get all exchanges that have mapping to external data providers for metrics that actually have sources.  Only returns exchanges that are properly mapped to external protocols for metrics with defined sources.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsExchangesGetAsync(char * accessToken,
	
	void(* handler)(std::list<V1.ExternalExchange>, Error, void* )
	, void* userData);


/*! \brief Listing of all supported metrics (both external and generic). *Synchronous*
 *
 * Get all metrics available from external data providers and internal generic metrics.  External metrics have detailed descriptions, while generic metrics are marked as such.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsListingGetSync(char * accessToken,
	
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData);

/*! \brief Listing of all supported metrics (both external and generic). *Asynchronous*
 *
 * Get all metrics available from external data providers and internal generic metrics.  External metrics have detailed descriptions, while generic metrics are marked as such.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsListingGetAsync(char * accessToken,
	
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://rest.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* ExternalMetricsManager_H_ */
