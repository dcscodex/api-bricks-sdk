#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "MetricsV2Manager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


MetricsV2Manager::MetricsV2Manager()
{

}

MetricsV2Manager::~MetricsV2Manager()
{

}

static gboolean __MetricsV2ManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __MetricsV2ManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__MetricsV2ManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v2MetricsAssetHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool v2MetricsAssetHistoryGetHelper(char * accessToken,
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

	string url("/v2/metrics/asset/history");
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
		NetClient::easycurl(MetricsV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v2MetricsAssetHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetricsV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v2MetricsAssetHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV2Manager::v2MetricsAssetHistoryGetAsync(char * accessToken,
	std::string metricId, std::string assetId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData)
{
	return v2MetricsAssetHistoryGetHelper(accessToken,
	metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, true);
}

bool MetricsV2Manager::v2MetricsAssetHistoryGetSync(char * accessToken,
	std::string metricId, std::string assetId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData)
{
	return v2MetricsAssetHistoryGetHelper(accessToken,
	metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, false);
}

static bool v2MetricsAssetListingGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool v2MetricsAssetListingGetHelper(char * accessToken,
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

	string url("/v2/metrics/asset/listing");
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
		NetClient::easycurl(MetricsV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v2MetricsAssetListingGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetricsV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v2MetricsAssetListingGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV2Manager::v2MetricsAssetListingGetAsync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v2MetricsAssetListingGetHelper(accessToken,
	assetId, 
	handler, userData, true);
}

bool MetricsV2Manager::v2MetricsAssetListingGetSync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v2MetricsAssetListingGetHelper(accessToken,
	assetId, 
	handler, userData, false);
}

static bool v2MetricsChainHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool v2MetricsChainHistoryGetHelper(char * accessToken,
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

	string url("/v2/metrics/chain/history");
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
		NetClient::easycurl(MetricsV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v2MetricsChainHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetricsV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v2MetricsChainHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV2Manager::v2MetricsChainHistoryGetAsync(char * accessToken,
	std::string metricId, std::string chainId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData)
{
	return v2MetricsChainHistoryGetHelper(accessToken,
	metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, true);
}

bool MetricsV2Manager::v2MetricsChainHistoryGetSync(char * accessToken,
	std::string metricId, std::string chainId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData)
{
	return v2MetricsChainHistoryGetHelper(accessToken,
	metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, false);
}

static bool v2MetricsChainListingGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool v2MetricsChainListingGetHelper(char * accessToken,
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

	string url("/v2/metrics/chain/listing");
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
		NetClient::easycurl(MetricsV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v2MetricsChainListingGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetricsV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v2MetricsChainListingGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV2Manager::v2MetricsChainListingGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v2MetricsChainListingGetHelper(accessToken,
	chainId, 
	handler, userData, true);
}

bool MetricsV2Manager::v2MetricsChainListingGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v2MetricsChainListingGetHelper(accessToken,
	chainId, 
	handler, userData, false);
}

static bool v2MetricsExchangeHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool v2MetricsExchangeHistoryGetHelper(char * accessToken,
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

	string url("/v2/metrics/exchange/history");
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
		NetClient::easycurl(MetricsV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v2MetricsExchangeHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetricsV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v2MetricsExchangeHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV2Manager::v2MetricsExchangeHistoryGetAsync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData)
{
	return v2MetricsExchangeHistoryGetHelper(accessToken,
	metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, true);
}

bool MetricsV2Manager::v2MetricsExchangeHistoryGetSync(char * accessToken,
	std::string metricId, std::string exchangeId, std::string timeStart, std::string timeEnd, std::string timeFormat, std::string periodId, int limit, 
	void(* handler)(std::list<std::string>, Error, void* )
	, void* userData)
{
	return v2MetricsExchangeHistoryGetHelper(accessToken,
	metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit, 
	handler, userData, false);
}

static bool v2MetricsExchangeListingGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool v2MetricsExchangeListingGetHelper(char * accessToken,
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

	string url("/v2/metrics/exchange/listing");
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
		NetClient::easycurl(MetricsV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v2MetricsExchangeListingGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetricsV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v2MetricsExchangeListingGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV2Manager::v2MetricsExchangeListingGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v2MetricsExchangeListingGetHelper(accessToken,
	exchangeId, 
	handler, userData, true);
}

bool MetricsV2Manager::v2MetricsExchangeListingGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v2MetricsExchangeListingGetHelper(accessToken,
	exchangeId, 
	handler, userData, false);
}

static bool v2MetricsListingGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool v2MetricsListingGetHelper(char * accessToken,
	
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

	string url("/v2/metrics/listing");
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
		NetClient::easycurl(MetricsV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v2MetricsListingGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetricsV2Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v2MetricsListingGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetricsV2ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetricsV2Manager::v2MetricsListingGetAsync(char * accessToken,
	
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v2MetricsListingGetHelper(accessToken,
	
	handler, userData, true);
}

bool MetricsV2Manager::v2MetricsListingGetSync(char * accessToken,
	
	void(* handler)(std::list<V1.MetricInfo>, Error, void* )
	, void* userData)
{
	return v2MetricsListingGetHelper(accessToken,
	
	handler, userData, false);
}

