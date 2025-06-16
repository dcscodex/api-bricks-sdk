#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "ExternalMetricsManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


ExternalMetricsManager::ExternalMetricsManager()
{

}

ExternalMetricsManager::~ExternalMetricsManager()
{

}

static gboolean __ExternalMetricsManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __ExternalMetricsManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__ExternalMetricsManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v1ExternalmetricsAssetHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<std::string>, Error, void* )
	= reinterpret_cast<void(*)(std::list<std::string>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<std::string> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			std::string singlemodel;
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

static bool v1ExternalmetricsAssetHistoryGetHelper(char * accessToken,
	std::string metricId, std::string assetId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
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

	string url("/v1/externalmetrics/asset/history");
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
		NetClient::easycurl(ExternalMetricsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ExternalmetricsAssetHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ExternalMetricsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ExternalmetricsAssetHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ExternalMetricsManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ExternalMetricsManager::v1ExternalmetricsAssetHistoryGetAsync(char * accessToken,
	std::string metricId, std::string assetId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData)
{
	return v1ExternalmetricsAssetHistoryGetHelper(accessToken,
	metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, true);
}

bool ExternalMetricsManager::v1ExternalmetricsAssetHistoryGetSync(char * accessToken,
	std::string metricId, std::string assetId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData)
{
	return v1ExternalmetricsAssetHistoryGetHelper(accessToken,
	metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, false);
}

static bool v1ExternalmetricsAssetListingGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.MetricInfo>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.MetricInfo> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.MetricInfo singlemodel;
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

static bool v1ExternalmetricsAssetListingGetHelper(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
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
	

	itemAtq = stringify(&assetId, "std::string");
	queryParams.insert(pair<string, string>("asset_id", itemAtq));

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/externalmetrics/asset/listing");
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
		NetClient::easycurl(ExternalMetricsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ExternalmetricsAssetListingGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ExternalMetricsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ExternalmetricsAssetListingGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ExternalMetricsManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ExternalMetricsManager::v1ExternalmetricsAssetListingGetAsync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v1ExternalmetricsAssetListingGetHelper(accessToken,
	assetId, 
	handler, userData, true);
}

bool ExternalMetricsManager::v1ExternalmetricsAssetListingGetSync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v1ExternalmetricsAssetListingGetHelper(accessToken,
	assetId, 
	handler, userData, false);
}

static bool v1ExternalmetricsChainHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<std::string>, Error, void* )
	= reinterpret_cast<void(*)(std::list<std::string>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<std::string> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			std::string singlemodel;
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

static bool v1ExternalmetricsChainHistoryGetHelper(char * accessToken,
	std::string metricId, std::string chainId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
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


	itemAtq = stringify(&chainId, "std::string");
	queryParams.insert(pair<string, string>("chain_id", itemAtq));


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

	string url("/v1/externalmetrics/chain/history");
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
		NetClient::easycurl(ExternalMetricsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ExternalmetricsChainHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ExternalMetricsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ExternalmetricsChainHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ExternalMetricsManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ExternalMetricsManager::v1ExternalmetricsChainHistoryGetAsync(char * accessToken,
	std::string metricId, std::string chainId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData)
{
	return v1ExternalmetricsChainHistoryGetHelper(accessToken,
	metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, true);
}

bool ExternalMetricsManager::v1ExternalmetricsChainHistoryGetSync(char * accessToken,
	std::string metricId, std::string chainId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData)
{
	return v1ExternalmetricsChainHistoryGetHelper(accessToken,
	metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, false);
}

static bool v1ExternalmetricsChainListingGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.MetricInfo>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.MetricInfo> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.MetricInfo singlemodel;
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

static bool v1ExternalmetricsChainListingGetHelper(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
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
	

	itemAtq = stringify(&chainId, "std::string");
	queryParams.insert(pair<string, string>("chain_id", itemAtq));

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/externalmetrics/chain/listing");
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
		NetClient::easycurl(ExternalMetricsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ExternalmetricsChainListingGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ExternalMetricsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ExternalmetricsChainListingGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ExternalMetricsManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ExternalMetricsManager::v1ExternalmetricsChainListingGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v1ExternalmetricsChainListingGetHelper(accessToken,
	chainId, 
	handler, userData, true);
}

bool ExternalMetricsManager::v1ExternalmetricsChainListingGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v1ExternalmetricsChainListingGetHelper(accessToken,
	chainId, 
	handler, userData, false);
}

static bool v1ExternalmetricsExchangeHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<std::string>, Error, void* )
	= reinterpret_cast<void(*)(std::list<std::string>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<std::string> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			std::string singlemodel;
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

static bool v1ExternalmetricsExchangeHistoryGetHelper(char * accessToken,
	std::string metricId, std::string exchangeId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
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

	string url("/v1/externalmetrics/exchange/history");
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
		NetClient::easycurl(ExternalMetricsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ExternalmetricsExchangeHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ExternalMetricsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ExternalmetricsExchangeHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ExternalMetricsManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ExternalMetricsManager::v1ExternalmetricsExchangeHistoryGetAsync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData)
{
	return v1ExternalmetricsExchangeHistoryGetHelper(accessToken,
	metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, true);
}

bool ExternalMetricsManager::v1ExternalmetricsExchangeHistoryGetSync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData)
{
	return v1ExternalmetricsExchangeHistoryGetHelper(accessToken,
	metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, false);
}

static bool v1ExternalmetricsExchangeListingGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.MetricInfo>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.MetricInfo> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.MetricInfo singlemodel;
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

static bool v1ExternalmetricsExchangeListingGetHelper(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
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
	

	itemAtq = stringify(&exchangeId, "std::string");
	queryParams.insert(pair<string, string>("exchange_id", itemAtq));

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/externalmetrics/exchange/listing");
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
		NetClient::easycurl(ExternalMetricsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ExternalmetricsExchangeListingGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ExternalMetricsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ExternalmetricsExchangeListingGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ExternalMetricsManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ExternalMetricsManager::v1ExternalmetricsExchangeListingGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v1ExternalmetricsExchangeListingGetHelper(accessToken,
	exchangeId, 
	handler, userData, true);
}

bool ExternalMetricsManager::v1ExternalmetricsExchangeListingGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v1ExternalmetricsExchangeListingGetHelper(accessToken,
	exchangeId, 
	handler, userData, false);
}

static bool v1ExternalmetricsListingGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.MetricInfo>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.MetricInfo> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.MetricInfo singlemodel;
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

static bool v1ExternalmetricsListingGetHelper(char * accessToken,
	
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
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

	string url("/v1/externalmetrics/listing");
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
		NetClient::easycurl(ExternalMetricsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ExternalmetricsListingGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ExternalMetricsManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ExternalmetricsListingGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ExternalMetricsManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ExternalMetricsManager::v1ExternalmetricsListingGetAsync(char * accessToken,
	
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v1ExternalmetricsListingGetHelper(accessToken,
	
	handler, userData, true);
}

bool ExternalMetricsManager::v1ExternalmetricsListingGetSync(char * accessToken,
	
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v1ExternalmetricsListingGetHelper(accessToken,
	
	handler, userData, false);
}

