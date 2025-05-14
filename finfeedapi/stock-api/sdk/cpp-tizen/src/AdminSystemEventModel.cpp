#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Admin.SystemEventModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Admin.SystemEventModel::Admin.SystemEventModel()
{
	//__init();
}

Admin.SystemEventModel::~Admin.SystemEventModel()
{
	//__cleanup();
}

void
Admin.SystemEventModel::__init()
{
	//timestamp_nanos = long(0);
	//timestamp = null;
	//system_event = int(0);
	//system_event_code = std::string();
	//system_event_text = std::string();
	//is_system_event_start_of_messages = bool(false);
	//is_system_event_start_of_system_hours = bool(false);
	//is_system_event_start_of_regular_market_hours = bool(false);
	//is_system_event_end_of_regular_market_hours = bool(false);
	//is_system_event_end_of_system_hours = bool(false);
	//is_system_event_end_of_messages = bool(false);
}

void
Admin.SystemEventModel::__cleanup()
{
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
	//if(system_event != NULL) {
	//
	//delete system_event;
	//system_event = NULL;
	//}
	//if(system_event_code != NULL) {
	//
	//delete system_event_code;
	//system_event_code = NULL;
	//}
	//if(system_event_text != NULL) {
	//
	//delete system_event_text;
	//system_event_text = NULL;
	//}
	//if(is_system_event_start_of_messages != NULL) {
	//
	//delete is_system_event_start_of_messages;
	//is_system_event_start_of_messages = NULL;
	//}
	//if(is_system_event_start_of_system_hours != NULL) {
	//
	//delete is_system_event_start_of_system_hours;
	//is_system_event_start_of_system_hours = NULL;
	//}
	//if(is_system_event_start_of_regular_market_hours != NULL) {
	//
	//delete is_system_event_start_of_regular_market_hours;
	//is_system_event_start_of_regular_market_hours = NULL;
	//}
	//if(is_system_event_end_of_regular_market_hours != NULL) {
	//
	//delete is_system_event_end_of_regular_market_hours;
	//is_system_event_end_of_regular_market_hours = NULL;
	//}
	//if(is_system_event_end_of_system_hours != NULL) {
	//
	//delete is_system_event_end_of_system_hours;
	//is_system_event_end_of_system_hours = NULL;
	//}
	//if(is_system_event_end_of_messages != NULL) {
	//
	//delete is_system_event_end_of_messages;
	//is_system_event_end_of_messages = NULL;
	//}
	//
}

