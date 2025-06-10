#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "OhlcvManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


OhlcvManager::OhlcvManager()
{

}

OhlcvManager::~OhlcvManager()
{

}

static gboolean __OhlcvManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __OhlcvManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__OhlcvManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v1OhlcvExchangesExchangeIdHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Models.ExchangeTimeseriesItem>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Models.ExchangeTimeseriesItem>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Models.ExchangeTimeseriesItem> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Models.ExchangeTimeseriesItem singlemodel;
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

static bool v1OhlcvExchangesExchangeIdHistoryGetHelper(char * accessToken,
	std::string exchangeId, std::string periodId, std::string timeStart, std::string timeEnd, 
	void(* handler)(std::list<Models.ExchangeTimeseriesItem>, Error, void* )
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
	

	itemAtq = stringify(&periodId, "std::string");
	queryParams.insert(pair<string, string>("period_id", itemAtq));


	itemAtq = stringify(&timeStart, "std::string");
	queryParams.insert(pair<string, string>("time_start", itemAtq));


	itemAtq = stringify(&timeEnd, "std::string");
	queryParams.insert(pair<string, string>("time_end", itemAtq));

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/ohlcv/exchanges/{exchange_id}/history");
	int pos;

	string s_exchangeId("{");
	s_exchangeId.append("exchange_id");
	s_exchangeId.append("}");
	pos = url.find(s_exchangeId);
	url.erase(pos, s_exchangeId.length());
	url.insert(pos, stringify(&exchangeId, "std::string"));

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
		NetClient::easycurl(OhlcvManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OhlcvExchangesExchangeIdHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OhlcvManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OhlcvExchangesExchangeIdHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OhlcvManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OhlcvManager::v1OhlcvExchangesExchangeIdHistoryGetAsync(char * accessToken,
	std::string exchangeId, std::string periodId, std::string timeStart, std::string timeEnd, 
	void(* handler)(std::list<Models.ExchangeTimeseriesItem>, Error, void* )
	, void* userData)
{
	return v1OhlcvExchangesExchangeIdHistoryGetHelper(accessToken,
	exchangeId, periodId, timeStart, timeEnd, 
	handler, userData, true);
}

bool OhlcvManager::v1OhlcvExchangesExchangeIdHistoryGetSync(char * accessToken,
	std::string exchangeId, std::string periodId, std::string timeStart, std::string timeEnd, 
	void(* handler)(std::list<Models.ExchangeTimeseriesItem>, Error, void* )
	, void* userData)
{
	return v1OhlcvExchangesExchangeIdHistoryGetHelper(accessToken,
	exchangeId, periodId, timeStart, timeEnd, 
	handler, userData, false);
}

static bool v1OhlcvPeriodsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.TimeseriesPeriod>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.TimeseriesPeriod>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.TimeseriesPeriod> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.TimeseriesPeriod singlemodel;
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

static bool v1OhlcvPeriodsGetHelper(char * accessToken,
	
	void(* handler)(std::list<V1.TimeseriesPeriod>, Error, void* )
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

	string url("/v1/ohlcv/periods");
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
		NetClient::easycurl(OhlcvManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OhlcvPeriodsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OhlcvManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OhlcvPeriodsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OhlcvManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OhlcvManager::v1OhlcvPeriodsGetAsync(char * accessToken,
	
	void(* handler)(std::list<V1.TimeseriesPeriod>, Error, void* )
	, void* userData)
{
	return v1OhlcvPeriodsGetHelper(accessToken,
	
	handler, userData, true);
}

bool OhlcvManager::v1OhlcvPeriodsGetSync(char * accessToken,
	
	void(* handler)(std::list<V1.TimeseriesPeriod>, Error, void* )
	, void* userData)
{
	return v1OhlcvPeriodsGetHelper(accessToken,
	
	handler, userData, false);
}

static bool v1OhlcvSymbolIdHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.TimeseriesItem>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.TimeseriesItem>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.TimeseriesItem> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.TimeseriesItem singlemodel;
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

static bool v1OhlcvSymbolIdHistoryGetHelper(char * accessToken,
	std::string symbolId, std::string periodId, std::string timeStart, std::string timeEnd, int limit, bool includeEmptyItems, 
	void(* handler)(std::list<V1.TimeseriesItem>, Error, void* )
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
	

	itemAtq = stringify(&periodId, "std::string");
	queryParams.insert(pair<string, string>("period_id", itemAtq));


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


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&includeEmptyItems, "bool");
	queryParams.insert(pair<string, string>("include_empty_items", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("include_empty_items");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/ohlcv/{symbol_id}/history");
	int pos;

	string s_symbolId("{");
	s_symbolId.append("symbol_id");
	s_symbolId.append("}");
	pos = url.find(s_symbolId);
	url.erase(pos, s_symbolId.length());
	url.insert(pos, stringify(&symbolId, "std::string"));

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
		NetClient::easycurl(OhlcvManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OhlcvSymbolIdHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OhlcvManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OhlcvSymbolIdHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OhlcvManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OhlcvManager::v1OhlcvSymbolIdHistoryGetAsync(char * accessToken,
	std::string symbolId, std::string periodId, std::string timeStart, std::string timeEnd, int limit, bool includeEmptyItems, 
	void(* handler)(std::list<V1.TimeseriesItem>, Error, void* )
	, void* userData)
{
	return v1OhlcvSymbolIdHistoryGetHelper(accessToken,
	symbolId, periodId, timeStart, timeEnd, limit, includeEmptyItems, 
	handler, userData, true);
}

bool OhlcvManager::v1OhlcvSymbolIdHistoryGetSync(char * accessToken,
	std::string symbolId, std::string periodId, std::string timeStart, std::string timeEnd, int limit, bool includeEmptyItems, 
	void(* handler)(std::list<V1.TimeseriesItem>, Error, void* )
	, void* userData)
{
	return v1OhlcvSymbolIdHistoryGetHelper(accessToken,
	symbolId, periodId, timeStart, timeEnd, limit, includeEmptyItems, 
	handler, userData, false);
}

static bool v1OhlcvSymbolIdLatestGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.TimeseriesItem>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.TimeseriesItem>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.TimeseriesItem> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.TimeseriesItem singlemodel;
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

static bool v1OhlcvSymbolIdLatestGetHelper(char * accessToken,
	std::string symbolId, std::string periodId, int limit, bool includeEmptyItems, 
	void(* handler)(std::list<V1.TimeseriesItem>, Error, void* )
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
	

	itemAtq = stringify(&periodId, "std::string");
	queryParams.insert(pair<string, string>("period_id", itemAtq));


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&includeEmptyItems, "bool");
	queryParams.insert(pair<string, string>("include_empty_items", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("include_empty_items");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/ohlcv/{symbol_id}/latest");
	int pos;

	string s_symbolId("{");
	s_symbolId.append("symbol_id");
	s_symbolId.append("}");
	pos = url.find(s_symbolId);
	url.erase(pos, s_symbolId.length());
	url.insert(pos, stringify(&symbolId, "std::string"));

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
		NetClient::easycurl(OhlcvManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OhlcvSymbolIdLatestGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OhlcvManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OhlcvSymbolIdLatestGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OhlcvManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OhlcvManager::v1OhlcvSymbolIdLatestGetAsync(char * accessToken,
	std::string symbolId, std::string periodId, int limit, bool includeEmptyItems, 
	void(* handler)(std::list<V1.TimeseriesItem>, Error, void* )
	, void* userData)
{
	return v1OhlcvSymbolIdLatestGetHelper(accessToken,
	symbolId, periodId, limit, includeEmptyItems, 
	handler, userData, true);
}

bool OhlcvManager::v1OhlcvSymbolIdLatestGetSync(char * accessToken,
	std::string symbolId, std::string periodId, int limit, bool includeEmptyItems, 
	void(* handler)(std::list<V1.TimeseriesItem>, Error, void* )
	, void* userData)
{
	return v1OhlcvSymbolIdLatestGetHelper(accessToken,
	symbolId, periodId, limit, includeEmptyItems, 
	handler, userData, false);
}

