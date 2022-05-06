#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExchangeLoginRequire.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExchangeLoginRequire::ExchangeLoginRequire()
{
	//__init();
}

ExchangeLoginRequire::~ExchangeLoginRequire()
{
	//__cleanup();
}

void
ExchangeLoginRequire::__init()
{
	//exchange_id = std::string();
	//location_id = std::string();
	//new std::list()std::list> required_parameters;
}

void
ExchangeLoginRequire::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(location_id != NULL) {
	//
	//delete location_id;
	//location_id = NULL;
	//}
	//if(required_parameters != NULL) {
	//required_parameters.RemoveAll(true);
	//delete required_parameters;
	//required_parameters = NULL;
	//}
	//
}

void
ExchangeLoginRequire::fromJson(char* jsonStr)
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
	const gchar *location_idKey = "location_id";
	node = json_object_get_member(pJsonObject, location_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&location_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *required_parametersKey = "required_parameters";
	node = json_object_get_member(pJsonObject, required_parametersKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			required_parameters = new_list;
		}
		
	}
}

ExchangeLoginRequire::ExchangeLoginRequire(char* json)
{
	this->fromJson(json);
}

char*
ExchangeLoginRequire::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getLocationId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *location_idKey = "location_id";
	json_object_set_member(pJsonObject, location_idKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getRequiredParameters());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getRequiredParameters());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *required_parametersKey = "required_parameters";
	json_object_set_member(pJsonObject, required_parametersKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ExchangeLoginRequire::getExchangeId()
{
	return exchange_id;
}

void
ExchangeLoginRequire::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
ExchangeLoginRequire::getLocationId()
{
	return location_id;
}

void
ExchangeLoginRequire::setLocationId(std::string  location_id)
{
	this->location_id = location_id;
}

std::list<std::string>
ExchangeLoginRequire::getRequiredParameters()
{
	return required_parameters;
}

void
ExchangeLoginRequire::setRequiredParameters(std::list <std::string> required_parameters)
{
	this->required_parameters = required_parameters;
}


