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
	//asset_id_exchange = std::string();
	//asset_id_coinapi = std::string();
	//balance = float(0);
	//available = float(0);
	//locked = float(0);
	//last_updated_by = std::string();
	//rate_usd = float(0);
	//traded = float(0);
}

void
Balance_data::__cleanup()
{
	//if(asset_id_exchange != NULL) {
	//
	//delete asset_id_exchange;
	//asset_id_exchange = NULL;
	//}
	//if(asset_id_coinapi != NULL) {
	//
	//delete asset_id_coinapi;
	//asset_id_coinapi = NULL;
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
	//if(last_updated_by != NULL) {
	//
	//delete last_updated_by;
	//last_updated_by = NULL;
	//}
	//if(rate_usd != NULL) {
	//
	//delete rate_usd;
	//rate_usd = NULL;
	//}
	//if(traded != NULL) {
	//
	//delete traded;
	//traded = NULL;
	//}
	//
}

void
Balance_data::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *asset_id_exchangeKey = "asset_id_exchange";
	node = json_object_get_member(pJsonObject, asset_id_exchangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id_exchange, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *asset_id_coinapiKey = "asset_id_coinapi";
	node = json_object_get_member(pJsonObject, asset_id_coinapiKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id_coinapi, node, "std::string", "");
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
	const gchar *last_updated_byKey = "last_updated_by";
	node = json_object_get_member(pJsonObject, last_updated_byKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&last_updated_by, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *rate_usdKey = "rate_usd";
	node = json_object_get_member(pJsonObject, rate_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("float")) {
			jsonToValue(&rate_usd, node, "float", "");
		} else {
			
		}
	}
	const gchar *tradedKey = "traded";
	node = json_object_get_member(pJsonObject, tradedKey);
	if (node !=NULL) {
	

		if (isprimitive("float")) {
			jsonToValue(&traded, node, "float", "");
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
		std::string obj = getAssetIdExchange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_id_exchangeKey = "asset_id_exchange";
	json_object_set_member(pJsonObject, asset_id_exchangeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAssetIdCoinapi();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_id_coinapiKey = "asset_id_coinapi";
	json_object_set_member(pJsonObject, asset_id_coinapiKey, node);
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
		std::string obj = getLastUpdatedBy();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *last_updated_byKey = "last_updated_by";
	json_object_set_member(pJsonObject, last_updated_byKey, node);
	if (isprimitive("float")) {
		float obj = getRateUsd();
		node = converttoJson(&obj, "float", "");
	}
	else {
		
	}
	const gchar *rate_usdKey = "rate_usd";
	json_object_set_member(pJsonObject, rate_usdKey, node);
	if (isprimitive("float")) {
		float obj = getTraded();
		node = converttoJson(&obj, "float", "");
	}
	else {
		
	}
	const gchar *tradedKey = "traded";
	json_object_set_member(pJsonObject, tradedKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Balance_data::getAssetIdExchange()
{
	return asset_id_exchange;
}

void
Balance_data::setAssetIdExchange(std::string  asset_id_exchange)
{
	this->asset_id_exchange = asset_id_exchange;
}

std::string
Balance_data::getAssetIdCoinapi()
{
	return asset_id_coinapi;
}

void
Balance_data::setAssetIdCoinapi(std::string  asset_id_coinapi)
{
	this->asset_id_coinapi = asset_id_coinapi;
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
Balance_data::getLastUpdatedBy()
{
	return last_updated_by;
}

void
Balance_data::setLastUpdatedBy(std::string  last_updated_by)
{
	this->last_updated_by = last_updated_by;
}

float
Balance_data::getRateUsd()
{
	return rate_usd;
}

void
Balance_data::setRateUsd(float  rate_usd)
{
	this->rate_usd = rate_usd;
}

float
Balance_data::getTraded()
{
	return traded;
}

void
Balance_data::setTraded(float  traded)
{
	this->traded = traded;
}


