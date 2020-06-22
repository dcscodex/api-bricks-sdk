#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "OrdersManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


OrdersManager::OrdersManager()
{

}

OrdersManager::~OrdersManager()
{

}

static gboolean __OrdersManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __OrdersManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__OrdersManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v1OrdersCancelAllPostProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(MessagesOk, Error, void* )
	= reinterpret_cast<void(*)(MessagesOk, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	MessagesOk out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("MessagesOk")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "MessagesOk", "MessagesOk");
			json_node_free(pJson);

			if ("MessagesOk" == "std::string") {
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

static bool v1OrdersCancelAllPostHelper(char * accessToken,
	CancelAllOrder cancelAllOrder, 
	void(* handler)(MessagesOk, Error, void* )
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

	if (isprimitive("CancelAllOrder")) {
		node = converttoJson(&cancelAllOrder, "CancelAllOrder", "");
	}
	
	char *jsonStr =  cancelAllOrder.toJson();
	node = json_from_string(jsonStr, NULL);
	g_free(static_cast<gpointer>(jsonStr));
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/v1/orders/cancel/all");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("POST");

	if(strcmp("PUT", "POST") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OrdersCancelAllPostProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OrdersCancelAllPostProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrdersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrdersManager::v1OrdersCancelAllPostAsync(char * accessToken,
	CancelAllOrder cancelAllOrder, 
	void(* handler)(MessagesOk, Error, void* )
	, void* userData)
{
	return v1OrdersCancelAllPostHelper(accessToken,
	cancelAllOrder, 
	handler, userData, true);
}

bool OrdersManager::v1OrdersCancelAllPostSync(char * accessToken,
	CancelAllOrder cancelAllOrder, 
	void(* handler)(MessagesOk, Error, void* )
	, void* userData)
{
	return v1OrdersCancelAllPostHelper(accessToken,
	cancelAllOrder, 
	handler, userData, false);
}

static bool v1OrdersCancelPostProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(OrderLive, Error, void* )
	= reinterpret_cast<void(*)(OrderLive, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	OrderLive out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("OrderLive")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "OrderLive", "OrderLive");
			json_node_free(pJson);

			if ("OrderLive" == "std::string") {
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
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
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

static bool v1OrdersCancelPostHelper(char * accessToken,
	CancelOrder cancelOrder, 
	void(* handler)(OrderLive, Error, void* )
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

	if (isprimitive("CancelOrder")) {
		node = converttoJson(&cancelOrder, "CancelOrder", "");
	}
	
	char *jsonStr =  cancelOrder.toJson();
	node = json_from_string(jsonStr, NULL);
	g_free(static_cast<gpointer>(jsonStr));
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/v1/orders/cancel");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("POST");

	if(strcmp("PUT", "POST") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OrdersCancelPostProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OrdersCancelPostProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrdersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrdersManager::v1OrdersCancelPostAsync(char * accessToken,
	CancelOrder cancelOrder, 
	void(* handler)(OrderLive, Error, void* )
	, void* userData)
{
	return v1OrdersCancelPostHelper(accessToken,
	cancelOrder, 
	handler, userData, true);
}

bool OrdersManager::v1OrdersCancelPostSync(char * accessToken,
	CancelOrder cancelOrder, 
	void(* handler)(OrderLive, Error, void* )
	, void* userData)
{
	return v1OrdersCancelPostHelper(accessToken,
	cancelOrder, 
	handler, userData, false);
}

static bool v1OrdersGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Order>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Order>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Order> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Order singlemodel;
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

static bool v1OrdersGetHelper(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Order>, Error, void* )
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
	if( itemAtq.empty()==true){
		queryParams.erase("exchange_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/orders");
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
		NetClient::easycurl(OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OrdersGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OrdersGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrdersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrdersManager::v1OrdersGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Order>, Error, void* )
	, void* userData)
{
	return v1OrdersGetHelper(accessToken,
	exchangeId, 
	handler, userData, true);
}

bool OrdersManager::v1OrdersGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Order>, Error, void* )
	, void* userData)
{
	return v1OrdersGetHelper(accessToken,
	exchangeId, 
	handler, userData, false);
}

static bool v1OrdersPostProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(OrderLive, Error, void* )
	= reinterpret_cast<void(*)(OrderLive, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	OrderLive out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("OrderLive")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "OrderLive", "OrderLive");
			json_node_free(pJson);

			if ("OrderLive" == "std::string") {
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
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
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

static bool v1OrdersPostHelper(char * accessToken,
	NewOrder newOrder, 
	void(* handler)(OrderLive, Error, void* )
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

	if (isprimitive("NewOrder")) {
		node = converttoJson(&newOrder, "NewOrder", "");
	}
	
	char *jsonStr =  newOrder.toJson();
	node = json_from_string(jsonStr, NULL);
	g_free(static_cast<gpointer>(jsonStr));
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/v1/orders");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("POST");

	if(strcmp("PUT", "POST") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OrdersPostProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OrdersPostProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrdersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrdersManager::v1OrdersPostAsync(char * accessToken,
	NewOrder newOrder, 
	void(* handler)(OrderLive, Error, void* )
	, void* userData)
{
	return v1OrdersPostHelper(accessToken,
	newOrder, 
	handler, userData, true);
}

bool OrdersManager::v1OrdersPostSync(char * accessToken,
	NewOrder newOrder, 
	void(* handler)(OrderLive, Error, void* )
	, void* userData)
{
	return v1OrdersPostHelper(accessToken,
	newOrder, 
	handler, userData, false);
}

