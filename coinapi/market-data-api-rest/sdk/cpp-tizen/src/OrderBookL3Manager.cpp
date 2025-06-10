#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "OrderBookL3Manager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


OrderBookL3Manager::OrderBookL3Manager()
{

}

OrderBookL3Manager::~OrderBookL3Manager()
{

}

static gboolean __OrderBookL3ManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __OrderBookL3ManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__OrderBookL3ManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v1Orderbooks3CurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.OrderBookBase>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.OrderBookBase>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.OrderBookBase> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.OrderBookBase singlemodel;
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

static bool v1Orderbooks3CurrentGetHelper(char * accessToken,
	std::string filterSymbolId, int limitLevels, 
	void(* handler)(std::list<V1.OrderBookBase>, Error, void* )
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


	itemAtq = stringify(&limitLevels, "int");
	queryParams.insert(pair<string, string>("limit_levels", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit_levels");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/orderbooks3/current");
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
		NetClient::easycurl(OrderBookL3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1Orderbooks3CurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OrderBookL3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1Orderbooks3CurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrderBookL3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrderBookL3Manager::v1Orderbooks3CurrentGetAsync(char * accessToken,
	std::string filterSymbolId, int limitLevels, 
	void(* handler)(std::list<V1.OrderBookBase>, Error, void* )
	, void* userData)
{
	return v1Orderbooks3CurrentGetHelper(accessToken,
	filterSymbolId, limitLevels, 
	handler, userData, true);
}

bool OrderBookL3Manager::v1Orderbooks3CurrentGetSync(char * accessToken,
	std::string filterSymbolId, int limitLevels, 
	void(* handler)(std::list<V1.OrderBookBase>, Error, void* )
	, void* userData)
{
	return v1Orderbooks3CurrentGetHelper(accessToken,
	filterSymbolId, limitLevels, 
	handler, userData, false);
}

static bool v1Orderbooks3SymbolIdCurrentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool v1Orderbooks3SymbolIdCurrentGetHelper(char * accessToken,
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

	string url("/v1/orderbooks3/{symbol_id}/current");
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
		NetClient::easycurl(OrderBookL3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1Orderbooks3SymbolIdCurrentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OrderBookL3Manager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1Orderbooks3SymbolIdCurrentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrderBookL3ManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrderBookL3Manager::v1Orderbooks3SymbolIdCurrentGetAsync(char * accessToken,
	std::string symbolId, int limitLevels, 
	void(* handler)(V1.OrderBookBase, Error, void* )
	, void* userData)
{
	return v1Orderbooks3SymbolIdCurrentGetHelper(accessToken,
	symbolId, limitLevels, 
	handler, userData, true);
}

bool OrderBookL3Manager::v1Orderbooks3SymbolIdCurrentGetSync(char * accessToken,
	std::string symbolId, int limitLevels, 
	void(* handler)(V1.OrderBookBase, Error, void* )
	, void* userData)
{
	return v1Orderbooks3SymbolIdCurrentGetHelper(accessToken,
	symbolId, limitLevels, 
	handler, userData, false);
}

