#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GetAccount.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GetAccount::GetAccount()
{
	//__init();
}

GetAccount::~GetAccount()
{
	//__cleanup();
}

void
GetAccount::__init()
{
	//exchange_id = std::string();
	//new std::list()std::list> parameters;
}

void
GetAccount::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(parameters != NULL) {
	//parameters.RemoveAll(true);
	//delete parameters;
	//parameters = NULL;
	//}
	//
}

void
GetAccount::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *exchange_idKey = "exchange_id";
	node = json_object_get_member(pJsonObject, exchange_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchange_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *parametersKey = "parameters";
	node = json_object_get_member(pJsonObject, parametersKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<KeyValue> new_list;
			KeyValue inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("KeyValue")) {
					jsonToValue(&inst, temp_json, "KeyValue", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			parameters = new_list;
		}
		
	}
}

GetAccount::GetAccount(char* json)
{
	this->fromJson(json);
}

char*
GetAccount::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getExchangeId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchange_idKey = "exchange_id";
	json_object_set_member(pJsonObject, exchange_idKey, node);
	if (isprimitive("KeyValue")) {
		list<KeyValue> new_list = static_cast<list <KeyValue> > (getParameters());
		node = converttoJson(&new_list, "KeyValue", "array");
	} else {
		node = json_node_alloc();
		list<KeyValue> new_list = static_cast<list <KeyValue> > (getParameters());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<KeyValue>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			KeyValue obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *parametersKey = "parameters";
	json_object_set_member(pJsonObject, parametersKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
GetAccount::getExchangeId()
{
	return exchange_id;
}

void
GetAccount::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::list<KeyValue>
GetAccount::getParameters()
{
	return parameters;
}

void
GetAccount::setParameters(std::list <KeyValue> parameters)
{
	this->parameters = parameters;
}


