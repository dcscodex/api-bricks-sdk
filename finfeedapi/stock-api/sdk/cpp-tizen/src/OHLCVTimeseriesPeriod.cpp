#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "OHLCV.TimeseriesPeriod.h"

using namespace std;
using namespace Tizen::ArtikCloud;

OHLCV.TimeseriesPeriod::OHLCV.TimeseriesPeriod()
{
	//__init();
}

OHLCV.TimeseriesPeriod::~OHLCV.TimeseriesPeriod()
{
	//__cleanup();
}

void
OHLCV.TimeseriesPeriod::__init()
{
	//period_id = std::string();
	//length_seconds = int(0);
	//length_months = int(0);
	//unit_count = int(0);
	//unit_name = std::string();
	//display_name = std::string();
}

void
OHLCV.TimeseriesPeriod::__cleanup()
{
	//if(period_id != NULL) {
	//
	//delete period_id;
	//period_id = NULL;
	//}
	//if(length_seconds != NULL) {
	//
	//delete length_seconds;
	//length_seconds = NULL;
	//}
	//if(length_months != NULL) {
	//
	//delete length_months;
	//length_months = NULL;
	//}
	//if(unit_count != NULL) {
	//
	//delete unit_count;
	//unit_count = NULL;
	//}
	//if(unit_name != NULL) {
	//
	//delete unit_name;
	//unit_name = NULL;
	//}
	//if(display_name != NULL) {
	//
	//delete display_name;
	//display_name = NULL;
	//}
	//
}

void
OHLCV.TimeseriesPeriod::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *period_idKey = "period_id";
	node = json_object_get_member(pJsonObject, period_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&period_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *length_secondsKey = "length_seconds";
	node = json_object_get_member(pJsonObject, length_secondsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&length_seconds, node, "int", "");
		} else {
			
		}
	}
	const gchar *length_monthsKey = "length_months";
	node = json_object_get_member(pJsonObject, length_monthsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&length_months, node, "int", "");
		} else {
			
		}
	}
	const gchar *unit_countKey = "unit_count";
	node = json_object_get_member(pJsonObject, unit_countKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&unit_count, node, "int", "");
		} else {
			
		}
	}
	const gchar *unit_nameKey = "unit_name";
	node = json_object_get_member(pJsonObject, unit_nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&unit_name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *display_nameKey = "display_name";
	node = json_object_get_member(pJsonObject, display_nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&display_name, node, "std::string", "");
		} else {
			
		}
	}
}

OHLCV.TimeseriesPeriod::OHLCV.TimeseriesPeriod(char* json)
{
	this->fromJson(json);
}

char*
OHLCV.TimeseriesPeriod::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getPeriodId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *period_idKey = "period_id";
	json_object_set_member(pJsonObject, period_idKey, node);
	if (isprimitive("int")) {
		int obj = getLengthSeconds();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *length_secondsKey = "length_seconds";
	json_object_set_member(pJsonObject, length_secondsKey, node);
	if (isprimitive("int")) {
		int obj = getLengthMonths();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *length_monthsKey = "length_months";
	json_object_set_member(pJsonObject, length_monthsKey, node);
	if (isprimitive("int")) {
		int obj = getUnitCount();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *unit_countKey = "unit_count";
	json_object_set_member(pJsonObject, unit_countKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUnitName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *unit_nameKey = "unit_name";
	json_object_set_member(pJsonObject, unit_nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDisplayName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *display_nameKey = "display_name";
	json_object_set_member(pJsonObject, display_nameKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
OHLCV.TimeseriesPeriod::getPeriodId()
{
	return period_id;
}

void
OHLCV.TimeseriesPeriod::setPeriodId(std::string  period_id)
{
	this->period_id = period_id;
}

int
OHLCV.TimeseriesPeriod::getLengthSeconds()
{
	return length_seconds;
}

void
OHLCV.TimeseriesPeriod::setLengthSeconds(int  length_seconds)
{
	this->length_seconds = length_seconds;
}

int
OHLCV.TimeseriesPeriod::getLengthMonths()
{
	return length_months;
}

void
OHLCV.TimeseriesPeriod::setLengthMonths(int  length_months)
{
	this->length_months = length_months;
}

int
OHLCV.TimeseriesPeriod::getUnitCount()
{
	return unit_count;
}

void
OHLCV.TimeseriesPeriod::setUnitCount(int  unit_count)
{
	this->unit_count = unit_count;
}

std::string
OHLCV.TimeseriesPeriod::getUnitName()
{
	return unit_name;
}

void
OHLCV.TimeseriesPeriod::setUnitName(std::string  unit_name)
{
	this->unit_name = unit_name;
}

std::string
OHLCV.TimeseriesPeriod::getDisplayName()
{
	return display_name;
}

void
OHLCV.TimeseriesPeriod::setDisplayName(std::string  display_name)
{
	this->display_name = display_name;
}


