#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "FullTextSearchManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


FullTextSearchManager::FullTextSearchManager()
{

}

FullTextSearchManager::~FullTextSearchManager()
{

}

static gboolean __FullTextSearchManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __FullTextSearchManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__FullTextSearchManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v1FullTextGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<DTO.SecFilingResultDto>, Error, void* )
	= reinterpret_cast<void(*)(std::list<DTO.SecFilingResultDto>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<DTO.SecFilingResultDto> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			DTO.SecFilingResultDto singlemodel;
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

static bool v1FullTextGetHelper(char * accessToken,
	std::string formType, std::string fillingDateStart, std::string fillingDateEnd, std::string textContains, std::string textNotContain, int pageSize, int pageNumber, std::string sortBy, std::string sortOrder, 
	void(* handler)(std::list<DTO.SecFilingResultDto>, Error, void* )
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
	

	itemAtq = stringify(&formType, "std::string");
	queryParams.insert(pair<string, string>("form_type", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("form_type");
	}


	itemAtq = stringify(&fillingDateStart, "std::string");
	queryParams.insert(pair<string, string>("filling_date_start", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filling_date_start");
	}


	itemAtq = stringify(&fillingDateEnd, "std::string");
	queryParams.insert(pair<string, string>("filling_date_end", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("filling_date_end");
	}


	itemAtq = stringify(&textContains, "std::string");
	queryParams.insert(pair<string, string>("text_contains", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("text_contains");
	}


	itemAtq = stringify(&textNotContain, "std::string");
	queryParams.insert(pair<string, string>("text_not_contain", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("text_not_contain");
	}


	itemAtq = stringify(&pageSize, "int");
	queryParams.insert(pair<string, string>("page_size", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("page_size");
	}


	itemAtq = stringify(&pageNumber, "int");
	queryParams.insert(pair<string, string>("page_number", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("page_number");
	}


	itemAtq = stringify(&sortBy, "std::string");
	queryParams.insert(pair<string, string>("sort_by", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("sort_by");
	}


	itemAtq = stringify(&sortOrder, "std::string");
	queryParams.insert(pair<string, string>("sort_order", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("sort_order");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/full-text");
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
		NetClient::easycurl(FullTextSearchManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1FullTextGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (FullTextSearchManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1FullTextGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FullTextSearchManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FullTextSearchManager::v1FullTextGetAsync(char * accessToken,
	std::string formType, std::string fillingDateStart, std::string fillingDateEnd, std::string textContains, std::string textNotContain, int pageSize, int pageNumber, std::string sortBy, std::string sortOrder, 
	void(* handler)(std::list<DTO.SecFilingResultDto>, Error, void* )
	, void* userData)
{
	return v1FullTextGetHelper(accessToken,
	formType, fillingDateStart, fillingDateEnd, textContains, textNotContain, pageSize, pageNumber, sortBy, sortOrder, 
	handler, userData, true);
}

bool FullTextSearchManager::v1FullTextGetSync(char * accessToken,
	std::string formType, std::string fillingDateStart, std::string fillingDateEnd, std::string textContains, std::string textNotContain, int pageSize, int pageNumber, std::string sortBy, std::string sortOrder, 
	void(* handler)(std::list<DTO.SecFilingResultDto>, Error, void* )
	, void* userData)
{
	return v1FullTextGetHelper(accessToken,
	formType, fillingDateStart, fillingDateEnd, textContains, textNotContain, pageSize, pageNumber, sortBy, sortOrder, 
	handler, userData, false);
}

