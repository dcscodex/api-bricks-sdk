#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "ContentExtractionManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


ContentExtractionManager::ContentExtractionManager()
{

}

ContentExtractionManager::~ContentExtractionManager()
{

}

static gboolean __ContentExtractionManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __ContentExtractionManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__ContentExtractionManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v1ExtractorGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(DTO.FilingExtractResultDto, Error, void* )
	= reinterpret_cast<void(*)(DTO.FilingExtractResultDto, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	DTO.FilingExtractResultDto out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("DTO.FilingExtractResultDto")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "DTO.FilingExtractResultDto", "DTO.FilingExtractResultDto");
			json_node_free(pJson);

			if ("DTO.FilingExtractResultDto" == "std::string") {
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

static bool v1ExtractorGetHelper(char * accessToken,
	std::string accessionNumber, DTO.ExtractorType type, 
	void(* handler)(DTO.FilingExtractResultDto, Error, void* )
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
	

	itemAtq = stringify(&accessionNumber, "std::string");
	queryParams.insert(pair<string, string>("accession_number", itemAtq));


	itemAtq = stringify(&type, "DTO.ExtractorType");
	queryParams.insert(pair<string, string>("type", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("type");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/extractor");
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
		NetClient::easycurl(ContentExtractionManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ExtractorGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ContentExtractionManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ExtractorGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ContentExtractionManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ContentExtractionManager::v1ExtractorGetAsync(char * accessToken,
	std::string accessionNumber, DTO.ExtractorType type, 
	void(* handler)(DTO.FilingExtractResultDto, Error, void* )
	, void* userData)
{
	return v1ExtractorGetHelper(accessToken,
	accessionNumber, type, 
	handler, userData, true);
}

bool ContentExtractionManager::v1ExtractorGetSync(char * accessToken,
	std::string accessionNumber, DTO.ExtractorType type, 
	void(* handler)(DTO.FilingExtractResultDto, Error, void* )
	, void* userData)
{
	return v1ExtractorGetHelper(accessToken,
	accessionNumber, type, 
	handler, userData, false);
}

static bool v1ExtractorItemGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::string, Error, void* )
	= reinterpret_cast<void(*)(std::string, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	std::string out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("std::string")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "std::string", "std::string");
			json_node_free(pJson);

			if ("std::string" == "std::string") {
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

static bool v1ExtractorItemGetHelper(char * accessToken,
	std::string accessionNumber, std::string itemNumber, DTO.ExtractorType type, 
	void(* handler)(std::string, Error, void* )
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
	

	itemAtq = stringify(&accessionNumber, "std::string");
	queryParams.insert(pair<string, string>("accession_number", itemAtq));


	itemAtq = stringify(&itemNumber, "std::string");
	queryParams.insert(pair<string, string>("item_number", itemAtq));


	itemAtq = stringify(&type, "DTO.ExtractorType");
	queryParams.insert(pair<string, string>("type", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("type");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/extractor/item");
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
		NetClient::easycurl(ContentExtractionManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1ExtractorItemGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ContentExtractionManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1ExtractorItemGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ContentExtractionManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ContentExtractionManager::v1ExtractorItemGetAsync(char * accessToken,
	std::string accessionNumber, std::string itemNumber, DTO.ExtractorType type, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return v1ExtractorItemGetHelper(accessToken,
	accessionNumber, itemNumber, type, 
	handler, userData, true);
}

bool ContentExtractionManager::v1ExtractorItemGetSync(char * accessToken,
	std::string accessionNumber, std::string itemNumber, DTO.ExtractorType type, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return v1ExtractorItemGetHelper(accessToken,
	accessionNumber, itemNumber, type, 
	handler, userData, false);
}

