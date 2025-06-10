#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "TradesManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


TradesManager::TradesManager()
{

}

TradesManager::~TradesManager()
{

}

static gboolean __TradesManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __TradesManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__TradesManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v1TradesLatestGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.Trade>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.Trade>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.Trade> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.Trade singlemodel;
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

static bool v1TradesLatestGetHelper(char * accessToken,
	std::string filterSymbolId, bool includeId, int limit, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
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
	

	itemAtq = stringify(&filterSymbolId, "std::string");
	queryParams.insert(pair<string, string>("filter_symbol_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_symbol_id");
	}


	itemAtq = stringify(&includeId, "bool");
	queryParams.insert(pair<string, string>("include_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("include_id");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/trades/latest");
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
		NetClient::easycurl(TradesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1TradesLatestGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (TradesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1TradesLatestGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __TradesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool TradesManager::v1TradesLatestGetAsync(char * accessToken,
	std::string filterSymbolId, bool includeId, int limit, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
	, void* userData)
{
	return v1TradesLatestGetHelper(accessToken,
	filterSymbolId, includeId, limit, 
	handler, userData, true);
}

bool TradesManager::v1TradesLatestGetSync(char * accessToken,
	std::string filterSymbolId, bool includeId, int limit, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
	, void* userData)
{
	return v1TradesLatestGetHelper(accessToken,
	filterSymbolId, includeId, limit, 
	handler, userData, false);
}

static bool v1TradesSymbolIdHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.Trade>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.Trade>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.Trade> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.Trade singlemodel;
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

static bool v1TradesSymbolIdHistoryGetHelper(char * accessToken,
	std::string symbolId, std::string date, std::string timeStart, std::string timeEnd, int limit, bool includeId, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
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
	

	itemAtq = stringify(&date, "std::string");
	queryParams.insert(pair<string, string>("date", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("date");
	}


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


	itemAtq = stringify(&includeId, "bool");
	queryParams.insert(pair<string, string>("include_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("include_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/trades/{symbol_id}/history");
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
		NetClient::easycurl(TradesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1TradesSymbolIdHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (TradesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1TradesSymbolIdHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __TradesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool TradesManager::v1TradesSymbolIdHistoryGetAsync(char * accessToken,
	std::string symbolId, std::string date, std::string timeStart, std::string timeEnd, int limit, bool includeId, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
	, void* userData)
{
	return v1TradesSymbolIdHistoryGetHelper(accessToken,
	symbolId, date, timeStart, timeEnd, limit, includeId, 
	handler, userData, true);
}

bool TradesManager::v1TradesSymbolIdHistoryGetSync(char * accessToken,
	std::string symbolId, std::string date, std::string timeStart, std::string timeEnd, int limit, bool includeId, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
	, void* userData)
{
	return v1TradesSymbolIdHistoryGetHelper(accessToken,
	symbolId, date, timeStart, timeEnd, limit, includeId, 
	handler, userData, false);
}

static bool v1TradesSymbolIdLatestGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.Trade>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.Trade>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.Trade> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.Trade singlemodel;
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

static bool v1TradesSymbolIdLatestGetHelper(char * accessToken,
	std::string symbolId, int limit, bool includeId, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
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
	

	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&includeId, "bool");
	queryParams.insert(pair<string, string>("include_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("include_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/trades/{symbol_id}/latest");
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
		NetClient::easycurl(TradesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1TradesSymbolIdLatestGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (TradesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1TradesSymbolIdLatestGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __TradesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool TradesManager::v1TradesSymbolIdLatestGetAsync(char * accessToken,
	std::string symbolId, int limit, bool includeId, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
	, void* userData)
{
	return v1TradesSymbolIdLatestGetHelper(accessToken,
	symbolId, limit, includeId, 
	handler, userData, true);
}

bool TradesManager::v1TradesSymbolIdLatestGetSync(char * accessToken,
	std::string symbolId, int limit, bool includeId, 
	void(* handler)(std::list<V1.Trade>, Error, void* )
	, void* userData)
{
	return v1TradesSymbolIdLatestGetHelper(accessToken,
	symbolId, limit, includeId, 
	handler, userData, false);
}

