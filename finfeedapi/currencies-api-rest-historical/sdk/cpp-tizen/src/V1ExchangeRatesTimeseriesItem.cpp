#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.ExchangeRatesTimeseriesItem.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.ExchangeRatesTimeseriesItem::V1.ExchangeRatesTimeseriesItem()
{
	//__init();
}

V1.ExchangeRatesTimeseriesItem::~V1.ExchangeRatesTimeseriesItem()
{
	//__cleanup();
}

void
V1.ExchangeRatesTimeseriesItem::__init()
{
	//time_period_start = null;
	//time_period_end = null;
	//time_open = null;
	//time_close = null;
	//rate_open = double(0);
	//rate_high = double(0);
	//rate_low = double(0);
	//rate_close = double(0);
}

void
V1.ExchangeRatesTimeseriesItem::__cleanup()
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
	//if(rate_open != NULL) {
	//
	//delete rate_open;
	//rate_open = NULL;
	//}
	//if(rate_high != NULL) {
	//
	//delete rate_high;
	//rate_high = NULL;
	//}
	//if(rate_low != NULL) {
	//
	//delete rate_low;
	//rate_low = NULL;
	//}
	//if(rate_close != NULL) {
	//
	//delete rate_close;
	//rate_close = NULL;
	//}
	//
}

void
V1.ExchangeRatesTimeseriesItem::fromJson(char* jsonStr)
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
	const gchar *rate_openKey = "rate_open";
	node = json_object_get_member(pJsonObject, rate_openKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&rate_open, node, "double", "");
		} else {
			
		}
	}
	const gchar *rate_highKey = "rate_high";
	node = json_object_get_member(pJsonObject, rate_highKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&rate_high, node, "double", "");
		} else {
			
		}
	}
	const gchar *rate_lowKey = "rate_low";
	node = json_object_get_member(pJsonObject, rate_lowKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&rate_low, node, "double", "");
		} else {
			
		}
	}
	const gchar *rate_closeKey = "rate_close";
	node = json_object_get_member(pJsonObject, rate_closeKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&rate_close, node, "double", "");
		} else {
			
		}
	}
}

V1.ExchangeRatesTimeseriesItem::V1.ExchangeRatesTimeseriesItem(char* json)
{
	this->fromJson(json);
}

char*
V1.ExchangeRatesTimeseriesItem::toJson()
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
		double obj = getRateOpen();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *rate_openKey = "rate_open";
	json_object_set_member(pJsonObject, rate_openKey, node);
	if (isprimitive("double")) {
		double obj = getRateHigh();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *rate_highKey = "rate_high";
	json_object_set_member(pJsonObject, rate_highKey, node);
	if (isprimitive("double")) {
		double obj = getRateLow();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *rate_lowKey = "rate_low";
	json_object_set_member(pJsonObject, rate_lowKey, node);
	if (isprimitive("double")) {
		double obj = getRateClose();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *rate_closeKey = "rate_close";
	json_object_set_member(pJsonObject, rate_closeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.ExchangeRatesTimeseriesItem::getTimePeriodStart()
{
	return time_period_start;
}

void
V1.ExchangeRatesTimeseriesItem::setTimePeriodStart(std::string  time_period_start)
{
	this->time_period_start = time_period_start;
}

std::string
V1.ExchangeRatesTimeseriesItem::getTimePeriodEnd()
{
	return time_period_end;
}

void
V1.ExchangeRatesTimeseriesItem::setTimePeriodEnd(std::string  time_period_end)
{
	this->time_period_end = time_period_end;
}

std::string
V1.ExchangeRatesTimeseriesItem::getTimeOpen()
{
	return time_open;
}

void
V1.ExchangeRatesTimeseriesItem::setTimeOpen(std::string  time_open)
{
	this->time_open = time_open;
}

std::string
V1.ExchangeRatesTimeseriesItem::getTimeClose()
{
	return time_close;
}

void
V1.ExchangeRatesTimeseriesItem::setTimeClose(std::string  time_close)
{
	this->time_close = time_close;
}

double
V1.ExchangeRatesTimeseriesItem::getRateOpen()
{
	return rate_open;
}

void
V1.ExchangeRatesTimeseriesItem::setRateOpen(double  rate_open)
{
	this->rate_open = rate_open;
}

double
V1.ExchangeRatesTimeseriesItem::getRateHigh()
{
	return rate_high;
}

void
V1.ExchangeRatesTimeseriesItem::setRateHigh(double  rate_high)
{
	this->rate_high = rate_high;
}

double
V1.ExchangeRatesTimeseriesItem::getRateLow()
{
	return rate_low;
}

void
V1.ExchangeRatesTimeseriesItem::setRateLow(double  rate_low)
{
	this->rate_low = rate_low;
}

double
V1.ExchangeRatesTimeseriesItem::getRateClose()
{
	return rate_close;
}

void
V1.ExchangeRatesTimeseriesItem::setRateClose(double  rate_close)
{
	this->rate_close = rate_close;
}


