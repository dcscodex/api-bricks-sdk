#ifndef _TradesManager_H_
#define _TradesManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "V1.Trade.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Trades Trades
 * \ingroup Operations
 *  @{
 */
class TradesManager {
public:
	TradesManager();
	virtual ~TradesManager();

/*! \brief Latest data. *Synchronous*
 *
 * Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
 * \param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
 * \param includeId Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1TradesLatestGetSync(char * accessToken,
	std::string filterSymbolId, bool includeId, int limit, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
	, void* userData);

/*! \brief Latest data. *Asynchronous*
 *
 * Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
 * \param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
 * \param includeId Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1TradesLatestGetAsync(char * accessToken,
	std::string filterSymbolId, bool includeId, int limit, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
	, void* userData);


/*! \brief Historical data. *Synchronous*
 *
 * Get history transactions from specific symbol, returned in time ascending order.    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::
 * \param symbolId Symbol identifier for requested timeseries (from the Metadata -> Symbols) *Required*
 * \param date Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided)
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Timeseries ending time in ISO 8601
 * \param limit Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param includeId Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1TradesSymbolIdHistoryGetSync(char * accessToken,
	std::string symbolId, std::string date, std::string timeStart, std::string timeEnd, int limit, bool includeId, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
	, void* userData);

/*! \brief Historical data. *Asynchronous*
 *
 * Get history transactions from specific symbol, returned in time ascending order.    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::
 * \param symbolId Symbol identifier for requested timeseries (from the Metadata -> Symbols) *Required*
 * \param date Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided)
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Timeseries ending time in ISO 8601
 * \param limit Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param includeId Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1TradesSymbolIdHistoryGetAsync(char * accessToken,
	std::string symbolId, std::string date, std::string timeStart, std::string timeEnd, int limit, bool includeId, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
	, void* userData);


/*! \brief Latest data by symbol_id. *Synchronous*
 *
 * Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
 * \param symbolId Symbol identifier for requested timeseries (from the Metadata -> Symbols) *Required*
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param includeId Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1TradesSymbolIdLatestGetSync(char * accessToken,
	std::string symbolId, int limit, bool includeId, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
	, void* userData);

/*! \brief Latest data by symbol_id. *Asynchronous*
 *
 * Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
 * \param symbolId Symbol identifier for requested timeseries (from the Metadata -> Symbols) *Required*
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param includeId Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1TradesSymbolIdLatestGetAsync(char * accessToken,
	std::string symbolId, int limit, bool includeId, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://rest.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* TradesManager_H_ */
