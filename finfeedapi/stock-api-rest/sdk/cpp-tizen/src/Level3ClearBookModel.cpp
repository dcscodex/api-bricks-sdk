#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Level3.ClearBookModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Level3.ClearBookModel::Level3.ClearBookModel()
{
	//__init();
}

Level3.ClearBookModel::~Level3.ClearBookModel()
{
	//__cleanup();
}

void
Level3.ClearBookModel::__init()
{
	//symbol = std::string();
	//timestamp_nanos = long(0);
	//timestamp = null;
}

void
Level3.ClearBookModel::__cleanup()
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
	//
}

void
Level3.ClearBookModel::fromJson(char* jsonStr)
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
}

Level3.ClearBookModel::Level3.ClearBookModel(char* json)
{
	this->fromJson(json);
}

char*
Level3.ClearBookModel::toJson()
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Level3.ClearBookModel::getSymbol()
{
	return symbol;
}

void
Level3.ClearBookModel::setSymbol(std::string  symbol)
{
	this->symbol = symbol;
}

long long
Level3.ClearBookModel::getTimestampNanos()
{
	return timestamp_nanos;
}

void
Level3.ClearBookModel::setTimestampNanos(long long  timestamp_nanos)
{
	this->timestamp_nanos = timestamp_nanos;
}

std::string
Level3.ClearBookModel::getTimestamp()
{
	return timestamp;
}

void
Level3.ClearBookModel::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}


