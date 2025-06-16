#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "FileDownloadManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


FileDownloadManager::FileDownloadManager()
{

}

FileDownloadManager::~FileDownloadManager()
{

}

static gboolean __FileDownloadManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __FileDownloadManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__FileDownloadManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v1DownloadGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool v1DownloadGetHelper(char * accessToken,
	std::string accessionNo, std::string fileName, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&accessionNo, "std::string");
	queryParams.insert(pair<string, string>("accession_no", itemAtq));


	itemAtq = stringify(&fileName, "std::string");
	queryParams.insert(pair<string, string>("file_name", itemAtq));

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/download");
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
		NetClient::easycurl(FileDownloadManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1DownloadGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (FileDownloadManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1DownloadGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FileDownloadManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FileDownloadManager::v1DownloadGetAsync(char * accessToken,
	std::string accessionNo, std::string fileName, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return v1DownloadGetHelper(accessToken,
	accessionNo, fileName, 
	handler, userData, true);
}

bool FileDownloadManager::v1DownloadGetSync(char * accessToken,
	std::string accessionNo, std::string fileName, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return v1DownloadGetHelper(accessToken,
	accessionNo, fileName, 
	handler, userData, false);
}

