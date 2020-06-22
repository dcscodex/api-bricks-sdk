#ifndef _OrdersManager_H_
#define _OrdersManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "CancelAllOrder.h"
#include "CancelOrder.h"
#include "CreateOrder400.h"
#include "Messages.h"
#include "MessagesOk.h"
#include "NewOrder.h"
#include "Order.h"
#include "OrderLive.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Orders Orders
 * \ingroup Operations
 *  @{
 */
class OrdersManager {
public:
	OrdersManager();
	virtual ~OrdersManager();

/*! \brief Cancel all order. *Synchronous*
 *
 * Cancel all existing order.
 * \param cancelAllOrder  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersCancelAllPostSync(char * accessToken,
	CancelAllOrder cancelAllOrder, 
	void(* handler)(MessagesOk, Error, void* )
	, void* userData);

/*! \brief Cancel all order. *Asynchronous*
 *
 * Cancel all existing order.
 * \param cancelAllOrder  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersCancelAllPostAsync(char * accessToken,
	CancelAllOrder cancelAllOrder, 
	void(* handler)(MessagesOk, Error, void* )
	, void* userData);


/*! \brief Cancel order. *Synchronous*
 *
 * Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.
 * \param cancelOrder  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersCancelPostSync(char * accessToken,
	CancelOrder cancelOrder, 
	void(* handler)(OrderLive, Error, void* )
	, void* userData);

/*! \brief Cancel order. *Asynchronous*
 *
 * Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.
 * \param cancelOrder  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersCancelPostAsync(char * accessToken,
	CancelOrder cancelOrder, 
	void(* handler)(OrderLive, Error, void* )
	, void* userData);


/*! \brief Get orders. *Synchronous*
 *
 * List your current open orders.
 * \param exchangeId Exchange name
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Order>, Error, void* )
	, void* userData);

/*! \brief Get orders. *Asynchronous*
 *
 * List your current open orders.
 * \param exchangeId Exchange name
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Order>, Error, void* )
	, void* userData);


/*! \brief Create new order. *Synchronous*
 *
 * You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.
 * \param newOrder  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersPostSync(char * accessToken,
	NewOrder newOrder, 
	void(* handler)(OrderLive, Error, void* )
	, void* userData);

/*! \brief Create new order. *Asynchronous*
 *
 * You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.
 * \param newOrder  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersPostAsync(char * accessToken,
	NewOrder newOrder, 
	void(* handler)(OrderLive, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "http://localhost:3001";
	}
};
/** @}*/

}
}
#endif /* OrdersManager_H_ */
