#ifndef _NativeIEXManager_H_
#define _NativeIEXManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Admin.AdminMessageModel.h"
#include "Admin.SystemEventModel.h"
#include "Level1.QuoteUpdateModel.h"
#include "Level2.PriceLevelUpdateModel.h"
#include "Level3.OrderBookModel.h"
#include "Trade.TradeModel.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup NativeIEX NativeIEX
 * \ingroup Operations
 *  @{
 */
class NativeIEXManager {
public:
	NativeIEXManager();
	virtual ~NativeIEXManager();

/*! \brief Get Admin Messages. *Synchronous*
 *
 * 
 * \param symbol The symbol identifier *Required*
 * \param date Optional date in format YYYY-MM-DD (defaults to latest available data) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexAdminMessagesSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, 
	void(* handler)(std::list<Admin.AdminMessageModel>, Error, void* )
	, void* userData);

/*! \brief Get Admin Messages. *Asynchronous*
 *
 * 
 * \param symbol The symbol identifier *Required*
 * \param date Optional date in format YYYY-MM-DD (defaults to latest available data) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexAdminMessagesSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, 
	void(* handler)(std::list<Admin.AdminMessageModel>, Error, void* )
	, void* userData);


/*! \brief Get System Events. *Synchronous*
 *
 * 
 * \param date Date in format YYYY-MM-DD *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexAdminSystemEventGetSync(char * accessToken,
	std::string date, 
	void(* handler)(std::list<Admin.SystemEventModel>, Error, void* )
	, void* userData);

/*! \brief Get System Events. *Asynchronous*
 *
 * 
 * \param date Date in format YYYY-MM-DD *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexAdminSystemEventGetAsync(char * accessToken,
	std::string date, 
	void(* handler)(std::list<Admin.SystemEventModel>, Error, void* )
	, void* userData);


/*! \brief Get Level-1 Quotes. *Synchronous*
 *
 * 
 * \param symbol The symbol identifier *Required*
 * \param date Optional date in format YYYY-MM-DD (defaults to latest available data) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexLevel1QuoteSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, 
	void(* handler)(std::list<Level1.QuoteUpdateModel>, Error, void* )
	, void* userData);

/*! \brief Get Level-1 Quotes. *Asynchronous*
 *
 * 
 * \param symbol The symbol identifier *Required*
 * \param date Optional date in format YYYY-MM-DD (defaults to latest available data) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexLevel1QuoteSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, 
	void(* handler)(std::list<Level1.QuoteUpdateModel>, Error, void* )
	, void* userData);


/*! \brief Get Level-2 Price Level Book. *Synchronous*
 *
 * 
 * \param symbol The symbol identifier *Required*
 * \param date Optional date in format YYYY-MM-DD (defaults to latest available data) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexLevel2PriceLevelUpdateSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, 
	void(* handler)(std::list<Level2.PriceLevelUpdateModel>, Error, void* )
	, void* userData);

/*! \brief Get Level-2 Price Level Book. *Asynchronous*
 *
 * 
 * \param symbol The symbol identifier *Required*
 * \param date Optional date in format YYYY-MM-DD (defaults to latest available data) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexLevel2PriceLevelUpdateSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, 
	void(* handler)(std::list<Level2.PriceLevelUpdateModel>, Error, void* )
	, void* userData);


/*! \brief Get Level-3 Order Book. *Synchronous*
 *
 * 
 * \param symbol The symbol identifier *Required*
 * \param date Optional date in format YYYY-MM-DD (defaults to latest available data) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexLevel3OrderBookSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, 
	void(* handler)(std::list<Level3.OrderBookModel>, Error, void* )
	, void* userData);

/*! \brief Get Level-3 Order Book. *Asynchronous*
 *
 * 
 * \param symbol The symbol identifier *Required*
 * \param date Optional date in format YYYY-MM-DD (defaults to latest available data) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexLevel3OrderBookSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, 
	void(* handler)(std::list<Level3.OrderBookModel>, Error, void* )
	, void* userData);


/*! \brief Get Trades. *Synchronous*
 *
 * 
 * \param symbol The symbol identifier *Required*
 * \param date Optional date in format YYYY-MM-DD (defaults to latest available data) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexTradeSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, 
	void(* handler)(std::list<Trade.TradeModel>, Error, void* )
	, void* userData);

/*! \brief Get Trades. *Asynchronous*
 *
 * 
 * \param symbol The symbol identifier *Required*
 * \param date Optional date in format YYYY-MM-DD (defaults to latest available data) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1NativeIexTradeSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, 
	void(* handler)(std::list<Trade.TradeModel>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://api-historical.stock.finfeedapi.com";
	}
};
/** @}*/

}
}
#endif /* NativeIEXManager_H_ */
