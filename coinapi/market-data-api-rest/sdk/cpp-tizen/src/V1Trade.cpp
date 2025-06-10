#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.Trade.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.Trade::V1.Trade()
{
	//__init();
}

V1.Trade::~V1.Trade()
{
	//__cleanup();
}

void
V1.Trade::__init()
{
	//symbol_id = std::string();
	//time_exchange = null;
	//time_coinapi = null;
	//uuid = std::string();
	//price = double(0);
	//size = double(0);
	//taker_side = std::string();
	//id_trade = std::string();
	//id_order_maker = std::string();
	//id_order_taker = std::string();
}

void
V1.Trade::__cleanup()
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
	//if(id_trade != NULL) {
	//
	//delete id_trade;
	//id_trade = NULL;
	//}
	//if(id_order_maker != NULL) {
	//
	//delete id_order_maker;
	//id_order_maker = NULL;
	//}
	//if(id_order_taker != NULL) {
	//
	//delete id_order_taker;
	//id_order_taker = NULL;
	//}
	//
}

void
V1.Trade::fromJson(char* jsonStr)
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
	const gchar *id_tradeKey = "id_trade";
	node = json_object_get_member(pJsonObject, id_tradeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id_trade, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *id_order_makerKey = "id_order_maker";
	node = json_object_get_member(pJsonObject, id_order_makerKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id_order_maker, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *id_order_takerKey = "id_order_taker";
	node = json_object_get_member(pJsonObject, id_order_takerKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id_order_taker, node, "std::string", "");
		} else {
			
		}
	}
}

V1.Trade::V1.Trade(char* json)
{
	this->fromJson(json);
}

char*
V1.Trade::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getIdTrade();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *id_tradeKey = "id_trade";
	json_object_set_member(pJsonObject, id_tradeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIdOrderMaker();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *id_order_makerKey = "id_order_maker";
	json_object_set_member(pJsonObject, id_order_makerKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIdOrderTaker();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *id_order_takerKey = "id_order_taker";
	json_object_set_member(pJsonObject, id_order_takerKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.Trade::getSymbolId()
{
	return symbol_id;
}

void
V1.Trade::setSymbolId(std::string  symbol_id)
{
	this->symbol_id = symbol_id;
}

std::string
V1.Trade::getTimeExchange()
{
	return time_exchange;
}

void
V1.Trade::setTimeExchange(std::string  time_exchange)
{
	this->time_exchange = time_exchange;
}

std::string
V1.Trade::getTimeCoinapi()
{
	return time_coinapi;
}

void
V1.Trade::setTimeCoinapi(std::string  time_coinapi)
{
	this->time_coinapi = time_coinapi;
}

std::string
V1.Trade::getUuid()
{
	return uuid;
}

void
V1.Trade::setUuid(std::string  uuid)
{
	this->uuid = uuid;
}

double
V1.Trade::getPrice()
{
	return price;
}

void
V1.Trade::setPrice(double  price)
{
	this->price = price;
}

double
V1.Trade::getSize()
{
	return size;
}

void
V1.Trade::setSize(double  size)
{
	this->size = size;
}

std::string
V1.Trade::getTakerSide()
{
	return taker_side;
}

void
V1.Trade::setTakerSide(std::string  taker_side)
{
	this->taker_side = taker_side;
}

std::string
V1.Trade::getIdTrade()
{
	return id_trade;
}

void
V1.Trade::setIdTrade(std::string  id_trade)
{
	this->id_trade = id_trade;
}

std::string
V1.Trade::getIdOrderMaker()
{
	return id_order_maker;
}

void
V1.Trade::setIdOrderMaker(std::string  id_order_maker)
{
	this->id_order_maker = id_order_maker;
}

std::string
V1.Trade::getIdOrderTaker()
{
	return id_order_taker;
}

void
V1.Trade::setIdOrderTaker(std::string  id_order_taker)
{
	this->id_order_taker = id_order_taker;
}


