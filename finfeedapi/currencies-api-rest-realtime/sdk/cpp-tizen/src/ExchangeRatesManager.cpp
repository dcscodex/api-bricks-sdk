#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "ExchangeRatesManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


ExchangeRatesManager::ExchangeRatesManager()
{

}

ExchangeRatesManager::~ExchangeRatesManager()
{

}

static gboolean __ExchangeRatesManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __ExchangeRatesManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__ExchangeRatesManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool get specific rateProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(V1.ExchangeRate, Error, void* )
	= reinterpret_cast<void(*)(V1.ExchangeRate, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	V1.ExchangeRate out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("V1.ExchangeRate")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "V1.ExchangeRate", "V1.ExchangeRate");
			json_node_free(pJson);

			if ("V1.ExchangeRate" == "std::string") {
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

static bool get specific rateHelper(char * accessToken,
	std::string assetIdBase, std::string assetIdQuote, 
	void(* handler)(V1.ExchangeRate, Error, void* )
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

	string url("/v1/exchangerate/{asset_id_base}/{asset_id_quote}");
	int pos;

	string s_assetIdBase("{");
	s_assetIdBase.append("asset_id_base");
	s_assetIdBase.append("}");
	pos = url.find(s_assetIdBase);
	url.erase(pos, s_assetIdBase.length());
	url.insert(pos, stringify(&assetIdBase, "std::string"));
	string s_assetIdQuote("{");
	s_assetIdQuote.append("asset_id_quote");
	s_assetIdQuote.append("}");
	pos = url.find(s_assetIdQuote);
	url.erase(pos, s_assetIdQuote.length());
	url.insert(pos, stringify(&assetIdQuote, "std::string"));

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
		NetClient::easycurl(ExchangeRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = get specific rateProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ExchangeRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), get specific rateProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ExchangeRatesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ExchangeRatesManager::get specific rateAsync(char * accessToken,
	std::string assetIdBase, std::string assetIdQuote, 
	void(* handler)(V1.ExchangeRate, Error, void* )
	, void* userData)
{
	return get specific rateHelper(accessToken,
	assetIdBase, assetIdQuote, 
	handler, userData, true);
}

bool ExchangeRatesManager::get specific rateSync(char * accessToken,
	std::string assetIdBase, std::string assetIdQuote, 
	void(* handler)(V1.ExchangeRate, Error, void* )
	, void* userData)
{
	return get specific rateHelper(accessToken,
	assetIdBase, assetIdQuote, 
	handler, userData, false);
}

static bool v1ExchangerateAssetIdBaseGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(V1.ExchangeRates, Error, void* )
	= reinterpret_cast<void(*)(V1.ExchangeRates, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	V1.ExchangeRates out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("V1.ExchangeRates")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "V1.ExchangeRates", "V1.ExchangeRates");
			json_node_free(pJson);

			if ("V1.ExchangeRates" == "std::string") {
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

static bool v1ExchangerateAssetIdBaseGetHelper(char * accessToken,
	std::string assetIdBase, std::string filterAssetId, bool invert, 
	void(* handler)(V1.ExchangeRates, Error, void* )
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
	

	itemAtq = stringify(&filterAssetId, "std::string");
	queryParams.insert(pair<string, string>("filter_asset_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_asset_id");
	}


	itemAtq = stringify(&invert, "bool");
	queryParams.insert(pair<string, string>("invert", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("invert");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/exchangerate/{asset_id_base}");
	int pos;

	string s_assetIdBase("{");
	s_assetIdBase.append("asset_id_base");
	s_assetIdBase.append("}");
	pos = url.find(s_assetIdBase);
	url.erase(pos, s_assetIdBase.length());
	url.insert(pos, stringify(&assetIdBase, "std::string"));

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
		NetClient::easycurl(ExchangeRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ExchangerateAssetIdBaseGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ExchangeRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ExchangerateAssetIdBaseGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ExchangeRatesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ExchangeRatesManager::v1ExchangerateAssetIdBaseGetAsync(char * accessToken,
	std::string assetIdBase, std::string filterAssetId, bool invert, 
	void(* handler)(V1.ExchangeRates, Error, void* )
	, void* userData)
{
	return v1ExchangerateAssetIdBaseGetHelper(accessToken,
	assetIdBase, filterAssetId, invert, 
	handler, userData, true);
}

bool ExchangeRatesManager::v1ExchangerateAssetIdBaseGetSync(char * accessToken,
	std::string assetIdBase, std::string filterAssetId, bool invert, 
	void(* handler)(V1.ExchangeRates, Error, void* )
	, void* userData)
{
	return v1ExchangerateAssetIdBaseGetHelper(accessToken,
	assetIdBase, filterAssetId, invert, 
	handler, userData, false);
}

