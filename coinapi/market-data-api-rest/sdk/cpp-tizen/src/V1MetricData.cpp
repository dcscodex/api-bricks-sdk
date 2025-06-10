#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.MetricData.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.MetricData::V1.MetricData()
{
	//__init();
}

V1.MetricData::~V1.MetricData()
{
	//__cleanup();
}

void
V1.MetricData::__init()
{
	//symbol_id = std::string();
	//time = null;
	//value = double(0);
}

void
V1.MetricData::__cleanup()
{
	//if(symbol_id != NULL) {
	//
	//delete symbol_id;
	//symbol_id = NULL;
	//}
	//if(time != NULL) {
	//
	//delete time;
	//time = NULL;
	//}
	//if(value != NULL) {
	//
	//delete value;
	//value = NULL;
	//}
	//
}

void
V1.MetricData::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *symbol_idKey = "symbol_id";
	node = json_object_get_member(pJsonObject, symbol_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *timeKey = "time";
	node = json_object_get_member(pJsonObject, timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&time, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *valueKey = "value";
	node = json_object_get_member(pJsonObject, valueKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&value, node, "double", "");
		} else {
			
		}
	}
}

V1.MetricData::V1.MetricData(char* json)
{
	this->fromJson(json);
}

char*
V1.MetricData::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getSymbolId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbol_idKey = "symbol_id";
	json_object_set_member(pJsonObject, symbol_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timeKey = "time";
	json_object_set_member(pJsonObject, timeKey, node);
	if (isprimitive("double")) {
		double obj = getValue();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *valueKey = "value";
	json_object_set_member(pJsonObject, valueKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.MetricData::getSymbolId()
{
	return symbol_id;
}

void
V1.MetricData::setSymbolId(std::string  symbol_id)
{
	this->symbol_id = symbol_id;
}

std::string
V1.MetricData::getTime()
{
	return time;
}

void
V1.MetricData::setTime(std::string  time)
{
	this->time = time;
}

double
V1.MetricData::getValue()
{
	return value;
}

void
V1.MetricData::setValue(double  value)
{
	this->value = value;
}