void
Admin.SystemEventModel::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
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
	const gchar *system_eventKey = "system_event";
	node = json_object_get_member(pJsonObject, system_eventKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&system_event, node, "int", "");
		} else {
			
		}
	}
	const gchar *system_event_codeKey = "system_event_code";
	node = json_object_get_member(pJsonObject, system_event_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&system_event_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *system_event_textKey = "system_event_text";
	node = json_object_get_member(pJsonObject, system_event_textKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&system_event_text, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *is_system_event_start_of_messagesKey = "is_system_event_start_of_messages";
	node = json_object_get_member(pJsonObject, is_system_event_start_of_messagesKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_system_event_start_of_messages, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_system_event_start_of_system_hoursKey = "is_system_event_start_of_system_hours";
	node = json_object_get_member(pJsonObject, is_system_event_start_of_system_hoursKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_system_event_start_of_system_hours, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_system_event_start_of_regular_market_hoursKey = "is_system_event_start_of_regular_market_hours";
	node = json_object_get_member(pJsonObject, is_system_event_start_of_regular_market_hoursKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_system_event_start_of_regular_market_hours, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_system_event_end_of_regular_market_hoursKey = "is_system_event_end_of_regular_market_hours";
	node = json_object_get_member(pJsonObject, is_system_event_end_of_regular_market_hoursKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_system_event_end_of_regular_market_hours, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_system_event_end_of_system_hoursKey = "is_system_event_end_of_system_hours";
	node = json_object_get_member(pJsonObject, is_system_event_end_of_system_hoursKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_system_event_end_of_system_hours, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_system_event_end_of_messagesKey = "is_system_event_end_of_messages";
	node = json_object_get_member(pJsonObject, is_system_event_end_of_messagesKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_system_event_end_of_messages, node, "bool", "");
		} else {
			
		}
	}
}

Admin.SystemEventModel::Admin.SystemEventModel(char* json)
{
	this->fromJson(json);
}

char*
Admin.SystemEventModel::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
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
		int obj = getSystemEvent();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *system_eventKey = "system_event";
	json_object_set_member(pJsonObject, system_eventKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSystemEventCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *system_event_codeKey = "system_event_code";
	json_object_set_member(pJsonObject, system_event_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSystemEventText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *system_event_textKey = "system_event_text";
	json_object_set_member(pJsonObject, system_event_textKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsSystemEventStartOfMessages();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_system_event_start_of_messagesKey = "is_system_event_start_of_messages";
	json_object_set_member(pJsonObject, is_system_event_start_of_messagesKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsSystemEventStartOfSystemHours();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_system_event_start_of_system_hoursKey = "is_system_event_start_of_system_hours";
	json_object_set_member(pJsonObject, is_system_event_start_of_system_hoursKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsSystemEventStartOfRegularMarketHours();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_system_event_start_of_regular_market_hoursKey = "is_system_event_start_of_regular_market_hours";
	json_object_set_member(pJsonObject, is_system_event_start_of_regular_market_hoursKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsSystemEventEndOfRegularMarketHours();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_system_event_end_of_regular_market_hoursKey = "is_system_event_end_of_regular_market_hours";
	json_object_set_member(pJsonObject, is_system_event_end_of_regular_market_hoursKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsSystemEventEndOfSystemHours();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_system_event_end_of_system_hoursKey = "is_system_event_end_of_system_hours";
	json_object_set_member(pJsonObject, is_system_event_end_of_system_hoursKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsSystemEventEndOfMessages();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_system_event_end_of_messagesKey = "is_system_event_end_of_messages";
	json_object_set_member(pJsonObject, is_system_event_end_of_messagesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

long long
Admin.SystemEventModel::getTimestampNanos()
{
	return timestamp_nanos;
}

void
Admin.SystemEventModel::setTimestampNanos(long long  timestamp_nanos)
{
	this->timestamp_nanos = timestamp_nanos;
}

std::string
Admin.SystemEventModel::getTimestamp()
{
	return timestamp;
}

void
Admin.SystemEventModel::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

int
Admin.SystemEventModel::getSystemEvent()
{
	return system_event;
}

void
Admin.SystemEventModel::setSystemEvent(int  system_event)
{
	this->system_event = system_event;
}

std::string
Admin.SystemEventModel::getSystemEventCode()
{
	return system_event_code;
}

void
Admin.SystemEventModel::setSystemEventCode(std::string  system_event_code)
{
	this->system_event_code = system_event_code;
}

std::string
Admin.SystemEventModel::getSystemEventText()
{
	return system_event_text;
}

void
Admin.SystemEventModel::setSystemEventText(std::string  system_event_text)
{
	this->system_event_text = system_event_text;
}

bool
Admin.SystemEventModel::getIsSystemEventStartOfMessages()
{
	return is_system_event_start_of_messages;
}

void
Admin.SystemEventModel::setIsSystemEventStartOfMessages(bool  is_system_event_start_of_messages)
{
	this->is_system_event_start_of_messages = is_system_event_start_of_messages;
}

bool
Admin.SystemEventModel::getIsSystemEventStartOfSystemHours()
{
	return is_system_event_start_of_system_hours;
}

void
Admin.SystemEventModel::setIsSystemEventStartOfSystemHours(bool  is_system_event_start_of_system_hours)
{
	this->is_system_event_start_of_system_hours = is_system_event_start_of_system_hours;
}

bool
Admin.SystemEventModel::getIsSystemEventStartOfRegularMarketHours()
{
	return is_system_event_start_of_regular_market_hours;
}

void
Admin.SystemEventModel::setIsSystemEventStartOfRegularMarketHours(bool  is_system_event_start_of_regular_market_hours)
{
	this->is_system_event_start_of_regular_market_hours = is_system_event_start_of_regular_market_hours;
}

bool
Admin.SystemEventModel::getIsSystemEventEndOfRegularMarketHours()
{
	return is_system_event_end_of_regular_market_hours;
}

void
Admin.SystemEventModel::setIsSystemEventEndOfRegularMarketHours(bool  is_system_event_end_of_regular_market_hours)
{
	this->is_system_event_end_of_regular_market_hours = is_system_event_end_of_regular_market_hours;
}

bool
Admin.SystemEventModel::getIsSystemEventEndOfSystemHours()
{
	return is_system_event_end_of_system_hours;
}

void
Admin.SystemEventModel::setIsSystemEventEndOfSystemHours(bool  is_system_event_end_of_system_hours)
{
	this->is_system_event_end_of_system_hours = is_system_event_end_of_system_hours;
}

bool
Admin.SystemEventModel::getIsSystemEventEndOfMessages()
{
	return is_system_event_end_of_messages;
}

void
Admin.SystemEventModel::setIsSystemEventEndOfMessages(bool  is_system_event_end_of_messages)
{
	this->is_system_event_end_of_messages = is_system_event_end_of_messages;
}


