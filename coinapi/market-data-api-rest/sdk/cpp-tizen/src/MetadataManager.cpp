#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "MetadataManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


MetadataManager::MetadataManager()
{

}

MetadataManager::~MetadataManager()
{

}

static gboolean __MetadataManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __MetadataManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__MetadataManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v1AssetsAssetIdGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.Asset>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.Asset>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.Asset> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.Asset singlemodel;
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

static bool v1AssetsAssetIdGetHelper(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.Asset>, Error, void* )
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

	string url("/v1/assets/{asset_id}");
	int pos;

	string s_assetId("{");
	s_assetId.append("asset_id");
	s_assetId.append("}");
	pos = url.find(s_assetId);
	url.erase(pos, s_assetId.length());
	url.insert(pos, stringify(&assetId, "std::string"));

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
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1AssetsAssetIdGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1AssetsAssetIdGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::v1AssetsAssetIdGetAsync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.Asset>, Error, void* )
	, void* userData)
{
	return v1AssetsAssetIdGetHelper(accessToken,
	assetId, 
	handler, userData, true);
}

bool MetadataManager::v1AssetsAssetIdGetSync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<V1.Asset>, Error, void* )
	, void* userData)
{
	return v1AssetsAssetIdGetHelper(accessToken,
	assetId, 
	handler, userData, false);
}

static bool v1AssetsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.Asset>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.Asset>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.Asset> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.Asset singlemodel;
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

static bool v1AssetsGetHelper(char * accessToken,
	std::string filterAssetId, 
	void(* handler)(std::list<V1.Asset>, Error, void* )
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

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/assets");
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
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1AssetsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1AssetsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::v1AssetsGetAsync(char * accessToken,
	std::string filterAssetId, 
	void(* handler)(std::list<V1.Asset>, Error, void* )
	, void* userData)
{
	return v1AssetsGetHelper(accessToken,
	filterAssetId, 
	handler, userData, true);
}

bool MetadataManager::v1AssetsGetSync(char * accessToken,
	std::string filterAssetId, 
	void(* handler)(std::list<V1.Asset>, Error, void* )
	, void* userData)
{
	return v1AssetsGetHelper(accessToken,
	filterAssetId, 
	handler, userData, false);
}

static bool v1AssetsIconsSizeGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.Icon>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.Icon>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.Icon> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.Icon singlemodel;
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

static bool v1AssetsIconsSizeGetHelper(char * accessToken,
	int size, 
	void(* handler)(std::list<V1.Icon>, Error, void* )
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

	string url("/v1/assets/icons/{size}");
	int pos;

	string s_size("{");
	s_size.append("size");
	s_size.append("}");
	pos = url.find(s_size);
	url.erase(pos, s_size.length());
	url.insert(pos, stringify(&size, "int"));

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
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1AssetsIconsSizeGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1AssetsIconsSizeGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::v1AssetsIconsSizeGetAsync(char * accessToken,
	int size, 
	void(* handler)(std::list<V1.Icon>, Error, void* )
	, void* userData)
{
	return v1AssetsIconsSizeGetHelper(accessToken,
	size, 
	handler, userData, true);
}

bool MetadataManager::v1AssetsIconsSizeGetSync(char * accessToken,
	int size, 
	void(* handler)(std::list<V1.Icon>, Error, void* )
	, void* userData)
{
	return v1AssetsIconsSizeGetHelper(accessToken,
	size, 
	handler, userData, false);
}

static bool v1ChainsChainIdGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.Chain>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.Chain>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.Chain> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.Chain singlemodel;
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

static bool v1ChainsChainIdGetHelper(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<V1.Chain>, Error, void* )
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

	string url("/v1/chains/{chain_id}");
	int pos;

	string s_chainId("{");
	s_chainId.append("chain_id");
	s_chainId.append("}");
	pos = url.find(s_chainId);
	url.erase(pos, s_chainId.length());
	url.insert(pos, stringify(&chainId, "std::string"));

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
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ChainsChainIdGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ChainsChainIdGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::v1ChainsChainIdGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<V1.Chain>, Error, void* )
	, void* userData)
{
	return v1ChainsChainIdGetHelper(accessToken,
	chainId, 
	handler, userData, true);
}

