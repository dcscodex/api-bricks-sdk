#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.Quote.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.Quote::V1.Quote()
{
	//__init();
}

V1.Quote::~V1.Quote()
{
	//__cleanup();
}

void
V1.Quote::__init()
{
	//symbol_id = std::string();
	//time_exchange = null;
	//time_coinapi = null;
	//ask_price = double(0);
	//ask_size = double(0);
	//bid_price = double(0);
	//bid_size = double(0);
}

void
V1.Quote::__cleanup()
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
	//if(ask_price != NULL) {
	//
	//delete ask_price;
	//ask_price = NULL;
	//}
	//if(ask_size != NULL) {
	//
	//delete ask_size;
	//ask_size = NULL;
	//}
	//if(bid_price != NULL) {
	//
	//delete bid_price;
	//bid_price = NULL;
	//}
	//if(bid_size != NULL) {
	//
	//delete bid_size;
	//bid_size = NULL;
	//}
	//
}

void
V1.Quote::fromJson(char* jsonStr)
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
	const gchar *ask_priceKey = "ask_price";
	node = json_object_get_member(pJsonObject, ask_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&ask_price, node, "double", "");
		} else {
			
		}
	}
	const gchar *ask_sizeKey = "ask_size";
	node = json_object_get_member(pJsonObject, ask_sizeKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&ask_size, node, "double", "");
		} else {
			
		}
	}
	const gchar *bid_priceKey = "bid_price";
	node = json_object_get_member(pJsonObject, bid_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&bid_price, node, "double", "");
		} else {
			
		}
	}
	const gchar *bid_sizeKey = "bid_size";
	node = json_object_get_member(pJsonObject, bid_sizeKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&bid_size, node, "double", "");
		} else {
			
		}
	}
}

V1.Quote::V1.Quote(char* json)
{
	this->fromJson(json);
}

char*
V1.Quote::toJson()
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
	if (isprimitive("double")) {
		double obj = getAskPrice();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *ask_priceKey = "ask_price";
	json_object_set_member(pJsonObject, ask_priceKey, node);
	if (isprimitive("double")) {
		double obj = getAskSize();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *ask_sizeKey = "ask_size";
	json_object_set_member(pJsonObject, ask_sizeKey, node);
	if (isprimitive("double")) {
		double obj = getBidPrice();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *bid_priceKey = "bid_price";
	json_object_set_member(pJsonObject, bid_priceKey, node);
	if (isprimitive("double")) {
		double obj = getBidSize();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *bid_sizeKey = "bid_size";
	json_object_set_member(pJsonObject, bid_sizeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.Quote::getSymbolId()
{
	return symbol_id;
}

void
V1.Quote::setSymbolId(std::string  symbol_id)
{
	this->symbol_id = symbol_id;
}

std::string
V1.Quote::getTimeExchange()
{
	return time_exchange;
}

void
V1.Quote::setTimeExchange(std::string  time_exchange)
{
	this->time_exchange = time_exchange;
}

std::string
V1.Quote::getTimeCoinapi()
{
	return time_coinapi;
}

void
V1.Quote::setTimeCoinapi(std::string  time_coinapi)
{
	this->time_coinapi = time_coinapi;
}

double
V1.Quote::getAskPrice()
{
	return ask_price;
}

void
V1.Quote::setAskPrice(double  ask_price)
{
	this->ask_price = ask_price;
}

double
V1.Quote::getAskSize()
{
	return ask_size;
}

void
V1.Quote::setAskSize(double  ask_size)
{
	this->ask_size = ask_size;
}

double
V1.Quote::getBidPrice()
{
	return bid_price;
}

void
V1.Quote::setBidPrice(double  bid_price)
{
	this->bid_price = bid_price;
}

double
V1.Quote::getBidSize()
{
	return bid_size;
}

void
V1.Quote::setBidSize(double  bid_size)
{
	this->bid_size = bid_size;
}


