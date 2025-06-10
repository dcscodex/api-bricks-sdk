#ifndef _QuotesManager_H_
#define _QuotesManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "V1.Quote.h"
#include "V1.QuoteTrade.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Quotes Quotes
 * \ingroup Operations
 *  @{
 */
class QuotesManager {
public:
	QuotesManager();
	virtual ~QuotesManager();

/*! \brief Current data. *Synchronous*
 *
 * Get current quotes for all symbols or for a specific symbol.                :::info  When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned.  :::
 * \param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1QuotesCurrentGetSync(char * accessToken,
	std::string filterSymbolId, 
	void(* handler)(std::list<V1.QuoteTrade>, Error, void* )
	, void* userData);

/*! \brief Current data. *Asynchronous*
 *
 * Get current quotes for all symbols or for a specific symbol.                :::info  When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned.  :::
 * \param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1QuotesCurrentGetAsync(char * accessToken,
	std::string filterSymbolId, 
	void(* handler)(std::list<V1.QuoteTrade>, Error, void* )
	, void* userData);


/*! \brief Latest data. *Synchronous*
 *
 * Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.
 * \param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1QuotesLatestGetSync(char * accessToken,
	std::string filterSymbolId, int limit, 
	void(* handler)(std::list<V1.Quote>, Error, void* )
	, void* userData);

/*! \brief Latest data. *Asynchronous*
 *
 * Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.
 * \param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1QuotesLatestGetAsync(char * accessToken,
	std::string filterSymbolId, int limit, 
	void(* handler)(std::list<V1.Quote>, Error, void* )
	, void* userData);


/*! \brief Current quotes for a specific symbol. *Synchronous*
 *
 * 
 * \param symbolId The symbol identifier (from the Metadata -> Symbols) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1QuotesSymbolIdCurrentGetSync(char * accessToken,
	std::string symbolId, 
	void(* handler)(V1.QuoteTrade, Error, void* )
	, void* userData);

/*! \brief Current quotes for a specific symbol. *Asynchronous*
 *
 * 
 * \param symbolId The symbol identifier (from the Metadata -> Symbols) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1QuotesSymbolIdCurrentGetAsync(char * accessToken,
	std::string symbolId, 
	void(* handler)(V1.QuoteTrade, Error, void* )
	, void* userData);


/*! \brief Historical data. *Synchronous*
 *
 * Get historical quote updates within requested time range, returned in time ascending order.    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::
 * \param symbolId Symbol identifier for requested timeseries (from the Metadata -> Symbols) *Required*
 * \param date Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Timeseries ending time in ISO 8601
 * \param limit Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1QuotesSymbolIdHistoryGetSync(char * accessToken,
	std::string symbolId, std::string date, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<V1.Quote>, Error, void* )
	, void* userData);

/*! \brief Historical data. *Asynchronous*
 *
 * Get historical quote updates within requested time range, returned in time ascending order.    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::
 * \param symbolId Symbol identifier for requested timeseries (from the Metadata -> Symbols) *Required*
 * \param date Date in ISO 8601, returned data is for the whole given day (preferred method, required if 'time_start' is not provided)
 * \param timeStart Starting time in ISO 8601
 * \param timeEnd Timeseries ending time in ISO 8601
 * \param limit Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1QuotesSymbolIdHistoryGetAsync(char * accessToken,
	std::string symbolId, std::string date, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<V1.Quote>, Error, void* )
	, void* userData);


/*! \brief Latest quote updates for a specific symbol. *Synchronous*
 *
 * 
 * \param symbolId Symbol identifier of requested timeseries (from the Metadata -> Symbols) *Required*
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1QuotesSymbolIdLatestGetSync(char * accessToken,
	std::string symbolId, int limit, 
	void(* handler)(std::list<V1.Quote>, Error, void* )
	, void* userData);

/*! \brief Latest quote updates for a specific symbol. *Asynchronous*
 *
 * 
 * \param symbolId Symbol identifier of requested timeseries (from the Metadata -> Symbols) *Required*
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1QuotesSymbolIdLatestGetAsync(char * accessToken,
	std::string symbolId, int limit, 
	void(* handler)(std::list<V1.Quote>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://rest.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* QuotesManager_H_ */
