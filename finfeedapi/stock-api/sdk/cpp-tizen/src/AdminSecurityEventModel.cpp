#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Admin.SecurityEventModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Admin.SecurityEventModel::Admin.SecurityEventModel()
{
	//__init();
}

Admin.SecurityEventModel::~Admin.SecurityEventModel()
{
	//__cleanup();
}

void
Admin.SecurityEventModel::__init()
{
	//symbol = std::string();
	//timestamp_nanos = long(0);
	//timestamp = null;
	//security_event = int(0);
	//security_event_code = std::string();
	//security_event_text = std::string();
	//is_opening_process_complete = bool(false);
	//is_closing_process_complete = bool(false);
}

void
Admin.SecurityEventModel::__cleanup()
{
	//if(symbol != NULL) {
	//
	//delete symbol;
	//symbol = NULL;
	//}
	//if(timestamp_nanos != NULL) {
	//
	//delete timestamp_nanos;
	//timestamp_nanos = NULL;
	//}
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(security_event != NULL) {
	//
	//delete security_event;
	//security_event = NULL;
	//}
	//if(security_event_code != NULL) {
	//
	//delete security_event_code;
	//security_event_code = NULL;
	//}
	//if(security_event_text != NULL) {
	//
	//delete security_event_text;
	//security_event_text = NULL;
	//}
	//if(is_opening_process_complete != NULL) {
	//
	//delete is_opening_process_complete;
	//is_opening_process_complete = NULL;
	//}
	//if(is_closing_process_complete != NULL) {
	//
	//delete is_closing_process_complete;
	//is_closing_process_complete = NULL;
	//}
	//
}

void
Admin.SecurityEventModel::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *symbolKey = "symbol";
	node = json_object_get_member(pJsonObject, symbolKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *timestamp_nanosKey = "timestamp_nanos";
	node = json_object_get_member(pJsonObject, timestamp_nanosKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&timestamp_nanos, node, "long long", "");
		} else {
			
		}
	}
	const gchar *timestampKey = "timestamp";
	node = json_object_get_member(pJsonObject, timestampKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&timestamp, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *security_eventKey = "security_event";
	node = json_object_get_member(pJsonObject, security_eventKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&security_event, node, "int", "");
		} else {
			
		}
	}
	const gchar *security_event_codeKey = "security_event_code";
	node = json_object_get_member(pJsonObject, security_event_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&security_event_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *security_event_textKey = "security_event_text";
	node = json_object_get_member(pJsonObject, security_event_textKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&security_event_text, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *is_opening_process_completeKey = "is_opening_process_complete";
	node = json_object_get_member(pJsonObject, is_opening_process_completeKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_opening_process_complete, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_closing_process_completeKey = "is_closing_process_complete";
	node = json_object_get_member(pJsonObject, is_closing_process_completeKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_closing_process_complete, node, "bool", "");
		} else {
			
		}
	}
}

Admin.SecurityEventModel::Admin.SecurityEventModel(char* json)
{
	this->fromJson(json);
}

char*
Admin.SecurityEventModel::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getSymbol();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbolKey = "symbol";
	json_object_set_member(pJsonObject, symbolKey, node);
	if (isprimitive("long long")) {
		long long obj = getTimestampNanos();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *timestamp_nanosKey = "timestamp_nanos";
	json_object_set_member(pJsonObject, timestamp_nanosKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("int")) {
		int obj = getSecurityEvent();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *security_eventKey = "security_event";
	json_object_set_member(pJsonObject, security_eventKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSecurityEventCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *security_event_codeKey = "security_event_code";
	json_object_set_member(pJsonObject, security_event_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSecurityEventText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *security_event_textKey = "security_event_text";
	json_object_set_member(pJsonObject, security_event_textKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsOpeningProcessComplete();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_opening_process_completeKey = "is_opening_process_complete";
	json_object_set_member(pJsonObject, is_opening_process_completeKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsClosingProcessComplete();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_closing_process_completeKey = "is_closing_process_complete";
	json_object_set_member(pJsonObject, is_closing_process_completeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Admin.SecurityEventModel::getSymbol()
{
	return symbol;
}

void
Admin.SecurityEventModel::setSymbol(std::string  symbol)
{
	this->symbol = symbol;
}

long long
Admin.SecurityEventModel::getTimestampNanos()
{
	return timestamp_nanos;
}

void
Admin.SecurityEventModel::setTimestampNanos(long long  timestamp_nanos)
{
	this->timestamp_nanos = timestamp_nanos;
}

std::string
Admin.SecurityEventModel::getTimestamp()
{
	return timestamp;
}

void
Admin.SecurityEventModel::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

int
Admin.SecurityEventModel::getSecurityEvent()
{
	return security_event;
}

void
Admin.SecurityEventModel::setSecurityEvent(int  security_event)
{
	this->security_event = security_event;
}

std::string
Admin.SecurityEventModel::getSecurityEventCode()
{
	return security_event_code;
}

void
Admin.SecurityEventModel::setSecurityEventCode(std::string  security_event_code)
{
	this->security_event_code = security_event_code;
}

std::string
Admin.SecurityEventModel::getSecurityEventText()
{
	return security_event_text;
}

void
Admin.SecurityEventModel::setSecurityEventText(std::string  security_event_text)
{
	this->security_event_text = security_event_text;
}

bool
Admin.SecurityEventModel::getIsOpeningProcessComplete()
{
	return is_opening_process_complete;
}

void
Admin.SecurityEventModel::setIsOpeningProcessComplete(bool  is_opening_process_complete)
{
	this->is_opening_process_complete = is_opening_process_complete;
}

bool
Admin.SecurityEventModel::getIsClosingProcessComplete()
{
	return is_closing_process_complete;
}

void
Admin.SecurityEventModel::setIsClosingProcessComplete(bool  is_closing_process_complete)
{
	this->is_closing_process_complete = is_closing_process_complete;
}