bool MetadataManager::v1ChainsChainIdGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<V1.Chain>, Error, void* )
	, void* userData)
{
	return v1ChainsChainIdGetHelper(accessToken,
	chainId, 
	handler, userData, false);
}

static bool v1ChainsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.Chain>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.Chain>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.Chain> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.Chain singlemodel;
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

static bool v1ChainsGetHelper(char * accessToken,
	std::string filterChainId, 
	void(* handler)(std::list<V1.Chain>, Error, void* )
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
	

	itemAtq = stringify(&filterChainId, "std::string");
	queryParams.insert(pair<string, string>("filter_chain_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_chain_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/chains");
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
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ChainsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ChainsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::v1ChainsGetAsync(char * accessToken,
	std::string filterChainId, 
	void(* handler)(std::list<V1.Chain>, Error, void* )
	, void* userData)
{
	return v1ChainsGetHelper(accessToken,
	filterChainId, 
	handler, userData, true);
}

bool MetadataManager::v1ChainsGetSync(char * accessToken,
	std::string filterChainId, 
	void(* handler)(std::list<V1.Chain>, Error, void* )
	, void* userData)
{
	return v1ChainsGetHelper(accessToken,
	filterChainId, 
	handler, userData, false);
}

static bool v1ExchangesExchangeIdGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.Exchange>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.Exchange>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.Exchange> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.Exchange singlemodel;
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

static bool v1ExchangesExchangeIdGetHelper(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.Exchange>, Error, void* )
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

	string url("/v1/exchanges/{exchange_id}");
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
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ExchangesExchangeIdGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ExchangesExchangeIdGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::v1ExchangesExchangeIdGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.Exchange>, Error, void* )
	, void* userData)
{
	return v1ExchangesExchangeIdGetHelper(accessToken,
	exchangeId, 
	handler, userData, true);
}

bool MetadataManager::v1ExchangesExchangeIdGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.Exchange>, Error, void* )
	, void* userData)
{
	return v1ExchangesExchangeIdGetHelper(accessToken,
	exchangeId, 
	handler, userData, false);
}

static bool v1ExchangesGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.Exchange>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.Exchange>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.Exchange> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.Exchange singlemodel;
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

