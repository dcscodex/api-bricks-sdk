#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Position_data.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Position_data::Position_data()
{
	//__init();
}

Position_data::~Position_data()
{
	//__cleanup();
}

void
Position_data::__init()
{
	//id = std::string();
	//symbol_exchange = std::string();
	//symbol_coinapi = std::string();
	//avg_entry_price = double(0);
	//quantity = double(0);
	//is_buy = bool(false);
	//unrealised_pn_l = double(0);
	//leverage = double(0);
	//cross_margin = bool(false);
	//liquidation_price = double(0);
	//raw_data = std::string();
}

void
Position_data::__cleanup()
{
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(symbol_exchange != NULL) {
	//
	//delete symbol_exchange;
	//symbol_exchange = NULL;
	//}
	//if(symbol_coinapi != NULL) {
	//
	//delete symbol_coinapi;
	//symbol_coinapi = NULL;
	//}
	//if(avg_entry_price != NULL) {
	//
	//delete avg_entry_price;
	//avg_entry_price = NULL;
	//}
	//if(quantity != NULL) {
	//
	//delete quantity;
	//quantity = NULL;
	//}
	//if(is_buy != NULL) {
	//
	//delete is_buy;
	//is_buy = NULL;
	//}
	//if(unrealised_pn_l != NULL) {
	//
	//delete unrealised_pn_l;
	//unrealised_pn_l = NULL;
	//}
	//if(leverage != NULL) {
	//
	//delete leverage;
	//leverage = NULL;
	//}
	//if(cross_margin != NULL) {
	//
	//delete cross_margin;
	//cross_margin = NULL;
	//}
	//if(liquidation_price != NULL) {
	//
	//delete liquidation_price;
	//liquidation_price = NULL;
	//}
	//if(raw_data != NULL) {
	//
	//delete raw_data;
	//raw_data = NULL;
	//}
	//
}

void
Position_data::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *symbol_exchangeKey = "symbol_exchange";
	node = json_object_get_member(pJsonObject, symbol_exchangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol_exchange, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *symbol_coinapiKey = "symbol_coinapi";
	node = json_object_get_member(pJsonObject, symbol_coinapiKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol_coinapi, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *avg_entry_priceKey = "avg_entry_price";
	node = json_object_get_member(pJsonObject, avg_entry_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&avg_entry_price, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&avg_entry_price);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *quantityKey = "quantity";
	node = json_object_get_member(pJsonObject, quantityKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&quantity, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&quantity);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *is_buyKey = "is_buy";
	node = json_object_get_member(pJsonObject, is_buyKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_buy, node, "bool", "");
		} else {
			
		}
	}
	const gchar *unrealised_pn_lKey = "unrealised_pn_l";
	node = json_object_get_member(pJsonObject, unrealised_pn_lKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&unrealised_pn_l, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&unrealised_pn_l);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *leverageKey = "leverage";
	node = json_object_get_member(pJsonObject, leverageKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&leverage, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&leverage);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *cross_marginKey = "cross_margin";
	node = json_object_get_member(pJsonObject, cross_marginKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&cross_margin, node, "bool", "");
		} else {
			
		}
	}
	const gchar *liquidation_priceKey = "liquidation_price";
	node = json_object_get_member(pJsonObject, liquidation_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&liquidation_price, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&liquidation_price);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *raw_dataKey = "raw_data";
	node = json_object_get_member(pJsonObject, raw_dataKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&raw_data, node, "std::string", "");
		} else {
			
		}
	}
}

Position_data::Position_data(char* json)
{
	this->fromJson(json);
}

char*
Position_data::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSymbolExchange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbol_exchangeKey = "symbol_exchange";
	json_object_set_member(pJsonObject, symbol_exchangeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSymbolCoinapi();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbol_coinapiKey = "symbol_coinapi";
	json_object_set_member(pJsonObject, symbol_coinapiKey, node);
	if (isprimitive("long long")) {
		long long obj = getAvgEntryPrice();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getAvgEntryPrice());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *avg_entry_priceKey = "avg_entry_price";
	json_object_set_member(pJsonObject, avg_entry_priceKey, node);
	if (isprimitive("long long")) {
		long long obj = getQuantity();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getQuantity());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *quantityKey = "quantity";
	json_object_set_member(pJsonObject, quantityKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsBuy();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_buyKey = "is_buy";
	json_object_set_member(pJsonObject, is_buyKey, node);
	if (isprimitive("long long")) {
		long long obj = getUnrealisedPnL();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getUnrealisedPnL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *unrealised_pn_lKey = "unrealised_pn_l";
	json_object_set_member(pJsonObject, unrealised_pn_lKey, node);
	if (isprimitive("long long")) {
		long long obj = getLeverage();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getLeverage());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *leverageKey = "leverage";
	json_object_set_member(pJsonObject, leverageKey, node);
	if (isprimitive("bool")) {
		bool obj = getCrossMargin();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *cross_marginKey = "cross_margin";
	json_object_set_member(pJsonObject, cross_marginKey, node);
	if (isprimitive("long long")) {
		long long obj = getLiquidationPrice();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getLiquidationPrice());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *liquidation_priceKey = "liquidation_price";
	json_object_set_member(pJsonObject, liquidation_priceKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRawData();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *raw_dataKey = "raw_data";
	json_object_set_member(pJsonObject, raw_dataKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Position_data::getId()
{
	return id;
}

void
Position_data::setId(std::string  id)
{
	this->id = id;
}

std::string
Position_data::getSymbolExchange()
{
	return symbol_exchange;
}

void
Position_data::setSymbolExchange(std::string  symbol_exchange)
{
	this->symbol_exchange = symbol_exchange;
}

std::string
Position_data::getSymbolCoinapi()
{
	return symbol_coinapi;
}

void
Position_data::setSymbolCoinapi(std::string  symbol_coinapi)
{
	this->symbol_coinapi = symbol_coinapi;
}

long long
Position_data::getAvgEntryPrice()
{
	return avg_entry_price;
}

void
Position_data::setAvgEntryPrice(long long  avg_entry_price)
{
	this->avg_entry_price = avg_entry_price;
}

long long
Position_data::getQuantity()
{
	return quantity;
}

void
Position_data::setQuantity(long long  quantity)
{
	this->quantity = quantity;
}

bool
Position_data::getIsBuy()
{
	return is_buy;
}

void
Position_data::setIsBuy(bool  is_buy)
{
	this->is_buy = is_buy;
}

long long
Position_data::getUnrealisedPnL()
{
	return unrealised_pn_l;
}

void
Position_data::setUnrealisedPnL(long long  unrealised_pn_l)
{
	this->unrealised_pn_l = unrealised_pn_l;
}

long long
Position_data::getLeverage()
{
	return leverage;
}

void
Position_data::setLeverage(long long  leverage)
{
	this->leverage = leverage;
}

bool
Position_data::getCrossMargin()
{
	return cross_margin;
}

void
Position_data::setCrossMargin(bool  cross_margin)
{
	this->cross_margin = cross_margin;
}

long long
Position_data::getLiquidationPrice()
{
	return liquidation_price;
}

void
Position_data::setLiquidationPrice(long long  liquidation_price)
{
	this->liquidation_price = liquidation_price;
}

std::string
Position_data::getRawData()
{
	return raw_data;
}

void
Position_data::setRawData(std::string  raw_data)
{
	this->raw_data = raw_data;
}


