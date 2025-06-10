#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.ListingItem.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.ListingItem::V1.ListingItem()
{
	//__init();
}

V1.ListingItem::~V1.ListingItem()
{
	//__cleanup();
}

void
V1.ListingItem::__init()
{
	//metric_id = std::string();
	//symbol_id = std::string();
	//symbol_id_external = std::string();
	//exchange_id = std::string();
	//asset_id = std::string();
	//asset_id_external = std::string();
	//chain_id = std::string();
	//network_id = std::string();
}

void
V1.ListingItem::__cleanup()
{
	//if(metric_id != NULL) {
	//
	//delete metric_id;
	//metric_id = NULL;
	//}
	//if(symbol_id != NULL) {
	//
	//delete symbol_id;
	//symbol_id = NULL;
	//}
	//if(symbol_id_external != NULL) {
	//
	//delete symbol_id_external;
	//symbol_id_external = NULL;
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
	//if(asset_id_external != NULL) {
	//
	//delete asset_id_external;
	//asset_id_external = NULL;
	//}
	//if(chain_id != NULL) {
	//
	//delete chain_id;
	//chain_id = NULL;
	//}
	//if(network_id != NULL) {
	//
	//delete network_id;
	//network_id = NULL;
	//}
	//
}

void
V1.ListingItem::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *metric_idKey = "metric_id";
	node = json_object_get_member(pJsonObject, metric_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&metric_id, node, "std::string", "");
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
	const gchar *symbol_id_externalKey = "symbol_id_external";
	node = json_object_get_member(pJsonObject, symbol_id_externalKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol_id_external, node, "std::string", "");
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
	const gchar *asset_id_externalKey = "asset_id_external";
	node = json_object_get_member(pJsonObject, asset_id_externalKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id_external, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *chain_idKey = "chain_id";
	node = json_object_get_member(pJsonObject, chain_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&chain_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *network_idKey = "network_id";
	node = json_object_get_member(pJsonObject, network_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&network_id, node, "std::string", "");
		} else {
			
		}
	}
}

V1.ListingItem::V1.ListingItem(char* json)
{
	this->fromJson(json);
}

char*
V1.ListingItem::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getMetricId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *metric_idKey = "metric_id";
	json_object_set_member(pJsonObject, metric_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSymbolId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbol_idKey = "symbol_id";
	json_object_set_member(pJsonObject, symbol_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSymbolIdExternal();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbol_id_externalKey = "symbol_id_external";
	json_object_set_member(pJsonObject, symbol_id_externalKey, node);
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
		std::string obj = getAssetIdExternal();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_id_externalKey = "asset_id_external";
	json_object_set_member(pJsonObject, asset_id_externalKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getChainId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *chain_idKey = "chain_id";
	json_object_set_member(pJsonObject, chain_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getNetworkId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *network_idKey = "network_id";
	json_object_set_member(pJsonObject, network_idKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.ListingItem::getMetricId()
{
	return metric_id;
}

void
V1.ListingItem::setMetricId(std::string  metric_id)
{
	this->metric_id = metric_id;
}

std::string
V1.ListingItem::getSymbolId()
{
	return symbol_id;
}

void
V1.ListingItem::setSymbolId(std::string  symbol_id)
{
	this->symbol_id = symbol_id;
}

std::string
V1.ListingItem::getSymbolIdExternal()
{
	return symbol_id_external;
}

void
V1.ListingItem::setSymbolIdExternal(std::string  symbol_id_external)
{
	this->symbol_id_external = symbol_id_external;
}

std::string
V1.ListingItem::getExchangeId()
{
	return exchange_id;
}

void
V1.ListingItem::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
V1.ListingItem::getAssetId()
{
	return asset_id;
}

void
V1.ListingItem::setAssetId(std::string  asset_id)
{
	this->asset_id = asset_id;
}

std::string
V1.ListingItem::getAssetIdExternal()
{
	return asset_id_external;
}

void
V1.ListingItem::setAssetIdExternal(std::string  asset_id_external)
{
	this->asset_id_external = asset_id_external;
}

std::string
V1.ListingItem::getChainId()
{
	return chain_id;
}

void
V1.ListingItem::setChainId(std::string  chain_id)
{
	this->chain_id = chain_id;
}

std::string
V1.ListingItem::getNetworkId()
{
	return network_id;
}

void
V1.ListingItem::setNetworkId(std::string  network_id)
{
	this->network_id = network_id;
}