static bool v1ExchangesGetHelper(char * accessToken,
	std::string filterExchangeId, 
	void(* handler)(std::list<V1.Exchange>, Error, void* )
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
	

	itemAtq = stringify(&filterExchangeId, "std::string");
	queryParams.insert(pair<string, string>("filter_exchange_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_exchange_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/exchanges");
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
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ExchangesGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ExchangesGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::v1ExchangesGetAsync(char * accessToken,
	std::string filterExchangeId, 
	void(* handler)(std::list<V1.Exchange>, Error, void* )
	, void* userData)
{
	return v1ExchangesGetHelper(accessToken,
	filterExchangeId, 
	handler, userData, true);
}

bool MetadataManager::v1ExchangesGetSync(char * accessToken,
	std::string filterExchangeId, 
	void(* handler)(std::list<V1.Exchange>, Error, void* )
	, void* userData)
{
	return v1ExchangesGetHelper(accessToken,
	filterExchangeId, 
	handler, userData, false);
}

static bool v1ExchangesIconsSizeGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.Icon>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.Icon>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.Icon> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.Icon singlemodel;
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

static bool v1ExchangesIconsSizeGetHelper(char * accessToken,
	int size, 
	void(* handler)(std::list<V1.Icon>, Error, void* )
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

	string url("/v1/exchanges/icons/{size}");
	int pos;

	string s_size("{");
	s_size.append("size");
	s_size.append("}");
	pos = url.find(s_size);
	url.erase(pos, s_size.length());
	url.insert(pos, stringify(&size, "int"));

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
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ExchangesIconsSizeGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ExchangesIconsSizeGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::v1ExchangesIconsSizeGetAsync(char * accessToken,
	int size, 
	void(* handler)(std::list<V1.Icon>, Error, void* )
	, void* userData)
{
	return v1ExchangesIconsSizeGetHelper(accessToken,
	size, 
	handler, userData, true);
}

bool MetadataManager::v1ExchangesIconsSizeGetSync(char * accessToken,
	int size, 
	void(* handler)(std::list<V1.Icon>, Error, void* )
	, void* userData)
{
	return v1ExchangesIconsSizeGetHelper(accessToken,
	size, 
	handler, userData, false);
}

static bool v1SymbolsExchangeIdGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.Symbol>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.Symbol>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.Symbol> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.Symbol singlemodel;
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

static bool v1SymbolsExchangeIdGetHelper(char * accessToken,
	std::string exchangeId, std::string filterSymbolId, std::string filterAssetId, 
	void(* handler)(std::list<V1.Symbol>, Error, void* )
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


	itemAtq = stringify(&filterAssetId, "std::string");
	queryParams.insert(pair<string, string>("filter_asset_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_asset_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/symbols/{exchange_id}");
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
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1SymbolsExchangeIdGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1SymbolsExchangeIdGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::v1SymbolsExchangeIdGetAsync(char * accessToken,
	std::string exchangeId, std::string filterSymbolId, std::string filterAssetId, 
	void(* handler)(std::list<V1.Symbol>, Error, void* )
	, void* userData)
{
	return v1SymbolsExchangeIdGetHelper(accessToken,
	exchangeId, filterSymbolId, filterAssetId, 
	handler, userData, true);
}

bool MetadataManager::v1SymbolsExchangeIdGetSync(char * accessToken,
	std::string exchangeId, std::string filterSymbolId, std::string filterAssetId, 
	void(* handler)(std::list<V1.Symbol>, Error, void* )
	, void* userData)
{
	return v1SymbolsExchangeIdGetHelper(accessToken,
	exchangeId, filterSymbolId, filterAssetId, 
	handler, userData, false);
}

static bool v1SymbolsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.Symbol>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.Symbol>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.Symbol> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.Symbol singlemodel;
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

static bool v1SymbolsGetHelper(char * accessToken,
	std::string filterSymbolId, std::string filterExchangeId, std::string filterAssetId, 
	void(* handler)(std::list<V1.Symbol>, Error, void* )
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


	itemAtq = stringify(&filterExchangeId, "std::string");
	queryParams.insert(pair<string, string>("filter_exchange_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_exchange_id");
	}


	itemAtq = stringify(&filterAssetId, "std::string");
	queryParams.insert(pair<string, string>("filter_asset_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filter_asset_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/symbols");
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
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1SymbolsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1SymbolsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::v1SymbolsGetAsync(char * accessToken,
	std::string filterSymbolId, std::string filterExchangeId, std::string filterAssetId, 
	void(* handler)(std::list<V1.Symbol>, Error, void* )
	, void* userData)
{
	return v1SymbolsGetHelper(accessToken,
	filterSymbolId, filterExchangeId, filterAssetId, 
	handler, userData, true);
}

bool MetadataManager::v1SymbolsGetSync(char * accessToken,
	std::string filterSymbolId, std::string filterExchangeId, std::string filterAssetId, 
	void(* handler)(std::list<V1.Symbol>, Error, void* )
	, void* userData)
{
	return v1SymbolsGetHelper(accessToken,
	filterSymbolId, filterExchangeId, filterAssetId, 
	handler, userData, false);
}

static bool v1SymbolsMapExchangeIdGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<V1.SymbolMapping>, Error, void* )
	= reinterpret_cast<void(*)(std::list<V1.SymbolMapping>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<V1.SymbolMapping> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			V1.SymbolMapping singlemodel;
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

static bool v1SymbolsMapExchangeIdGetHelper(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.SymbolMapping>, Error, void* )
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

	string url("/v1/symbols/map/{exchange_id}");
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
		NetClient::easycurl(MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1SymbolsMapExchangeIdGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (MetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1SymbolsMapExchangeIdGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __MetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool MetadataManager::v1SymbolsMapExchangeIdGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.SymbolMapping>, Error, void* )
	, void* userData)
{
	return v1SymbolsMapExchangeIdGetHelper(accessToken,
	exchangeId, 
	handler, userData, true);
}

bool MetadataManager::v1SymbolsMapExchangeIdGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.SymbolMapping>, Error, void* )
	, void* userData)
{
	return v1SymbolsMapExchangeIdGetHelper(accessToken,
	exchangeId, 
	handler, userData, false);
}

