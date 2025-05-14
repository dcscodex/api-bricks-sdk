#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Indexes.IndexTimeseriesItem.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Indexes.IndexTimeseriesItem::Indexes.IndexTimeseriesItem()
{
	//__init();
}

Indexes.IndexTimeseriesItem::~Indexes.IndexTimeseriesItem()
{
	//__cleanup();
}

void
Indexes.IndexTimeseriesItem::__init()
{
	//time_period_start = null;
	//time_period_end = null;
	//time_open = null;
	//time_close = null;
	//value_open = double(0);
	//value_high = double(0);
	//value_low = double(0);
	//value_close = double(0);
	//value_count = long(0);
}

void
Indexes.IndexTimeseriesItem::__cleanup()
{
	//if(time_period_start != NULL) {
	//
	//delete time_period_start;
	//time_period_start = NULL;
	//}
	//if(time_period_end != NULL) {
	//
	//delete time_period_end;
	//time_period_end = NULL;
	//}
	//if(time_open != NULL) {
	//
	//delete time_open;
	//time_open = NULL;
	//}
	//if(time_close != NULL) {
	//
	//delete time_close;
	//time_close = NULL;
	//}
	//if(value_open != NULL) {
	//
	//delete value_open;
	//value_open = NULL;
	//}
	//if(value_high != NULL) {
	//
	//delete value_high;
	//value_high = NULL;
	//}
	//if(value_low != NULL) {
	//
	//delete value_low;
	//value_low = NULL;
	//}
	//if(value_close != NULL) {
	//
	//delete value_close;
	//value_close = NULL;
	//}
	//if(value_count != NULL) {
	//
	//delete value_count;
	//value_count = NULL;
	//}
	//
}

void
Indexes.IndexTimeseriesItem::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *time_period_startKey = "time_period_start";
	node = json_object_get_member(pJsonObject, time_period_startKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&time_period_start, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *time_period_endKey = "time_period_end";
	node = json_object_get_member(pJsonObject, time_period_endKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&time_period_end, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *time_openKey = "time_open";
	node = json_object_get_member(pJsonObject, time_openKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&time_open, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *time_closeKey = "time_close";
	node = json_object_get_member(pJsonObject, time_closeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&time_close, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *value_openKey = "value_open";
	node = json_object_get_member(pJsonObject, value_openKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&value_open, node, "double", "");
		} else {
			
		}
	}
	const gchar *value_highKey = "value_high";
	node = json_object_get_member(pJsonObject, value_highKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&value_high, node, "double", "");
		} else {
			
		}
	}
	const gchar *value_lowKey = "value_low";
	node = json_object_get_member(pJsonObject, value_lowKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&value_low, node, "double", "");
		} else {
			
		}
	}
	const gchar *value_closeKey = "value_close";
	node = json_object_get_member(pJsonObject, value_closeKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&value_close, node, "double", "");
		} else {
			
		}
	}
	const gchar *value_countKey = "value_count";
	node = json_object_get_member(pJsonObject, value_countKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&value_count, node, "long long", "");
		} else {
			
		}
	}
}

Indexes.IndexTimeseriesItem::Indexes.IndexTimeseriesItem(char* json)
{
	this->fromJson(json);
}

char*
Indexes.IndexTimeseriesItem::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getTimePeriodStart();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *time_period_startKey = "time_period_start";
	json_object_set_member(pJsonObject, time_period_startKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimePeriodEnd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *time_period_endKey = "time_period_end";
	json_object_set_member(pJsonObject, time_period_endKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimeOpen();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *time_openKey = "time_open";
	json_object_set_member(pJsonObject, time_openKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimeClose();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *time_closeKey = "time_close";
	json_object_set_member(pJsonObject, time_closeKey, node);
	if (isprimitive("double")) {
		double obj = getValueOpen();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *value_openKey = "value_open";
	json_object_set_member(pJsonObject, value_openKey, node);
	if (isprimitive("double")) {
		double obj = getValueHigh();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *value_highKey = "value_high";
	json_object_set_member(pJsonObject, value_highKey, node);
	if (isprimitive("double")) {
		double obj = getValueLow();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *value_lowKey = "value_low";
	json_object_set_member(pJsonObject, value_lowKey, node);
	if (isprimitive("double")) {
		double obj = getValueClose();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *value_closeKey = "value_close";
	json_object_set_member(pJsonObject, value_closeKey, node);
	if (isprimitive("long long")) {
		long long obj = getValueCount();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *value_countKey = "value_count";
	json_object_set_member(pJsonObject, value_countKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Indexes.IndexTimeseriesItem::getTimePeriodStart()
{
	return time_period_start;
}

void
Indexes.IndexTimeseriesItem::setTimePeriodStart(std::string  time_period_start)
{
	this->time_period_start = time_period_start;
}

std::string
Indexes.IndexTimeseriesItem::getTimePeriodEnd()
{
	return time_period_end;
}

void
Indexes.IndexTimeseriesItem::setTimePeriodEnd(std::string  time_period_end)
{
	this->time_period_end = time_period_end;
}

std::string
Indexes.IndexTimeseriesItem::getTimeOpen()
{
	return time_open;
}

void
Indexes.IndexTimeseriesItem::setTimeOpen(std::string  time_open)
{
	this->time_open = time_open;
}

std::string
Indexes.IndexTimeseriesItem::getTimeClose()
{
	return time_close;
}

void
Indexes.IndexTimeseriesItem::setTimeClose(std::string  time_close)
{
	this->time_close = time_close;
}

double
Indexes.IndexTimeseriesItem::getValueOpen()
{
	return value_open;
}

void
Indexes.IndexTimeseriesItem::setValueOpen(double  value_open)
{
	this->value_open = value_open;
}

double
Indexes.IndexTimeseriesItem::getValueHigh()
{
	return value_high;
}

void
Indexes.IndexTimeseriesItem::setValueHigh(double  value_high)
{
	this->value_high = value_high;
}

double
Indexes.IndexTimeseriesItem::getValueLow()
{
	return value_low;
}

void
Indexes.IndexTimeseriesItem::setValueLow(double  value_low)
{
	this->value_low = value_low;
}

double
Indexes.IndexTimeseriesItem::getValueClose()
{
	return value_close;
}

void
Indexes.IndexTimeseriesItem::setValueClose(double  value_close)
{
	this->value_close = value_close;
}

long long
Indexes.IndexTimeseriesItem::getValueCount()
{
	return value_count;
}

void
Indexes.IndexTimeseriesItem::setValueCount(long long  value_count)
{
	this->value_count = value_count;
}


