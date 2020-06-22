#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Balance_data.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Balance_data::Balance_data()
{
	//__init();
}

Balance_data::~Balance_data()
{
	//__cleanup();
}

void
Balance_data::__init()
{
	//id = std::string();
	//symbol_exchange = std::string();
	//symbol_coinapi = std::string();
	//balance = float(0);
	//available = float(0);
	//locked = float(0);
	//update_origin = std::string();
}

void
Balance_data::__cleanup()
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
	//if(balance != NULL) {
	//
	//delete balance;
	//balance = NULL;
	//}
	//if(available != NULL) {
	//
	//delete available;
	//available = NULL;
	//}
	//if(locked != NULL) {
	//
	//delete locked;
	//locked = NULL;
	//}
	//if(update_origin != NULL) {
	//
	//delete update_origin;
	//update_origin = NULL;
	//}
	//
}

void
Balance_data::fromJson(char* jsonStr)
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
	const gchar *balanceKey = "balance";
	node = json_object_get_member(pJsonObject, balanceKey);
	if (node !=NULL) {
	

		if (isprimitive("float")) {
			jsonToValue(&balance, node, "float", "");
		} else {
			
		}
	}
	const gchar *availableKey = "available";
	node = json_object_get_member(pJsonObject, availableKey);
	if (node !=NULL) {
	

		if (isprimitive("float")) {
			jsonToValue(&available, node, "float", "");
		} else {
			
		}
	}
	const gchar *lockedKey = "locked";
	node = json_object_get_member(pJsonObject, lockedKey);
	if (node !=NULL) {
	

		if (isprimitive("float")) {
			jsonToValue(&locked, node, "float", "");
		} else {
			
		}
	}
	const gchar *update_originKey = "update_origin";
	node = json_object_get_member(pJsonObject, update_originKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&update_origin, node, "std::string", "");
		} else {
			
		}
	}
}

Balance_data::Balance_data(char* json)
{
	this->fromJson(json);
}

char*
Balance_data::toJson()
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
	if (isprimitive("float")) {
		float obj = getBalance();
		node = converttoJson(&obj, "float", "");
	}
	else {
		
	}
	const gchar *balanceKey = "balance";
	json_object_set_member(pJsonObject, balanceKey, node);
	if (isprimitive("float")) {
		float obj = getAvailable();
		node = converttoJson(&obj, "float", "");
	}
	else {
		
	}
	const gchar *availableKey = "available";
	json_object_set_member(pJsonObject, availableKey, node);
	if (isprimitive("float")) {
		float obj = getLocked();
		node = converttoJson(&obj, "float", "");
	}
	else {
		
	}
	const gchar *lockedKey = "locked";
	json_object_set_member(pJsonObject, lockedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUpdateOrigin();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *update_originKey = "update_origin";
	json_object_set_member(pJsonObject, update_originKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Balance_data::getId()
{
	return id;
}

void
Balance_data::setId(std::string  id)
{
	this->id = id;
}

std::string
Balance_data::getSymbolExchange()
{
	return symbol_exchange;
}

void
Balance_data::setSymbolExchange(std::string  symbol_exchange)
{
	this->symbol_exchange = symbol_exchange;
}

std::string
Balance_data::getSymbolCoinapi()
{
	return symbol_coinapi;
}

void
Balance_data::setSymbolCoinapi(std::string  symbol_coinapi)
{
	this->symbol_coinapi = symbol_coinapi;
}

float
Balance_data::getBalance()
{
	return balance;
}

void
Balance_data::setBalance(float  balance)
{
	this->balance = balance;
}

float
Balance_data::getAvailable()
{
	return available;
}

void
Balance_data::setAvailable(float  available)
{
	this->available = available;
}

float
Balance_data::getLocked()
{
	return locked;
}

void
Balance_data::setLocked(float  locked)
{
	this->locked = locked;
}

std::string
Balance_data::getUpdateOrigin()
{
	return update_origin;
}

void
Balance_data::setUpdateOrigin(std::string  update_origin)
{
	this->update_origin = update_origin;
}


