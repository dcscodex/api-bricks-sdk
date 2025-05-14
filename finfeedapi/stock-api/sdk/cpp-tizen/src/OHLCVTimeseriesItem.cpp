#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "OHLCV.TimeseriesItem.h"

using namespace std;
using namespace Tizen::ArtikCloud;

OHLCV.TimeseriesItem::OHLCV.TimeseriesItem()
{
	//__init();
}

OHLCV.TimeseriesItem::~OHLCV.TimeseriesItem()
{
	//__cleanup();
}

void
OHLCV.TimeseriesItem::__init()
{
	//time_period_start = null;
	//time_period_end = null;
	//time_open = null;
	//time_close = null;
	//price_open = double(0);
	//price_high = double(0);
	//price_low = double(0);
	//price_close = double(0);
	//volume_traded = double(0);
	//trades_count = long(0);
}

void
OHLCV.TimeseriesItem::__cleanup()
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
	//if(price_open != NULL) {
	//
	//delete price_open;
	//price_open = NULL;
	//}
	//if(price_high != NULL) {
	//
	//delete price_high;
	//price_high = NULL;
	//}
	//if(price_low != NULL) {
	//
	//delete price_low;
	//price_low = NULL;
	//}
	//if(price_close != NULL) {
	//
	//delete price_close;
	//price_close = NULL;
	//}
	//if(volume_traded != NULL) {
	//
	//delete volume_traded;
	//volume_traded = NULL;
	//}
	//if(trades_count != NULL) {
	//
	//delete trades_count;
	//trades_count = NULL;
	//}
	//
}

void
OHLCV.TimeseriesItem::fromJson(char* jsonStr)
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
	const gchar *price_openKey = "price_open";
	node = json_object_get_member(pJsonObject, price_openKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&price_open, node, "double", "");
		} else {
			
		}
	}
	const gchar *price_highKey = "price_high";
	node = json_object_get_member(pJsonObject, price_highKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&price_high, node, "double", "");
		} else {
			
		}
	}
	const gchar *price_lowKey = "price_low";
	node = json_object_get_member(pJsonObject, price_lowKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&price_low, node, "double", "");
		} else {
			
		}
	}
	const gchar *price_closeKey = "price_close";
	node = json_object_get_member(pJsonObject, price_closeKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&price_close, node, "double", "");
		} else {
			
		}
	}
	const gchar *volume_tradedKey = "volume_traded";
	node = json_object_get_member(pJsonObject, volume_tradedKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&volume_traded, node, "double", "");
		} else {
			
		}
	}
	const gchar *trades_countKey = "trades_count";
	node = json_object_get_member(pJsonObject, trades_countKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&trades_count, node, "long long", "");
		} else {
			
		}
	}
}

OHLCV.TimeseriesItem::OHLCV.TimeseriesItem(char* json)
{
	this->fromJson(json);
}

char*
OHLCV.TimeseriesItem::toJson()
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
		double obj = getPriceOpen();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *price_openKey = "price_open";
	json_object_set_member(pJsonObject, price_openKey, node);
	if (isprimitive("double")) {
		double obj = getPriceHigh();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *price_highKey = "price_high";
	json_object_set_member(pJsonObject, price_highKey, node);
	if (isprimitive("double")) {
		double obj = getPriceLow();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *price_lowKey = "price_low";
	json_object_set_member(pJsonObject, price_lowKey, node);
	if (isprimitive("double")) {
		double obj = getPriceClose();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *price_closeKey = "price_close";
	json_object_set_member(pJsonObject, price_closeKey, node);
	if (isprimitive("double")) {
		double obj = getVolumeTraded();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *volume_tradedKey = "volume_traded";
	json_object_set_member(pJsonObject, volume_tradedKey, node);
	if (isprimitive("long long")) {
		long long obj = getTradesCount();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *trades_countKey = "trades_count";
	json_object_set_member(pJsonObject, trades_countKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
OHLCV.TimeseriesItem::getTimePeriodStart()
{
	return time_period_start;
}

void
OHLCV.TimeseriesItem::setTimePeriodStart(std::string  time_period_start)
{
	this->time_period_start = time_period_start;
}

std::string
OHLCV.TimeseriesItem::getTimePeriodEnd()
{
	return time_period_end;
}

void
OHLCV.TimeseriesItem::setTimePeriodEnd(std::string  time_period_end)
{
	this->time_period_end = time_period_end;
}

std::string
OHLCV.TimeseriesItem::getTimeOpen()
{
	return time_open;
}

void
OHLCV.TimeseriesItem::setTimeOpen(std::string  time_open)
{
	this->time_open = time_open;
}

std::string
OHLCV.TimeseriesItem::getTimeClose()
{
	return time_close;
}

void
OHLCV.TimeseriesItem::setTimeClose(std::string  time_close)
{
	this->time_close = time_close;
}

double
OHLCV.TimeseriesItem::getPriceOpen()
{
	return price_open;
}

void
OHLCV.TimeseriesItem::setPriceOpen(double  price_open)
{
	this->price_open = price_open;
}

double
OHLCV.TimeseriesItem::getPriceHigh()
{
	return price_high;
}

void
OHLCV.TimeseriesItem::setPriceHigh(double  price_high)
{
	this->price_high = price_high;
}

double
OHLCV.TimeseriesItem::getPriceLow()
{
	return price_low;
}

void
OHLCV.TimeseriesItem::setPriceLow(double  price_low)
{
	this->price_low = price_low;
}

double
OHLCV.TimeseriesItem::getPriceClose()
{
	return price_close;
}

void
OHLCV.TimeseriesItem::setPriceClose(double  price_close)
{
	this->price_close = price_close;
}

double
OHLCV.TimeseriesItem::getVolumeTraded()
{
	return volume_traded;
}

void
OHLCV.TimeseriesItem::setVolumeTraded(double  volume_traded)
{
	this->volume_traded = volume_traded;
}

long long
OHLCV.TimeseriesItem::getTradesCount()
{
	return trades_count;
}

void
OHLCV.TimeseriesItem::setTradesCount(long long  trades_count)
{
	this->trades_count = trades_count;
}


