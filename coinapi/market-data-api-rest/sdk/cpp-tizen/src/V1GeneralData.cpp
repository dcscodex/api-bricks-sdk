#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.GeneralData.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.GeneralData::V1.GeneralData()
{
	//__init();
}

V1.GeneralData::~V1.GeneralData()
{
	//__cleanup();
}

void
V1.GeneralData::__init()
{
	//entry_time = null;
	//recv_time = null;
	//exchange_id = std::string();
	//asset_id = std::string();
	//symbol_id = std::string();
	//metric_id = std::string();
	//value_decimal = double(0);
	//value_text = std::string();
	//value_time = null;
}

void
V1.GeneralData::__cleanup()
{
	//if(entry_time != NULL) {
	//
	//delete entry_time;
	//entry_time = NULL;
	//}
	//if(recv_time != NULL) {
	//
	//delete recv_time;
	//recv_time = NULL;
	//}
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(asset_id != NULL) {
	//
	//delete asset_id;
	//asset_id = NULL;
	//}
	//if(symbol_id != NULL) {
	//
	//delete symbol_id;
	//symbol_id = NULL;
	//}
	//if(metric_id != NULL) {
	//
	//delete metric_id;
	//metric_id = NULL;
	//}
	//if(value_decimal != NULL) {
	//
	//delete value_decimal;
	//value_decimal = NULL;
	//}
	//if(value_text != NULL) {
	//
	//delete value_text;
	//value_text = NULL;
	//}
	//if(value_time != NULL) {
	//
	//delete value_time;
	//value_time = NULL;
	//}
	//
}

void
V1.GeneralData::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *entry_timeKey = "entry_time";
	node = json_object_get_member(pJsonObject, entry_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&entry_time, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *recv_timeKey = "recv_time";
	node = json_object_get_member(pJsonObject, recv_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&recv_time, node, "std::string", "");
		} else {
			
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
	const gchar *asset_idKey = "asset_id";
	node = json_object_get_member(pJsonObject, asset_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *symbol_idKey = "symbol_id";
	node = json_object_get_member(pJsonObject, symbol_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *metric_idKey = "metric_id";
	node = json_object_get_member(pJsonObject, metric_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&metric_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *value_decimalKey = "value_decimal";
	node = json_object_get_member(pJsonObject, value_decimalKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&value_decimal, node, "double", "");
		} else {
			
		}
	}
	const gchar *value_textKey = "value_text";
	node = json_object_get_member(pJsonObject, value_textKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&value_text, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *value_timeKey = "value_time";
	node = json_object_get_member(pJsonObject, value_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&value_time, node, "std::string", "");
		} else {
			
		}
	}
}

V1.GeneralData::V1.GeneralData(char* json)
{
	this->fromJson(json);
}

char*
V1.GeneralData::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getEntryTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *entry_timeKey = "entry_time";
	json_object_set_member(pJsonObject, entry_timeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRecvTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *recv_timeKey = "recv_time";
	json_object_set_member(pJsonObject, recv_timeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getExchangeId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchange_idKey = "exchange_id";
	json_object_set_member(pJsonObject, exchange_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAssetId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_idKey = "asset_id";
	json_object_set_member(pJsonObject, asset_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSymbolId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbol_idKey = "symbol_id";
	json_object_set_member(pJsonObject, symbol_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMetricId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *metric_idKey = "metric_id";
	json_object_set_member(pJsonObject, metric_idKey, node);
	if (isprimitive("double")) {
		double obj = getValueDecimal();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *value_decimalKey = "value_decimal";
	json_object_set_member(pJsonObject, value_decimalKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getValueText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *value_textKey = "value_text";
	json_object_set_member(pJsonObject, value_textKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getValueTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *value_timeKey = "value_time";
	json_object_set_member(pJsonObject, value_timeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.GeneralData::getEntryTime()
{
	return entry_time;
}

void
V1.GeneralData::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
V1.GeneralData::getRecvTime()
{
	return recv_time;
}

void
V1.GeneralData::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

std::string
V1.GeneralData::getExchangeId()
{
	return exchange_id;
}

void
V1.GeneralData::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
V1.GeneralData::getAssetId()
{
	return asset_id;
}

void
V1.GeneralData::setAssetId(std::string  asset_id)
{
	this->asset_id = asset_id;
}

std::string
V1.GeneralData::getSymbolId()
{
	return symbol_id;
}

void
V1.GeneralData::setSymbolId(std::string  symbol_id)
{
	this->symbol_id = symbol_id;
}

std::string
V1.GeneralData::getMetricId()
{
	return metric_id;
}

void
V1.GeneralData::setMetricId(std::string  metric_id)
{
	this->metric_id = metric_id;
}

double
V1.GeneralData::getValueDecimal()
{
	return value_decimal;
}

void
V1.GeneralData::setValueDecimal(double  value_decimal)
{
	this->value_decimal = value_decimal;
}

std::string
V1.GeneralData::getValueText()
{
	return value_text;
}

void
V1.GeneralData::setValueText(std::string  value_text)
{
	this->value_text = value_text;
}

std::string
V1.GeneralData::getValueTime()
{
	return value_time;
}

void
V1.GeneralData::setValueTime(std::string  value_time)
{
	this->value_time = value_time;
}


