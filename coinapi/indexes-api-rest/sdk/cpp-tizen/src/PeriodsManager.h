#ifndef _PeriodsManager_H_
#define _PeriodsManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Metadata.TimeseriesPeriod.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Periods Periods
 * \ingroup Operations
 *  @{
 */
class PeriodsManager {
public:
	PeriodsManager();
	virtual ~PeriodsManager();

/*! \brief List all periods. *Synchronous*
 *
 * Get full list of supported time periods              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetadataPeriodsGetSync(char * accessToken,
	
	void(* handler)(std::list<Metadata.TimeseriesPeriod>, Error, void* )
	, void* userData);

/*! \brief List all periods. *Asynchronous*
 *
 * Get full list of supported time periods              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1MetadataPeriodsGetAsync(char * accessToken,
	
	void(* handler)(std::list<Metadata.TimeseriesPeriod>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://rest-api.indexes.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* PeriodsManager_H_ */
