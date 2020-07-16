#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Message.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Message::Message()
{
	//__init();
}

Message::~Message()
{
	//__cleanup();
}

void
Message::__init()
{
	//type = std::string();
	//severity = new Severity();
	//exchange_id = std::string();
	//message = std::string();
}

void
Message::__cleanup()
{
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(severity != NULL) {
	//
	//delete severity;
	//severity = NULL;
	//}
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(message != NULL) {
	//
	//delete message;
	//message = NULL;
	//}
	//
}

void
Message::fromJson(char* jsonStr)
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
	const gchar *severityKey = "severity";
	node = json_object_get_member(pJsonObject, severityKey);
	if (node !=NULL) {
	

		if (isprimitive("Severity")) {
			jsonToValue(&severity, node, "Severity", "Severity");
		} else {
			
			Severity* obj = static_cast<Severity*> (&severity);
			obj->fromJson(json_to_string(node, false));
			
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
	const gchar *messageKey = "message";
	node = json_object_get_member(pJsonObject, messageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&message, node, "std::string", "");
		} else {
			
		}
	}
}

Message::Message(char* json)
{
	this->fromJson(json);
}

char*
Message::toJson()
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
	if (isprimitive("Severity")) {
		Severity obj = getSeverity();
		node = converttoJson(&obj, "Severity", "");
	}
	else {
		
		Severity obj = static_cast<Severity> (getSeverity());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *severityKey = "severity";
	json_object_set_member(pJsonObject, severityKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getExchangeId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchange_idKey = "exchange_id";
	json_object_set_member(pJsonObject, exchange_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMessage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *messageKey = "message";
	json_object_set_member(pJsonObject, messageKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Message::getType()
{
	return type;
}

void
Message::setType(std::string  type)
{
	this->type = type;
}

Severity
Message::getSeverity()
{
	return severity;
}

void
Message::setSeverity(Severity  severity)
{
	this->severity = severity;
}

std::string
Message::getExchangeId()
{
	return exchange_id;
}

void
Message::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
Message::getMessage()
{
	return message;
}

void
Message::setMessage(std::string  message)
{
	this->message = message;
}


