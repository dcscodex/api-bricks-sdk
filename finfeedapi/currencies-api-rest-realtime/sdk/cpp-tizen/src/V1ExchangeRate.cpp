#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.ExchangeRate.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.ExchangeRate::V1.ExchangeRate()
{
	//__init();
}

V1.ExchangeRate::~V1.ExchangeRate()
{
	//__cleanup();
}

void
V1.ExchangeRate::__init()
{
	//time = null;
	//asset_id_base = std::string();
	//asset_id_quote = std::string();
	//rate = double(0);
}

void
V1.ExchangeRate::__cleanup()
{
	//if(time != NULL) {
	//
	//delete time;
	//time = NULL;
	//}
	//if(asset_id_base != NULL) {
	//
	//delete asset_id_base;
	//asset_id_base = NULL;
	//}
	//if(asset_id_quote != NULL) {
	//
	//delete asset_id_quote;
	//asset_id_quote = NULL;
	//}
	//if(rate != NULL) {
	//
	//delete rate;
	//rate = NULL;
	//}
	//
}

void
V1.ExchangeRate::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *timeKey = "time";
	node = json_object_get_member(pJsonObject, timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&time, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *asset_id_baseKey = "asset_id_base";
	node = json_object_get_member(pJsonObject, asset_id_baseKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id_base, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *asset_id_quoteKey = "asset_id_quote";
	node = json_object_get_member(pJsonObject, asset_id_quoteKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id_quote, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *rateKey = "rate";
	node = json_object_get_member(pJsonObject, rateKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&rate, node, "double", "");
		} else {
			
		}
	}
}

V1.ExchangeRate::V1.ExchangeRate(char* json)
{
	this->fromJson(json);
}

char*
V1.ExchangeRate::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timeKey = "time";
	json_object_set_member(pJsonObject, timeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAssetIdBase();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_id_baseKey = "asset_id_base";
	json_object_set_member(pJsonObject, asset_id_baseKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAssetIdQuote();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_id_quoteKey = "asset_id_quote";
	json_object_set_member(pJsonObject, asset_id_quoteKey, node);
	if (isprimitive("double")) {
		double obj = getRate();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *rateKey = "rate";
	json_object_set_member(pJsonObject, rateKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.ExchangeRate::getTime()
{
	return time;
}

void
V1.ExchangeRate::setTime(std::string  time)
{
	this->time = time;
}

std::string
V1.ExchangeRate::getAssetIdBase()
{
	return asset_id_base;
}

void
V1.ExchangeRate::setAssetIdBase(std::string  asset_id_base)
{
	this->asset_id_base = asset_id_base;
}

std::string
V1.ExchangeRate::getAssetIdQuote()
{
	return asset_id_quote;
}

void
V1.ExchangeRate::setAssetIdQuote(std::string  asset_id_quote)
{
	this->asset_id_quote = asset_id_quote;
}

double
V1.ExchangeRate::getRate()
{
	return rate;
}

void
V1.ExchangeRate::setRate(double  rate)
{
	this->rate = rate;
}


