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


static bool v1OhlcvExchangeExchangeIdHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<OHLCV.ExchangeTimeseriesItem>, Error, void* )
	= reinterpret_cast<void(*)(std::list<OHLCV.ExchangeTimeseriesItem>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<OHLCV.ExchangeTimeseriesItem> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			OHLCV.ExchangeTimeseriesItem singlemodel;
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

static bool v1OhlcvExchangeExchangeIdHistoryGetHelper(char * accessToken,
	std::string exchangeId, std::string periodId, std::string timeStart, std::string timeEnd, 
	void(* handler)(std::list<OHLCV.ExchangeTimeseriesItem>, Error, void* )
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

	string url("/v1/ohlcv/exchange/{exchange_id}/history");
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
		bool retval = v1OhlcvExchangeExchangeIdHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OhlcvExchangeExchangeIdHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OhlcvManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OhlcvManager::v1OhlcvExchangeExchangeIdHistoryGetAsync(char * accessToken,
	std::string exchangeId, std::string periodId, std::string timeStart, std::string timeEnd, 
	void(* handler)(std::list<OHLCV.ExchangeTimeseriesItem>, Error, void* )
	, void* userData)
{
	return v1OhlcvExchangeExchangeIdHistoryGetHelper(accessToken,
	exchangeId, periodId, timeStart, timeEnd, 
	handler, userData, true);
}

bool OhlcvManager::v1OhlcvExchangeExchangeIdHistoryGetSync(char * accessToken,
	std::string exchangeId, std::string periodId, std::string timeStart, std::string timeEnd, 
	void(* handler)(std::list<OHLCV.ExchangeTimeseriesItem>, Error, void* )
	, void* userData)
{
	return v1OhlcvExchangeExchangeIdHistoryGetHelper(accessToken,
	exchangeId, periodId, timeStart, timeEnd, 
	handler, userData, false);
}

static bool v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<OHLCV.TimeseriesItem>, Error, void* )
	= reinterpret_cast<void(*)(std::list<OHLCV.TimeseriesItem>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<OHLCV.TimeseriesItem> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			OHLCV.TimeseriesItem singlemodel;
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

static bool v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetHelper(char * accessToken,
	std::string exchangeId, std::string symbolId, std::string periodId, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<OHLCV.TimeseriesItem>, Error, void* )
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

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history");
	int pos;

	string s_exchangeId("{");
	s_exchangeId.append("exchange_id");
	s_exchangeId.append("}");
	pos = url.find(s_exchangeId);
	url.erase(pos, s_exchangeId.length());
	url.insert(pos, stringify(&exchangeId, "std::string"));
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
		bool retval = v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OhlcvManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OhlcvManager::v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetAsync(char * accessToken,
	std::string exchangeId, std::string symbolId, std::string periodId, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<OHLCV.TimeseriesItem>, Error, void* )
	, void* userData)
{
	return v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetHelper(accessToken,
	exchangeId, symbolId, periodId, timeStart, timeEnd, limit, 
	handler, userData, true);
}

bool OhlcvManager::v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetSync(char * accessToken,
	std::string exchangeId, std::string symbolId, std::string periodId, std::string timeStart, std::string timeEnd, int limit, 
	void(* handler)(std::list<OHLCV.TimeseriesItem>, Error, void* )
	, void* userData)
{
	return v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetHelper(accessToken,
	exchangeId, symbolId, periodId, timeStart, timeEnd, limit, 
	handler, userData, false);
}

static bool v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<OHLCV.TimeseriesItem>, Error, void* )
	= reinterpret_cast<void(*)(std::list<OHLCV.TimeseriesItem>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<OHLCV.TimeseriesItem> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			OHLCV.TimeseriesItem singlemodel;
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

static bool v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetHelper(char * accessToken,
	std::string exchangeId, std::string symbolId, std::string periodId, int limit, 
	void(* handler)(std::list<OHLCV.TimeseriesItem>, Error, void* )
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

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest");
	int pos;

	string s_exchangeId("{");
	s_exchangeId.append("exchange_id");
	s_exchangeId.append("}");
	pos = url.find(s_exchangeId);
	url.erase(pos, s_exchangeId.length());
	url.insert(pos, stringify(&exchangeId, "std::string"));
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
		bool retval = v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OhlcvManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OhlcvManager::v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetAsync(char * accessToken,
	std::string exchangeId, std::string symbolId, std::string periodId, int limit, 
	void(* handler)(std::list<OHLCV.TimeseriesItem>, Error, void* )
	, void* userData)
{
	return v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetHelper(accessToken,
	exchangeId, symbolId, periodId, limit, 
	handler, userData, true);
}

bool OhlcvManager::v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetSync(char * accessToken,
	std::string exchangeId, std::string symbolId, std::string periodId, int limit, 
	void(* handler)(std::list<OHLCV.TimeseriesItem>, Error, void* )
	, void* userData)
{
	return v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetHelper(accessToken,
	exchangeId, symbolId, periodId, limit, 
	handler, userData, false);
}

static bool v1OhlcvPeriodsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<OHLCV.TimeseriesPeriod>, Error, void* )
	= reinterpret_cast<void(*)(std::list<OHLCV.TimeseriesPeriod>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<OHLCV.TimeseriesPeriod> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			OHLCV.TimeseriesPeriod singlemodel;
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
	
	void(* handler)(std::list<OHLCV.TimeseriesPeriod>, Error, void* )
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
	
	void(* handler)(std::list<OHLCV.TimeseriesPeriod>, Error, void* )
	, void* userData)
{
	return v1OhlcvPeriodsGetHelper(accessToken,
	
	handler, userData, true);
}

bool OhlcvManager::v1OhlcvPeriodsGetSync(char * accessToken,
	
	void(* handler)(std::list<OHLCV.TimeseriesPeriod>, Error, void* )
	, void* userData)
{
	return v1OhlcvPeriodsGetHelper(accessToken,
	
	handler, userData, false);
}

