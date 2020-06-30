#ifndef _PositionsManager_H_
#define _PositionsManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Position.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Positions Positions
 * \ingroup Operations
 *  @{
 */
class PositionsManager {
public:
	PositionsManager();
	virtual ~PositionsManager();

/*! \brief Get positions. *Synchronous*
 *
 * Returns all of your positions.
 * \param exchangeId Exchange name
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1PositionsGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Position>, Error, void* )
	, void* userData);

/*! \brief Get positions. *Asynchronous*
 *
 * Returns all of your positions.
 * \param exchangeId Exchange name
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1PositionsGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Position>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "http://localhost:3001";
	}
};
/** @}*/

}
}
#endif /* PositionsManager_H_ */
