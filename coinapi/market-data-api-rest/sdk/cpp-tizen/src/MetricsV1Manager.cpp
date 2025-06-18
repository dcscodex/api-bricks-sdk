#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "MetricsV1Manager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


MetricsV1Manager::MetricsV1Manager()
{

}

MetricsV1Manager::~MetricsV1Manager()
{

}

static gboolean __MetricsV1ManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __MetricsV1ManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__MetricsV1ManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v1MetricsAssetCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.GeneralData>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.GeneralData> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.GeneralData singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1MetricsAssetCurrentGetHelper(char * accessToken,
	std::string metricId, std::string assetId, std::string assetIdExternal, std::string exchangeId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&metricId, "std::string");
	queryParams.insert(pair<string, string>("metric_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("metric_id");
	}


	itemAtq = stringify(&assetId, "std::string");
	queryParams.insert(pair<string, string>("asset_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("asset_id");
	}


	itemAtq = stringify(&assetIdExternal, "std::string");
	queryParams.insert(pair<string, string>("asset_id_external", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("asset_id_external");
	}


	itemAtq = stringify(&exchangeId, "std::string");
	queryParams.insert(pair<string, string>("exchange_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("exchange_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/metrics/asset/current");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1MetricsAssetCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1MetricsAssetCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV1ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV1Manager::v1MetricsAssetCurrentGetAsync(char * accessToken,
	std::string metricId, std::string assetId, std::string assetIdExternal, std::string exchangeId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData)
{
	return v1MetricsAssetCurrentGetHelper(accessToken,
	metricId, assetId, assetIdExternal, exchangeId, 
	handler, userData, true);
}

bool MetricsV1Manager::v1MetricsAssetCurrentGetSync(char * accessToken,
	std::string metricId, std::string assetId, std::string assetIdExternal, std::string exchangeId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData)
{
	return v1MetricsAssetCurrentGetHelper(accessToken,
	metricId, assetId, assetIdExternal, exchangeId, 
	handler, userData, false);
}

static bool v1MetricsAssetHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.MetricData>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.MetricData> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.MetricData singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1MetricsAssetHistoryGetHelper(char * accessToken,
	std::string metricId, std::string exchangeId, std::string assetId, std::string assetIdExternal, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&metricId, "std::string");
	queryParams.insert(pair<string, string>("metric_id", itemAtq));


	itemAtq = stringify(&assetId, "std::string");
	queryParams.insert(pair<string, string>("asset_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("asset_id");
	}


	itemAtq = stringify(&assetIdExternal, "std::string");
	queryParams.insert(pair<string, string>("asset_id_external", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("asset_id_external");
	}


	itemAtq = stringify(&exchangeId, "std::string");
	queryParams.insert(pair<string, string>("exchange_id", itemAtq));


	itemAtq = stringify(&timeStart, "std::string");
	queryParams.insert(pair<string, string>("time_start", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_start");
	}


	itemAtq = stringify(&timeEnd, "std::string");
	queryParams.insert(pair<string, string>("time_end", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_end");
	}


	itemAtq = stringify(&timeFormat, "std::string");
	queryParams.insert(pair<string, string>("time_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_format");
	}


	itemAtq = stringify(&periodId, "std::string");
	queryParams.insert(pair<string, string>("period_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("period_id");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/metrics/asset/history");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1MetricsAssetHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1MetricsAssetHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV1ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV1Manager::v1MetricsAssetHistoryGetAsync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string assetId, std::string assetIdExternal, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData)
{
	return v1MetricsAssetHistoryGetHelper(accessToken,
	metricId, exchangeId, assetId, assetIdExternal, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, true);
}

bool MetricsV1Manager::v1MetricsAssetHistoryGetSync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string assetId, std::string assetIdExternal, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData)
{
	return v1MetricsAssetHistoryGetHelper(accessToken,
	metricId, exchangeId, assetId, assetIdExternal, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, false);
}

static bool v1MetricsAssetListingGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.ListingItem>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.ListingItem> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.ListingItem singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1MetricsAssetListingGetHelper(char * accessToken,
	std::string metricId, std::string exchangeId, std::string chainId, std::string networkId, std::string assetId, std::string assetIdExternal, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&metricId, "std::string");
	queryParams.insert(pair<string, string>("metric_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("metric_id");
	}


	itemAtq = stringify(&exchangeId, "std::string");
	queryParams.insert(pair<string, string>("exchange_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("exchange_id");
	}


	itemAtq = stringify(&chainId, "std::string");
	queryParams.insert(pair<string, string>("chain_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("chain_id");
	}


	itemAtq = stringify(&networkId, "std::string");
	queryParams.insert(pair<string, string>("network_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("network_id");
	}


	itemAtq = stringify(&assetId, "std::string");
	queryParams.insert(pair<string, string>("asset_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("asset_id");
	}


	itemAtq = stringify(&assetIdExternal, "std::string");
	queryParams.insert(pair<string, string>("asset_id_external", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("asset_id_external");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/metrics/asset/listing");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1MetricsAssetListingGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1MetricsAssetListingGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV1ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV1Manager::v1MetricsAssetListingGetAsync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string chainId, std::string networkId, std::string assetId, std::string assetIdExternal, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData)
{
	return v1MetricsAssetListingGetHelper(accessToken,
	metricId, exchangeId, chainId, networkId, assetId, assetIdExternal, 
	handler, userData, true);
}

bool MetricsV1Manager::v1MetricsAssetListingGetSync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string chainId, std::string networkId, std::string assetId, std::string assetIdExternal, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData)
{
	return v1MetricsAssetListingGetHelper(accessToken,
	metricId, exchangeId, chainId, networkId, assetId, assetIdExternal, 
	handler, userData, false);
}

static bool v1MetricsExchangeCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.GeneralData>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.GeneralData> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.GeneralData singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1MetricsExchangeCurrentGetHelper(char * accessToken,
	std::string exchangeId, std::string metricId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&metricId, "std::string");
	queryParams.insert(pair<string, string>("metric_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("metric_id");
	}


	itemAtq = stringify(&exchangeId, "std::string");
	queryParams.insert(pair<string, string>("exchange_id", itemAtq));

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/metrics/exchange/current");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1MetricsExchangeCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1MetricsExchangeCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV1ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV1Manager::v1MetricsExchangeCurrentGetAsync(char * accessToken,
	std::string exchangeId, std::string metricId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData)
{
	return v1MetricsExchangeCurrentGetHelper(accessToken,
	exchangeId, metricId, 
	handler, userData, true);
}

bool MetricsV1Manager::v1MetricsExchangeCurrentGetSync(char * accessToken,
	std::string exchangeId, std::string metricId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData)
{
	return v1MetricsExchangeCurrentGetHelper(accessToken,
	exchangeId, metricId, 
	handler, userData, false);
}

static bool v1MetricsExchangeHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.MetricData>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.MetricData> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.MetricData singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1MetricsExchangeHistoryGetHelper(char * accessToken,
	std::string metricId, std::string exchangeId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&metricId, "std::string");
	queryParams.insert(pair<string, string>("metric_id", itemAtq));


	itemAtq = stringify(&exchangeId, "std::string");
	queryParams.insert(pair<string, string>("exchange_id", itemAtq));


	itemAtq = stringify(&timeStart, "std::string");
	queryParams.insert(pair<string, string>("time_start", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_start");
	}


	itemAtq = stringify(&timeEnd, "std::string");
	queryParams.insert(pair<string, string>("time_end", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_end");
	}


	itemAtq = stringify(&timeFormat, "std::string");
	queryParams.insert(pair<string, string>("time_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_format");
	}


	itemAtq = stringify(&periodId, "std::string");
	queryParams.insert(pair<string, string>("period_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("period_id");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/metrics/exchange/history");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1MetricsExchangeHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1MetricsExchangeHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV1ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV1Manager::v1MetricsExchangeHistoryGetAsync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData)
{
	return v1MetricsExchangeHistoryGetHelper(accessToken,
	metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, true);
}

bool MetricsV1Manager::v1MetricsExchangeHistoryGetSync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData)
{
	return v1MetricsExchangeHistoryGetHelper(accessToken,
	metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, false);
}

static bool v1MetricsExchangeListingGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.ListingItem>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.ListingItem> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.ListingItem singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1MetricsExchangeListingGetHelper(char * accessToken,
	std::string exchangeId, std::string metricId, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&metricId, "std::string");
	queryParams.insert(pair<string, string>("metric_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("metric_id");
	}


	itemAtq = stringify(&exchangeId, "std::string");
	queryParams.insert(pair<string, string>("exchange_id", itemAtq));

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/metrics/exchange/listing");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1MetricsExchangeListingGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1MetricsExchangeListingGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV1ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV1Manager::v1MetricsExchangeListingGetAsync(char * accessToken,
	std::string exchangeId, std::string metricId, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData)
{
	return v1MetricsExchangeListingGetHelper(accessToken,
	exchangeId, metricId, 
	handler, userData, true);
}

bool MetricsV1Manager::v1MetricsExchangeListingGetSync(char * accessToken,
	std::string exchangeId, std::string metricId, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData)
{
	return v1MetricsExchangeListingGetHelper(accessToken,
	exchangeId, metricId, 
	handler, userData, false);
}

static bool v1MetricsListingGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.Metric>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.Metric>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.Metric> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.Metric singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1MetricsListingGetHelper(char * accessToken,
	
	void(* handler)(std::list<V1.Metric>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/metrics/listing");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1MetricsListingGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1MetricsListingGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV1ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV1Manager::v1MetricsListingGetAsync(char * accessToken,
	
	void(* handler)(std::list<V1.Metric>, Error, void* )
	, void* userData)
{
	return v1MetricsListingGetHelper(accessToken,
	
	handler, userData, true);
}

bool MetricsV1Manager::v1MetricsListingGetSync(char * accessToken,
	
	void(* handler)(std::list<V1.Metric>, Error, void* )
	, void* userData)
{
	return v1MetricsListingGetHelper(accessToken,
	
	handler, userData, false);
}

static bool v1MetricsSymbolCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.GeneralData>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.GeneralData> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.GeneralData singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1MetricsSymbolCurrentGetHelper(char * accessToken,
	std::string metricId, std::string symbolId, std::string exchangeId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&metricId, "std::string");
	queryParams.insert(pair<string, string>("metric_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("metric_id");
	}


	itemAtq = stringify(&symbolId, "std::string");
	queryParams.insert(pair<string, string>("symbol_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("symbol_id");
	}


	itemAtq = stringify(&exchangeId, "std::string");
	queryParams.insert(pair<string, string>("exchange_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("exchange_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/metrics/symbol/current");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1MetricsSymbolCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1MetricsSymbolCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV1ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV1Manager::v1MetricsSymbolCurrentGetAsync(char * accessToken,
	std::string metricId, std::string symbolId, std::string exchangeId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData)
{
	return v1MetricsSymbolCurrentGetHelper(accessToken,
	metricId, symbolId, exchangeId, 
	handler, userData, true);
}

bool MetricsV1Manager::v1MetricsSymbolCurrentGetSync(char * accessToken,
	std::string metricId, std::string symbolId, std::string exchangeId, 
	void(* handler)(std::list<V1.GeneralData>, Error, void* )
	, void* userData)
{
	return v1MetricsSymbolCurrentGetHelper(accessToken,
	metricId, symbolId, exchangeId, 
	handler, userData, false);
}

static bool v1MetricsSymbolHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.MetricData>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.MetricData> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.MetricData singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1MetricsSymbolHistoryGetHelper(char * accessToken,
	std::string metricId, std::string symbolId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&metricId, "std::string");
	queryParams.insert(pair<string, string>("metric_id", itemAtq));


	itemAtq = stringify(&symbolId, "std::string");
	queryParams.insert(pair<string, string>("symbol_id", itemAtq));


	itemAtq = stringify(&timeStart, "std::string");
	queryParams.insert(pair<string, string>("time_start", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_start");
	}


	itemAtq = stringify(&timeEnd, "std::string");
	queryParams.insert(pair<string, string>("time_end", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_end");
	}


	itemAtq = stringify(&timeFormat, "std::string");
	queryParams.insert(pair<string, string>("time_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_format");
	}


	itemAtq = stringify(&periodId, "std::string");
	queryParams.insert(pair<string, string>("period_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("period_id");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/metrics/symbol/history");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1MetricsSymbolHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1MetricsSymbolHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV1ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV1Manager::v1MetricsSymbolHistoryGetAsync(char * accessToken,
	std::string metricId, std::string symbolId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData)
{
	return v1MetricsSymbolHistoryGetHelper(accessToken,
	metricId, symbolId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, true);
}

bool MetricsV1Manager::v1MetricsSymbolHistoryGetSync(char * accessToken,
	std::string metricId, std::string symbolId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<V1.MetricData>, Error, void* )
	, void* userData)
{
	return v1MetricsSymbolHistoryGetHelper(accessToken,
	metricId, symbolId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, false);
}

static bool v1MetricsSymbolListingGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.ListingItem>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.ListingItem> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.ListingItem singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1MetricsSymbolListingGetHelper(char * accessToken,
	std::string metricId, std::string exchangeId, std::string symbolId, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&metricId, "std::string");
	queryParams.insert(pair<string, string>("metric_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("metric_id");
	}


	itemAtq = stringify(&exchangeId, "std::string");
	queryParams.insert(pair<string, string>("exchange_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("exchange_id");
	}


	itemAtq = stringify(&symbolId, "std::string");
	queryParams.insert(pair<string, string>("symbol_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("symbol_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/metrics/symbol/listing");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1MetricsSymbolListingGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (MetricsV1Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1MetricsSymbolListingGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV1ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV1Manager::v1MetricsSymbolListingGetAsync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string symbolId, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData)
{
	return v1MetricsSymbolListingGetHelper(accessToken,
	metricId, exchangeId, symbolId, 
	handler, userData, true);
}

bool MetricsV1Manager::v1MetricsSymbolListingGetSync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string symbolId, 
	void(* handler)(std::list<V1.ListingItem>, Error, void* )
	, void* userData)
{
	return v1MetricsSymbolListingGetHelper(accessToken,
	metricId, exchangeId, symbolId, 
	handler, userData, false);
}

