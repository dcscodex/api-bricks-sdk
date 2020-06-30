#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "MessagesInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;

MessagesInfo::MessagesInfo()
{
	//__init();
}

MessagesInfo::~MessagesInfo()
{
	//__cleanup();
}

void
MessagesInfo::__init()
{
	//type = std::string();
	//exchange_id = std::string();
	//error_message = std::string();
}

void
MessagesInfo::__cleanup()
{
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(error_message != NULL) {
	//
	//delete error_message;
	//error_message = NULL;
	//}
	//
}

void
MessagesInfo::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *exchange_idKey = "exchange_id";
	node = json_object_get_member(pJsonObject, exchange_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchange_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *error_messageKey = "error_message";
	node = json_object_get_member(pJsonObject, error_messageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&error_message, node, "std::string", "");
		} else {
			
		}
	}
}

MessagesInfo::MessagesInfo(char* json)
{
	this->fromJson(json);
}

char*
MessagesInfo::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getExchangeId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchange_idKey = "exchange_id";
	json_object_set_member(pJsonObject, exchange_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getErrorMessage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *error_messageKey = "error_message";
	json_object_set_member(pJsonObject, error_messageKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
MessagesInfo::getType()
{
	return type;
}

void
MessagesInfo::setType(std::string  type)
{
	this->type = type;
}

std::string
MessagesInfo::getExchangeId()
{
	return exchange_id;
}

void
MessagesInfo::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
MessagesInfo::getErrorMessage()
{
	return error_message;
}

void
MessagesInfo::setErrorMessage(std::string  error_message)
{
	this->error_message = error_message;
}


