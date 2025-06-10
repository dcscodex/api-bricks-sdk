#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.ExternalExchange.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.ExternalExchange::V1.ExternalExchange()
{
	//__init();
}

V1.ExternalExchange::~V1.ExternalExchange()
{
	//__cleanup();
}

void
V1.ExternalExchange::__init()
{
	//exchange_id = std::string();
	//external_name = std::string();
	//description = std::string();
	//source_id = std::string();
}

void
V1.ExternalExchange::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(external_name != NULL) {
	//
	//delete external_name;
	//external_name = NULL;
	//}
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(source_id != NULL) {
	//
	//delete source_id;
	//source_id = NULL;
	//}
	//
}

void
V1.ExternalExchange::fromJson(char* jsonStr)
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
	const gchar *external_nameKey = "external_name";
	node = json_object_get_member(pJsonObject, external_nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&external_name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *descriptionKey = "description";
	node = json_object_get_member(pJsonObject, descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&description, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *source_idKey = "source_id";
	node = json_object_get_member(pJsonObject, source_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&source_id, node, "std::string", "");
		} else {
			
		}
	}
}

V1.ExternalExchange::V1.ExternalExchange(char* json)
{
	this->fromJson(json);
}

char*
V1.ExternalExchange::toJson()
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
		std::string obj = getExternalName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *external_nameKey = "external_name";
	json_object_set_member(pJsonObject, external_nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSourceId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *source_idKey = "source_id";
	json_object_set_member(pJsonObject, source_idKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.ExternalExchange::getExchangeId()
{
	return exchange_id;
}

void
V1.ExternalExchange::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
V1.ExternalExchange::getExternalName()
{
	return external_name;
}

void
V1.ExternalExchange::setExternalName(std::string  external_name)
{
	this->external_name = external_name;
}

std::string
V1.ExternalExchange::getDescription()
{
	return description;
}

void
V1.ExternalExchange::setDescription(std::string  description)
{
	this->description = description;
}

std::string
V1.ExternalExchange::getSourceId()
{
	return source_id;
}

void
V1.ExternalExchange::setSourceId(std::string  source_id)
{
	this->source_id = source_id;
}


