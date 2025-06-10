#ifndef _OrderBookL3Manager_H_
#define _OrderBookL3Manager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "V1.OrderBookBase.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup OrderBookL3 OrderBookL3
 * \ingroup Operations
 *  @{
 */
class OrderBookL3Manager {
public:
	OrderBookL3Manager();
	virtual ~OrderBookL3Manager();

/*! \brief Current order books. *Synchronous*
 *
 * 
 * \param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter the response.
 * \param limitLevels The maximum number of levels to include in the response.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1Orderbooks3CurrentGetSync(char * accessToken,
	std::string filterSymbolId, int limitLevels, 
	void(* handler)(std::list<V1.OrderBookBase>, Error, void* )
	, void* userData);

/*! \brief Current order books. *Asynchronous*
 *
 * 
 * \param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter the response.
 * \param limitLevels The maximum number of levels to include in the response.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1Orderbooks3CurrentGetAsync(char * accessToken,
	std::string filterSymbolId, int limitLevels, 
	void(* handler)(std::list<V1.OrderBookBase>, Error, void* )
	, void* userData);


/*! \brief Current order book by symbol_id. *Synchronous*
 *
 * Retrieves the current order book for the specified symbol.
 * \param symbolId The symbol ID (from the Metadata -> Symbols) *Required*
 * \param limitLevels The maximum number of levels to include in the response.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1Orderbooks3SymbolIdCurrentGetSync(char * accessToken,
	std::string symbolId, int limitLevels, 
	void(* handler)(V1.OrderBookBase, Error, void* )
	, void* userData);

/*! \brief Current order book by symbol_id. *Asynchronous*
 *
 * Retrieves the current order book for the specified symbol.
 * \param symbolId The symbol ID (from the Metadata -> Symbols) *Required*
 * \param limitLevels The maximum number of levels to include in the response.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1Orderbooks3SymbolIdCurrentGetAsync(char * accessToken,
	std::string symbolId, int limitLevels, 
	void(* handler)(V1.OrderBookBase, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://rest.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* OrderBookL3Manager_H_ */
