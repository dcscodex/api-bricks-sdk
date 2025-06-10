#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "OrderBookManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


OrderBookManager::OrderBookManager()
{

}

OrderBookManager::~OrderBookManager()
{

}

static gboolean __OrderBookManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __OrderBookManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__OrderBookManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v1OrderbooksSymbolIdCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(V1.OrderBookBase, Error, void* )
	= reinterpret_cast<void(*)(V1.OrderBookBase, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	V1.OrderBookBase out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("V1.OrderBookBase")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "V1.OrderBookBase", "V1.OrderBookBase");
			json_node_free(pJson);

			if ("V1.OrderBookBase" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

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

static bool v1OrderbooksSymbolIdCurrentGetHelper(char * accessToken,
	std::string symbolId, int limitLevels, 
	void(* handler)(V1.OrderBookBase, Error, void* )
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
	

	itemAtq = stringify(&limitLevels, "int");
	queryParams.insert(pair<string, string>("limit_levels", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit_levels");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/orderbooks/{symbol_id}/current");
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
		NetClient::easycurl(OrderBookManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OrderbooksSymbolIdCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OrderBookManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OrderbooksSymbolIdCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrderBookManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrderBookManager::v1OrderbooksSymbolIdCurrentGetAsync(char * accessToken,
	std::string symbolId, int limitLevels, 
	void(* handler)(V1.OrderBookBase, Error, void* )
	, void* userData)
{
	return v1OrderbooksSymbolIdCurrentGetHelper(accessToken,
	symbolId, limitLevels, 
	handler, userData, true);
}

bool OrderBookManager::v1OrderbooksSymbolIdCurrentGetSync(char * accessToken,
	std::string symbolId, int limitLevels, 
	void(* handler)(V1.OrderBookBase, Error, void* )
	, void* userData)
{
	return v1OrderbooksSymbolIdCurrentGetHelper(accessToken,
	symbolId, limitLevels, 
	handler, userData, false);
}

static bool v1OrderbooksSymbolIdDepthCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(V1.OrderBookDepth, Error, void* )
	= reinterpret_cast<void(*)(V1.OrderBookDepth, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	V1.OrderBookDepth out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("V1.OrderBookDepth")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "V1.OrderBookDepth", "V1.OrderBookDepth");
			json_node_free(pJson);

			if ("V1.OrderBookDepth" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

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

static bool v1OrderbooksSymbolIdDepthCurrentGetHelper(char * accessToken,
	std::string symbolId, int limitLevels, 
	void(* handler)(V1.OrderBookDepth, Error, void* )
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
	

	itemAtq = stringify(&limitLevels, "int");
	queryParams.insert(pair<string, string>("limit_levels", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit_levels");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/orderbooks/{symbol_id}/depth/current");
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
		NetClient::easycurl(OrderBookManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OrderbooksSymbolIdDepthCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OrderBookManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OrderbooksSymbolIdDepthCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrderBookManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrderBookManager::v1OrderbooksSymbolIdDepthCurrentGetAsync(char * accessToken,
	std::string symbolId, int limitLevels, 
	void(* handler)(V1.OrderBookDepth, Error, void* )
	, void* userData)
{
	return v1OrderbooksSymbolIdDepthCurrentGetHelper(accessToken,
	symbolId, limitLevels, 
	handler, userData, true);
}

bool OrderBookManager::v1OrderbooksSymbolIdDepthCurrentGetSync(char * accessToken,
	std::string symbolId, int limitLevels, 
	void(* handler)(V1.OrderBookDepth, Error, void* )
	, void* userData)
{
	return v1OrderbooksSymbolIdDepthCurrentGetHelper(accessToken,
	symbolId, limitLevels, 
	handler, userData, false);
}

static bool v1OrderbooksSymbolIdHistoryGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.OrderBook>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.OrderBook>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.OrderBook> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.OrderBook singlemodel;
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

static bool v1OrderbooksSymbolIdHistoryGetHelper(char * accessToken,
	std::string symbolId, std::string date, std::string timeStart, std::string timeEnd, int limit, int limitLevels, 
	void(* handler)(std::list<V1.OrderBook>, Error, void* )
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


	itemAtq = stringify(&limitLevels, "int");
	queryParams.insert(pair<string, string>("limit_levels", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit_levels");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/orderbooks/{symbol_id}/history");
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
		NetClient::easycurl(OrderBookManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OrderbooksSymbolIdHistoryGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OrderBookManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OrderbooksSymbolIdHistoryGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrderBookManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrderBookManager::v1OrderbooksSymbolIdHistoryGetAsync(char * accessToken,
	std::string symbolId, std::string date, std::string timeStart, std::string timeEnd, int limit, int limitLevels, 
	void(* handler)(std::list<V1.OrderBook>, Error, void* )
	, void* userData)
{
	return v1OrderbooksSymbolIdHistoryGetHelper(accessToken,
	symbolId, date, timeStart, timeEnd, limit, limitLevels, 
	handler, userData, true);
}

bool OrderBookManager::v1OrderbooksSymbolIdHistoryGetSync(char * accessToken,
	std::string symbolId, std::string date, std::string timeStart, std::string timeEnd, int limit, int limitLevels, 
	void(* handler)(std::list<V1.OrderBook>, Error, void* )
	, void* userData)
{
	return v1OrderbooksSymbolIdHistoryGetHelper(accessToken,
	symbolId, date, timeStart, timeEnd, limit, limitLevels, 
	handler, userData, false);
}

static bool v1OrderbooksSymbolIdLatestGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.OrderBook>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.OrderBook>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.OrderBook> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.OrderBook singlemodel;
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

static bool v1OrderbooksSymbolIdLatestGetHelper(char * accessToken,
	std::string symbolId, int limit, int limitLevels, 
	void(* handler)(std::list<V1.OrderBook>, Error, void* )
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


	itemAtq = stringify(&limitLevels, "int");
	queryParams.insert(pair<string, string>("limit_levels", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit_levels");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/orderbooks/{symbol_id}/latest");
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
		NetClient::easycurl(OrderBookManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OrderbooksSymbolIdLatestGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OrderBookManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OrderbooksSymbolIdLatestGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrderBookManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrderBookManager::v1OrderbooksSymbolIdLatestGetAsync(char * accessToken,
	std::string symbolId, int limit, int limitLevels, 
	void(* handler)(std::list<V1.OrderBook>, Error, void* )
	, void* userData)
{
	return v1OrderbooksSymbolIdLatestGetHelper(accessToken,
	symbolId, limit, limitLevels, 
	handler, userData, true);
}

bool OrderBookManager::v1OrderbooksSymbolIdLatestGetSync(char * accessToken,
	std::string symbolId, int limit, int limitLevels, 
	void(* handler)(std::list<V1.OrderBook>, Error, void* )
	, void* userData)
{
	return v1OrderbooksSymbolIdLatestGetHelper(accessToken,
	symbolId, limit, limitLevels, 
	handler, userData, false);
}

