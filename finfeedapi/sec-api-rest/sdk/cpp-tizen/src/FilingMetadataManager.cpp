#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "FilingMetadataManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


FilingMetadataManager::FilingMetadataManager()
{

}

FilingMetadataManager::~FilingMetadataManager()
{

}

static gboolean __FilingMetadataManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __FilingMetadataManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__FilingMetadataManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v1FilingsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<DTO.FilingMetadataDto>, Error, void* )
	= reinterpret_cast<void(*)(std::list<DTO.FilingMetadataDto>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<DTO.FilingMetadataDto> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			DTO.FilingMetadataDto singlemodel;
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

static bool v1FilingsGetHelper(char * accessToken,
	long long cik, std::string formType, std::string fillingDateStart, std::string fillingDateEnd, std::string reportDateStart, std::string reportDateEnd, std::string itemsContain, int pageSize, int pageNumber, DTO.FilingSortBy sortBy, std::string sortOrder, 
	void(* handler)(std::list<DTO.FilingMetadataDto>, Error, void* )
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
	

	itemAtq = stringify(&cik, "long long");
	queryParams.insert(pair<string, string>("cik", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("cik");
	}


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


	itemAtq = stringify(&reportDateStart, "std::string");
	queryParams.insert(pair<string, string>("report_date_start", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("report_date_start");
	}


	itemAtq = stringify(&reportDateEnd, "std::string");
	queryParams.insert(pair<string, string>("report_date_end", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("report_date_end");
	}


	itemAtq = stringify(&itemsContain, "std::string");
	queryParams.insert(pair<string, string>("items_contain", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("items_contain");
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


	itemAtq = stringify(&sortBy, "DTO.FilingSortBy");
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

	string url("/v1/filings");
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
		NetClient::easycurl(FilingMetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1FilingsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (FilingMetadataManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1FilingsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FilingMetadataManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FilingMetadataManager::v1FilingsGetAsync(char * accessToken,
	long long cik, std::string formType, std::string fillingDateStart, std::string fillingDateEnd, std::string reportDateStart, std::string reportDateEnd, std::string itemsContain, int pageSize, int pageNumber, DTO.FilingSortBy sortBy, std::string sortOrder, 
	void(* handler)(std::list<DTO.FilingMetadataDto>, Error, void* )
	, void* userData)
{
	return v1FilingsGetHelper(accessToken,
	cik, formType, fillingDateStart, fillingDateEnd, reportDateStart, reportDateEnd, itemsContain, pageSize, pageNumber, sortBy, sortOrder, 
	handler, userData, true);
}

bool FilingMetadataManager::v1FilingsGetSync(char * accessToken,
	long long cik, std::string formType, std::string fillingDateStart, std::string fillingDateEnd, std::string reportDateStart, std::string reportDateEnd, std::string itemsContain, int pageSize, int pageNumber, DTO.FilingSortBy sortBy, std::string sortOrder, 
	void(* handler)(std::list<DTO.FilingMetadataDto>, Error, void* )
	, void* userData)
{
	return v1FilingsGetHelper(accessToken,
	cik, formType, fillingDateStart, fillingDateEnd, reportDateStart, reportDateEnd, itemsContain, pageSize, pageNumber, sortBy, sortOrder, 
	handler, userData, false);
}

