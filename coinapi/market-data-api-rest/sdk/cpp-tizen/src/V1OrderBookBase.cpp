#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.OrderBookBase.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.OrderBookBase::V1.OrderBookBase()
{
	//__init();
}

V1.OrderBookBase::~V1.OrderBookBase()
{
	//__cleanup();
}

void
V1.OrderBookBase::__init()
{
	//symbol_id = std::string();
	//time_exchange = null;
	//time_coinapi = null;
	//asks = null;
	//bids = null;
}

void
V1.OrderBookBase::__cleanup()
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
	//if(asks != NULL) {
	//
	//delete asks;
	//asks = NULL;
	//}
	//if(bids != NULL) {
	//
	//delete bids;
	//bids = NULL;
	//}
	//
}

void
V1.OrderBookBase::fromJson(char* jsonStr)
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
	const gchar *asksKey = "asks";
	node = json_object_get_member(pJsonObject, asksKey);
	if (node !=NULL) {
	

		if (isprimitive("AnyType")) {
			jsonToValue(&asks, node, "AnyType", "");
		} else {
			
			AnyType* obj = static_cast<AnyType*> (&asks);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *bidsKey = "bids";
	node = json_object_get_member(pJsonObject, bidsKey);
	if (node !=NULL) {
	

		if (isprimitive("AnyType")) {
			jsonToValue(&bids, node, "AnyType", "");
		} else {
			
			AnyType* obj = static_cast<AnyType*> (&bids);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

V1.OrderBookBase::V1.OrderBookBase(char* json)
{
	this->fromJson(json);
}

char*
V1.OrderBookBase::toJson()
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
	if (isprimitive("AnyType")) {
		AnyType obj = getAsks();
		node = converttoJson(&obj, "AnyType", "");
	}
	else {
		
		AnyType obj = static_cast<AnyType> (getAsks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *asksKey = "asks";
	json_object_set_member(pJsonObject, asksKey, node);
	if (isprimitive("AnyType")) {
		AnyType obj = getBids();
		node = converttoJson(&obj, "AnyType", "");
	}
	else {
		
		AnyType obj = static_cast<AnyType> (getBids());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *bidsKey = "bids";
	json_object_set_member(pJsonObject, bidsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.OrderBookBase::getSymbolId()
{
	return symbol_id;
}

void
V1.OrderBookBase::setSymbolId(std::string  symbol_id)
{
	this->symbol_id = symbol_id;
}

std::string
V1.OrderBookBase::getTimeExchange()
{
	return time_exchange;
}

void
V1.OrderBookBase::setTimeExchange(std::string  time_exchange)
{
	this->time_exchange = time_exchange;
}

std::string
V1.OrderBookBase::getTimeCoinapi()
{
	return time_coinapi;
}

void
V1.OrderBookBase::setTimeCoinapi(std::string  time_coinapi)
{
	this->time_coinapi = time_coinapi;
}

AnyType
V1.OrderBookBase::getAsks()
{
	return asks;
}

void
V1.OrderBookBase::setAsks(AnyType  asks)
{
	this->asks = asks;
}

AnyType
V1.OrderBookBase::getBids()
{
	return bids;
}

void
V1.OrderBookBase::setBids(AnyType  bids)
{
	this->bids = bids;
}


