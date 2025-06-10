#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.OrderBookDepth.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.OrderBookDepth::V1.OrderBookDepth()
{
	//__init();
}

V1.OrderBookDepth::~V1.OrderBookDepth()
{
	//__cleanup();
}

void
V1.OrderBookDepth::__init()
{
	//symbol_id = std::string();
	//time_exchange = null;
	//time_coinapi = null;
	//ask_levels = long(0);
	//bid_levels = long(0);
	//ask_depth = double(0);
	//bid_depth = double(0);
}

void
V1.OrderBookDepth::__cleanup()
{
	//if(symbol_id != NULL) {
	//
	//delete symbol_id;
	//symbol_id = NULL;
	//}
	//if(time_exchange != NULL) {
	//
	//delete time_exchange;
	//time_exchange = NULL;
	//}
	//if(time_coinapi != NULL) {
	//
	//delete time_coinapi;
	//time_coinapi = NULL;
	//}
	//if(ask_levels != NULL) {
	//
	//delete ask_levels;
	//ask_levels = NULL;
	//}
	//if(bid_levels != NULL) {
	//
	//delete bid_levels;
	//bid_levels = NULL;
	//}
	//if(ask_depth != NULL) {
	//
	//delete ask_depth;
	//ask_depth = NULL;
	//}
	//if(bid_depth != NULL) {
	//
	//delete bid_depth;
	//bid_depth = NULL;
	//}
	//
}

void
V1.OrderBookDepth::fromJson(char* jsonStr)
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
	const gchar *time_exchangeKey = "time_exchange";
	node = json_object_get_member(pJsonObject, time_exchangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&time_exchange, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *time_coinapiKey = "time_coinapi";
	node = json_object_get_member(pJsonObject, time_coinapiKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&time_coinapi, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *ask_levelsKey = "ask_levels";
	node = json_object_get_member(pJsonObject, ask_levelsKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&ask_levels, node, "long long", "");
		} else {
			
		}
	}
	const gchar *bid_levelsKey = "bid_levels";
	node = json_object_get_member(pJsonObject, bid_levelsKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&bid_levels, node, "long long", "");
		} else {
			
		}
	}
	const gchar *ask_depthKey = "ask_depth";
	node = json_object_get_member(pJsonObject, ask_depthKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&ask_depth, node, "double", "");
		} else {
			
		}
	}
	const gchar *bid_depthKey = "bid_depth";
	node = json_object_get_member(pJsonObject, bid_depthKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&bid_depth, node, "double", "");
		} else {
			
		}
	}
}

V1.OrderBookDepth::V1.OrderBookDepth(char* json)
{
	this->fromJson(json);
}

char*
V1.OrderBookDepth::toJson()
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
		std::string obj = getTimeExchange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *time_exchangeKey = "time_exchange";
	json_object_set_member(pJsonObject, time_exchangeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimeCoinapi();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *time_coinapiKey = "time_coinapi";
	json_object_set_member(pJsonObject, time_coinapiKey, node);
	if (isprimitive("long long")) {
		long long obj = getAskLevels();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *ask_levelsKey = "ask_levels";
	json_object_set_member(pJsonObject, ask_levelsKey, node);
	if (isprimitive("long long")) {
		long long obj = getBidLevels();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *bid_levelsKey = "bid_levels";
	json_object_set_member(pJsonObject, bid_levelsKey, node);
	if (isprimitive("double")) {
		double obj = getAskDepth();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *ask_depthKey = "ask_depth";
	json_object_set_member(pJsonObject, ask_depthKey, node);
	if (isprimitive("double")) {
		double obj = getBidDepth();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *bid_depthKey = "bid_depth";
	json_object_set_member(pJsonObject, bid_depthKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.OrderBookDepth::getSymbolId()
{
	return symbol_id;
}

void
V1.OrderBookDepth::setSymbolId(std::string  symbol_id)
{
	this->symbol_id = symbol_id;
}

std::string
V1.OrderBookDepth::getTimeExchange()
{
	return time_exchange;
}

void
V1.OrderBookDepth::setTimeExchange(std::string  time_exchange)
{
	this->time_exchange = time_exchange;
}

std::string
V1.OrderBookDepth::getTimeCoinapi()
{
	return time_coinapi;
}

void
V1.OrderBookDepth::setTimeCoinapi(std::string  time_coinapi)
{
	this->time_coinapi = time_coinapi;
}

long long
V1.OrderBookDepth::getAskLevels()
{
	return ask_levels;
}

void
V1.OrderBookDepth::setAskLevels(long long  ask_levels)
{
	this->ask_levels = ask_levels;
}

long long
V1.OrderBookDepth::getBidLevels()
{
	return bid_levels;
}

void
V1.OrderBookDepth::setBidLevels(long long  bid_levels)
{
	this->bid_levels = bid_levels;
}

double
V1.OrderBookDepth::getAskDepth()
{
	return ask_depth;
}

void
V1.OrderBookDepth::setAskDepth(double  ask_depth)
{
	this->ask_depth = ask_depth;
}

double
V1.OrderBookDepth::getBidDepth()
{
	return bid_depth;
}

void
V1.OrderBookDepth::setBidDepth(double  bid_depth)
{
	this->bid_depth = bid_depth;
}


