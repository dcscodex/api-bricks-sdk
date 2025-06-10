#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.LastTrade.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.LastTrade::V1.LastTrade()
{
	//__init();
}

V1.LastTrade::~V1.LastTrade()
{
	//__cleanup();
}

void
V1.LastTrade::__init()
{
	//time_exchange = null;
	//time_coinapi = null;
	//uuid = std::string();
	//price = double(0);
	//size = double(0);
	//taker_side = std::string();
}

void
V1.LastTrade::__cleanup()
{
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
	//if(uuid != NULL) {
	//
	//delete uuid;
	//uuid = NULL;
	//}
	//if(price != NULL) {
	//
	//delete price;
	//price = NULL;
	//}
	//if(size != NULL) {
	//
	//delete size;
	//size = NULL;
	//}
	//if(taker_side != NULL) {
	//
	//delete taker_side;
	//taker_side = NULL;
	//}
	//
}

void
V1.LastTrade::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
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
	const gchar *uuidKey = "uuid";
	node = json_object_get_member(pJsonObject, uuidKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&uuid, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *priceKey = "price";
	node = json_object_get_member(pJsonObject, priceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&price, node, "double", "");
		} else {
			
		}
	}
	const gchar *sizeKey = "size";
	node = json_object_get_member(pJsonObject, sizeKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&size, node, "double", "");
		} else {
			
		}
	}
	const gchar *taker_sideKey = "taker_side";
	node = json_object_get_member(pJsonObject, taker_sideKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&taker_side, node, "std::string", "");
		} else {
			
		}
	}
}

V1.LastTrade::V1.LastTrade(char* json)
{
	this->fromJson(json);
}

char*
V1.LastTrade::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
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
	if (isprimitive("std::string")) {
		std::string obj = getUuid();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *uuidKey = "uuid";
	json_object_set_member(pJsonObject, uuidKey, node);
	if (isprimitive("double")) {
		double obj = getPrice();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *priceKey = "price";
	json_object_set_member(pJsonObject, priceKey, node);
	if (isprimitive("double")) {
		double obj = getSize();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *sizeKey = "size";
	json_object_set_member(pJsonObject, sizeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTakerSide();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *taker_sideKey = "taker_side";
	json_object_set_member(pJsonObject, taker_sideKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.LastTrade::getTimeExchange()
{
	return time_exchange;
}

void
V1.LastTrade::setTimeExchange(std::string  time_exchange)
{
	this->time_exchange = time_exchange;
}

std::string
V1.LastTrade::getTimeCoinapi()
{
	return time_coinapi;
}

void
V1.LastTrade::setTimeCoinapi(std::string  time_coinapi)
{
	this->time_coinapi = time_coinapi;
}

std::string
V1.LastTrade::getUuid()
{
	return uuid;
}

void
V1.LastTrade::setUuid(std::string  uuid)
{
	this->uuid = uuid;
}

double
V1.LastTrade::getPrice()
{
	return price;
}

void
V1.LastTrade::setPrice(double  price)
{
	this->price = price;
}

double
V1.LastTrade::getSize()
{
	return size;
}

void
V1.LastTrade::setSize(double  size)
{
	this->size = size;
}

std::string
V1.LastTrade::getTakerSide()
{
	return taker_side;
}

void
V1.LastTrade::setTakerSide(std::string  taker_side)
{
	this->taker_side = taker_side;
}


