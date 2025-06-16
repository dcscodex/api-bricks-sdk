#ifndef _ExternalMetricsManager_H_
#define _ExternalMetricsManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
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

/*! \brief Historical metrics for the asset. *Synchronous*
 *
 * Get asset metrics history.
 * \param metricId Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`) *Required*
 * \param assetId Asset identifier (e.g., `USDC`, `USDT`) *Required*
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

/*! \brief Historical metrics for the asset. *Asynchronous*
 *
 * Get asset metrics history.
 * \param metricId Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`) *Required*
 * \param assetId Asset identifier (e.g., `USDC`, `USDT`) *Required*
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
 * Get all metrics that are actually available for the specified asset.
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
 * Get all metrics that are actually available for the specified asset.
 * \param assetId Asset identifier (e.g., USDC, USDT) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsAssetListingGetAsync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData);


/*! \brief Historical metrics for the chain. *Synchronous*
 *
 * Get chain metrics history.
 * \param metricId Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`) *Required*
 * \param chainId Chain identifier (e.g., `Ethereum`, `Arbitrum`) *Required*
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

/*! \brief Historical metrics for the chain. *Asynchronous*
 *
 * Get chain metrics history.
 * \param metricId Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`) *Required*
 * \param chainId Chain identifier (e.g., `Ethereum`, `Arbitrum`) *Required*
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
 * Get all metrics that are actually available for the specified blockchain chain.
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
 * Get all metrics that are actually available for the specified blockchain chain.
 * \param chainId Chain identifier (e.g., ETHEREUM, ARBITRUM) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsChainListingGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData);


/*! \brief Historical metrics for the exchange. *Synchronous*
 *
 * Get exchange metrics history.
 * \param metricId Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`) *Required*
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

/*! \brief Historical metrics for the exchange. *Asynchronous*
 *
 * Get exchange metrics history.
 * \param metricId Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`) *Required*
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


/*! \brief Listing of metrics available for specific exchange. *Synchronous*
 *
 * Get all metrics that are actually available for the specified exchange.
 * \param exchangeId Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsExchangeListingGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData);

/*! \brief Listing of metrics available for specific exchange. *Asynchronous*
 *
 * Get all metrics that are actually available for the specified exchange.
 * \param exchangeId Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsExchangeListingGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData);


/*! \brief Listing of all supported metrics. *Synchronous*
 *
 * Get all metrics available in the system.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExternalmetricsListingGetSync(char * accessToken,
	
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData);

/*! \brief Listing of all supported metrics. *Asynchronous*
 *
 * Get all metrics available in the system.
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
