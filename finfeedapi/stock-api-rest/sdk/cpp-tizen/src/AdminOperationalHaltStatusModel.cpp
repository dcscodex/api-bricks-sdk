#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Admin.OperationalHaltStatusModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Admin.OperationalHaltStatusModel::Admin.OperationalHaltStatusModel()
{
	//__init();
}

Admin.OperationalHaltStatusModel::~Admin.OperationalHaltStatusModel()
{
	//__cleanup();
}

void
Admin.OperationalHaltStatusModel::__init()
{
	//symbol = std::string();
	//timestamp_nanos = long(0);
	//timestamp = null;
	//operational_halt_status = int(0);
	//operational_halt_status_code = std::string();
	//operational_halt_status_text = std::string();
	//is_operationally_halted = bool(false);
	//is_not_operationally_halted = bool(false);
}

void
Admin.OperationalHaltStatusModel::__cleanup()
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
	//if(operational_halt_status != NULL) {
	//
	//delete operational_halt_status;
	//operational_halt_status = NULL;
	//}
	//if(operational_halt_status_code != NULL) {
	//
	//delete operational_halt_status_code;
	//operational_halt_status_code = NULL;
	//}
	//if(operational_halt_status_text != NULL) {
	//
	//delete operational_halt_status_text;
	//operational_halt_status_text = NULL;
	//}
	//if(is_operationally_halted != NULL) {
	//
	//delete is_operationally_halted;
	//is_operationally_halted = NULL;
	//}
	//if(is_not_operationally_halted != NULL) {
	//
	//delete is_not_operationally_halted;
	//is_not_operationally_halted = NULL;
	//}
	//
}

void
Admin.OperationalHaltStatusModel::fromJson(char* jsonStr)
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
	const gchar *operational_halt_statusKey = "operational_halt_status";
	node = json_object_get_member(pJsonObject, operational_halt_statusKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&operational_halt_status, node, "int", "");
		} else {
			
		}
	}
	const gchar *operational_halt_status_codeKey = "operational_halt_status_code";
	node = json_object_get_member(pJsonObject, operational_halt_status_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&operational_halt_status_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *operational_halt_status_textKey = "operational_halt_status_text";
	node = json_object_get_member(pJsonObject, operational_halt_status_textKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&operational_halt_status_text, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *is_operationally_haltedKey = "is_operationally_halted";
	node = json_object_get_member(pJsonObject, is_operationally_haltedKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_operationally_halted, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_not_operationally_haltedKey = "is_not_operationally_halted";
	node = json_object_get_member(pJsonObject, is_not_operationally_haltedKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_not_operationally_halted, node, "bool", "");
		} else {
			
		}
	}
}

Admin.OperationalHaltStatusModel::Admin.OperationalHaltStatusModel(char* json)
{
	this->fromJson(json);
}

char*
Admin.OperationalHaltStatusModel::toJson()
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
		int obj = getOperationalHaltStatus();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *operational_halt_statusKey = "operational_halt_status";
	json_object_set_member(pJsonObject, operational_halt_statusKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOperationalHaltStatusCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *operational_halt_status_codeKey = "operational_halt_status_code";
	json_object_set_member(pJsonObject, operational_halt_status_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOperationalHaltStatusText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *operational_halt_status_textKey = "operational_halt_status_text";
	json_object_set_member(pJsonObject, operational_halt_status_textKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsOperationallyHalted();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_operationally_haltedKey = "is_operationally_halted";
	json_object_set_member(pJsonObject, is_operationally_haltedKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsNotOperationallyHalted();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_not_operationally_haltedKey = "is_not_operationally_halted";
	json_object_set_member(pJsonObject, is_not_operationally_haltedKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Admin.OperationalHaltStatusModel::getSymbol()
{
	return symbol;
}

void
Admin.OperationalHaltStatusModel::setSymbol(std::string  symbol)
{
	this->symbol = symbol;
}

long long
Admin.OperationalHaltStatusModel::getTimestampNanos()
{
	return timestamp_nanos;
}

void
Admin.OperationalHaltStatusModel::setTimestampNanos(long long  timestamp_nanos)
{
	this->timestamp_nanos = timestamp_nanos;
}

std::string
Admin.OperationalHaltStatusModel::getTimestamp()
{
	return timestamp;
}

void
Admin.OperationalHaltStatusModel::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

int
Admin.OperationalHaltStatusModel::getOperationalHaltStatus()
{
	return operational_halt_status;
}

void
Admin.OperationalHaltStatusModel::setOperationalHaltStatus(int  operational_halt_status)
{
	this->operational_halt_status = operational_halt_status;
}

std::string
Admin.OperationalHaltStatusModel::getOperationalHaltStatusCode()
{
	return operational_halt_status_code;
}

void
Admin.OperationalHaltStatusModel::setOperationalHaltStatusCode(std::string  operational_halt_status_code)
{
	this->operational_halt_status_code = operational_halt_status_code;
}

std::string
Admin.OperationalHaltStatusModel::getOperationalHaltStatusText()
{
	return operational_halt_status_text;
}

void
Admin.OperationalHaltStatusModel::setOperationalHaltStatusText(std::string  operational_halt_status_text)
{
	this->operational_halt_status_text = operational_halt_status_text;
}

bool
Admin.OperationalHaltStatusModel::getIsOperationallyHalted()
{
	return is_operationally_halted;
}

void
Admin.OperationalHaltStatusModel::setIsOperationallyHalted(bool  is_operationally_halted)
{
	this->is_operationally_halted = is_operationally_halted;
}

bool
Admin.OperationalHaltStatusModel::getIsNotOperationallyHalted()
{
	return is_not_operationally_halted;
}

void
Admin.OperationalHaltStatusModel::setIsNotOperationallyHalted(bool  is_not_operationally_halted)
{
	this->is_not_operationally_halted = is_not_operationally_halted;
}


