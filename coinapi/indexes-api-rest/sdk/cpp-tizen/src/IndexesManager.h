#ifndef _IndexesManager_H_
#define _IndexesManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Indexes.IndexDefinitionInputData.h"
#include "Indexes.IndexDefinitionSnapshotEntry.h"
#include "Indexes.IndexIdentifier.h"
#include "Indexes.IndexMultiAssetWeight.h"
#include "Indexes.IndexTimeseriesItem.h"
#include "Indexes.IndexValue.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Indexes Indexes
 * \ingroup Operations
 *  @{
 */
class IndexesManager {
public:
	IndexesManager();
	virtual ~IndexesManager();

/*! \brief Returns all data inputs for a specific index definition. *Synchronous*
 *
 * 
 * \param indexDefinitionId  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexdefInputDataIndexDefinitionIdAllGetSync(char * accessToken,
	std::string indexDefinitionId, 
	void(* handler)(std::list<Indexes.IndexDefinitionInputData>, Error, void* )
	, void* userData);

/*! \brief Returns all data inputs for a specific index definition. *Asynchronous*
 *
 * 
 * \param indexDefinitionId  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexdefInputDataIndexDefinitionIdAllGetAsync(char * accessToken,
	std::string indexDefinitionId, 
	void(* handler)(std::list<Indexes.IndexDefinitionInputData>, Error, void* )
	, void* userData);


/*! \brief Returns data inputs for certain index definition and time. *Synchronous*
 *
 * 
 * \param indexDefinitionId  *Required*
 * \param time 
 * \param enabledOnly 
 * \param pendingOnly 
 * \param filterAssetId 
 * \param withStatusInfo 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexdefInputDataIndexDefinitionIdGetSync(char * accessToken,
	std::string indexDefinitionId, std::string time, bool enabledOnly, bool pendingOnly, std::string filterAssetId, bool withStatusInfo, 
	void(* handler)(std::list<Indexes.IndexDefinitionSnapshotEntry>, Error, void* )
	, void* userData);

/*! \brief Returns data inputs for certain index definition and time. *Asynchronous*
 *
 * 
 * \param indexDefinitionId  *Required*
 * \param time 
 * \param enabledOnly 
 * \param pendingOnly 
 * \param filterAssetId 
 * \param withStatusInfo 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexdefInputDataIndexDefinitionIdGetAsync(char * accessToken,
	std::string indexDefinitionId, std::string time, bool enabledOnly, bool pendingOnly, std::string filterAssetId, bool withStatusInfo, 
	void(* handler)(std::list<Indexes.IndexDefinitionSnapshotEntry>, Error, void* )
	, void* userData);


/*! \brief Get all multi-asset weights. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexdefMultiassetGetSync(char * accessToken,
	
	void(* handler)(std::list<Indexes.IndexMultiAssetWeight>, Error, void* )
	, void* userData);

/*! \brief Get all multi-asset weights. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexdefMultiassetGetAsync(char * accessToken,
	
	void(* handler)(std::list<Indexes.IndexMultiAssetWeight>, Error, void* )
	, void* userData);


/*! \brief Get multi-asset weights for specific index. *Synchronous*
 *
 * 
 * \param indexId  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexdefMultiassetIndexIdGetSync(char * accessToken,
	std::string indexId, 
	void(* handler)(std::list<Indexes.IndexMultiAssetWeight>, Error, void* )
	, void* userData);

/*! \brief Get multi-asset weights for specific index. *Asynchronous*
 *
 * 
 * \param indexId  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexdefMultiassetIndexIdGetAsync(char * accessToken,
	std::string indexId, 
	void(* handler)(std::list<Indexes.IndexMultiAssetWeight>, Error, void* )
	, void* userData);


/*! \brief List indexes. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexesGetSync(char * accessToken,
	
	void(* handler)(std::list<Indexes.IndexIdentifier>, Error, void* )
	, void* userData);

/*! \brief List indexes. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexesGetAsync(char * accessToken,
	
	void(* handler)(std::list<Indexes.IndexIdentifier>, Error, void* )
	, void* userData);


/*! \brief Current Index Values for index definition. *Synchronous*
 *
 * 
 * \param indexDefinitionId  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexesIndexDefinitionIdCurrentSnapshotGetSync(char * accessToken,
	std::string indexDefinitionId, 
	void(* handler)(std::list<Indexes.IndexDefinitionSnapshotEntry>, Error, void* )
	, void* userData);

/*! \brief Current Index Values for index definition. *Asynchronous*
 *
 * 
 * \param indexDefinitionId  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexesIndexDefinitionIdCurrentSnapshotGetAsync(char * accessToken,
	std::string indexDefinitionId, 
	void(* handler)(std::list<Indexes.IndexDefinitionSnapshotEntry>, Error, void* )
	, void* userData);


/*! \brief Historical Index Values for index definition. *Synchronous*
 *
 * 
 * \param indexDefinitionId  *Required*
 * \param time 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexesIndexDefinitionIdHistorySnapshotGetSync(char * accessToken,
	std::string indexDefinitionId, std::string time, 
	void(* handler)(std::list<Indexes.IndexDefinitionSnapshotEntry>, Error, void* )
	, void* userData);

/*! \brief Historical Index Values for index definition. *Asynchronous*
 *
 * 
 * \param indexDefinitionId  *Required*
 * \param time 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexesIndexDefinitionIdHistorySnapshotGetAsync(char * accessToken,
	std::string indexDefinitionId, std::string time, 
	void(* handler)(std::list<Indexes.IndexDefinitionSnapshotEntry>, Error, void* )
	, void* userData);


/*! \brief Current Index Value. *Synchronous*
 *
 * 
 * \param indexId  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexesIndexIdCurrentGetSync(char * accessToken,
	std::string indexId, 
	void(* handler)(Indexes.IndexValue, Error, void* )
	, void* userData);

/*! \brief Current Index Value. *Asynchronous*
 *
 * 
 * \param indexId  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexesIndexIdCurrentGetAsync(char * accessToken,
	std::string indexId, 
	void(* handler)(Indexes.IndexValue, Error, void* )
	, void* userData);


/*! \brief Historical Index Value w/Composition. *Synchronous*
 *
 * 
 * \param indexId  *Required*
 * \param timeStart 
 * \param timeEnd 
 * \param limit 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexesIndexIdHistoryGetSync(char * accessToken,
	std::string indexId, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<Indexes.IndexValue>, Error, void* )
	, void* userData);

/*! \brief Historical Index Value w/Composition. *Asynchronous*
 *
 * 
 * \param indexId  *Required*
 * \param timeStart 
 * \param timeEnd 
 * \param limit 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexesIndexIdHistoryGetAsync(char * accessToken,
	std::string indexId, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<Indexes.IndexValue>, Error, void* )
	, void* userData);


/*! \brief Timeseries Index Value. *Synchronous*
 *
 * 
 * \param indexId  *Required*
 * \param periodId Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`) *Required*
 * \param timeStart Timeseries starting time in ISO 8601 *Required*
 * \param timeEnd Timeseries ending time in ISO 8601 *Required*
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexesIndexIdTimeseriesGetSync(char * accessToken,
	std::string indexId, std::string periodId, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<Indexes.IndexTimeseriesItem>, Error, void* )
	, void* userData);

/*! \brief Timeseries Index Value. *Asynchronous*
 *
 * 
 * \param indexId  *Required*
 * \param periodId Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`) *Required*
 * \param timeStart Timeseries starting time in ISO 8601 *Required*
 * \param timeEnd Timeseries ending time in ISO 8601 *Required*
 * \param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1IndexesIndexIdTimeseriesGetAsync(char * accessToken,
	std::string indexId, std::string periodId, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<Indexes.IndexTimeseriesItem>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://rest-api.indexes.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* IndexesManager_H_ */
