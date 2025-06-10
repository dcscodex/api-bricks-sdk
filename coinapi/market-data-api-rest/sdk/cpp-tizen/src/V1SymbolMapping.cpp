#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.SymbolMapping.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.SymbolMapping::V1.SymbolMapping()
{
	//__init();
}

V1.SymbolMapping::~V1.SymbolMapping()
{
	//__cleanup();
}

void
V1.SymbolMapping::__init()
{
	//symbol_id = std::string();
	//symbol_id_exchange = std::string();
	//coinapi_datainfo_id = int(0);
	//asset_id_base_exchange = std::string();
	//asset_id_quote_exchange = std::string();
	//asset_id_base = std::string();
	//asset_id_quote = std::string();
	//price_precision = double(0);
	//size_precision = double(0);
}

void
V1.SymbolMapping::__cleanup()
{
	//if(symbol_id != NULL) {
	//
	//delete symbol_id;
	//symbol_id = NULL;
	//}
	//if(symbol_id_exchange != NULL) {
	//
	//delete symbol_id_exchange;
	//symbol_id_exchange = NULL;
	//}
	//if(coinapi_datainfo_id != NULL) {
	//
	//delete coinapi_datainfo_id;
	//coinapi_datainfo_id = NULL;
	//}
	//if(asset_id_base_exchange != NULL) {
	//
	//delete asset_id_base_exchange;
	//asset_id_base_exchange = NULL;
	//}
	//if(asset_id_quote_exchange != NULL) {
	//
	//delete asset_id_quote_exchange;
	//asset_id_quote_exchange = NULL;
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
	//if(price_precision != NULL) {
	//
	//delete price_precision;
	//price_precision = NULL;
	//}
	//if(size_precision != NULL) {
	//
	//delete size_precision;
	//size_precision = NULL;
	//}
	//
}

void
V1.SymbolMapping::fromJson(char* jsonStr)
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
	const gchar *symbol_id_exchangeKey = "symbol_id_exchange";
	node = json_object_get_member(pJsonObject, symbol_id_exchangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol_id_exchange, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *coinapi_datainfo_idKey = "coinapi_datainfo_id";
	node = json_object_get_member(pJsonObject, coinapi_datainfo_idKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&coinapi_datainfo_id, node, "int", "");
		} else {
			
		}
	}
	const gchar *asset_id_base_exchangeKey = "asset_id_base_exchange";
	node = json_object_get_member(pJsonObject, asset_id_base_exchangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id_base_exchange, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *asset_id_quote_exchangeKey = "asset_id_quote_exchange";
	node = json_object_get_member(pJsonObject, asset_id_quote_exchangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id_quote_exchange, node, "std::string", "");
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
	const gchar *price_precisionKey = "price_precision";
	node = json_object_get_member(pJsonObject, price_precisionKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&price_precision, node, "double", "");
		} else {
			
		}
	}
	const gchar *size_precisionKey = "size_precision";
	node = json_object_get_member(pJsonObject, size_precisionKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&size_precision, node, "double", "");
		} else {
			
		}
	}
}

V1.SymbolMapping::V1.SymbolMapping(char* json)
{
	this->fromJson(json);
}

char*
V1.SymbolMapping::toJson()
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
		std::string obj = getSymbolIdExchange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbol_id_exchangeKey = "symbol_id_exchange";
	json_object_set_member(pJsonObject, symbol_id_exchangeKey, node);
	if (isprimitive("int")) {
		int obj = getCoinapiDatainfoId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *coinapi_datainfo_idKey = "coinapi_datainfo_id";
	json_object_set_member(pJsonObject, coinapi_datainfo_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAssetIdBaseExchange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_id_base_exchangeKey = "asset_id_base_exchange";
	json_object_set_member(pJsonObject, asset_id_base_exchangeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAssetIdQuoteExchange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_id_quote_exchangeKey = "asset_id_quote_exchange";
	json_object_set_member(pJsonObject, asset_id_quote_exchangeKey, node);
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
		double obj = getPricePrecision();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *price_precisionKey = "price_precision";
	json_object_set_member(pJsonObject, price_precisionKey, node);
	if (isprimitive("double")) {
		double obj = getSizePrecision();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *size_precisionKey = "size_precision";
	json_object_set_member(pJsonObject, size_precisionKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.SymbolMapping::getSymbolId()
{
	return symbol_id;
}

void
V1.SymbolMapping::setSymbolId(std::string  symbol_id)
{
	this->symbol_id = symbol_id;
}

std::string
V1.SymbolMapping::getSymbolIdExchange()
{
	return symbol_id_exchange;
}

void
V1.SymbolMapping::setSymbolIdExchange(std::string  symbol_id_exchange)
{
	this->symbol_id_exchange = symbol_id_exchange;
}

int
V1.SymbolMapping::getCoinapiDatainfoId()
{
	return coinapi_datainfo_id;
}

void
V1.SymbolMapping::setCoinapiDatainfoId(int  coinapi_datainfo_id)
{
	this->coinapi_datainfo_id = coinapi_datainfo_id;
}

std::string
V1.SymbolMapping::getAssetIdBaseExchange()
{
	return asset_id_base_exchange;
}

void
V1.SymbolMapping::setAssetIdBaseExchange(std::string  asset_id_base_exchange)
{
	this->asset_id_base_exchange = asset_id_base_exchange;
}

std::string
V1.SymbolMapping::getAssetIdQuoteExchange()
{
	return asset_id_quote_exchange;
}

void
V1.SymbolMapping::setAssetIdQuoteExchange(std::string  asset_id_quote_exchange)
{
	this->asset_id_quote_exchange = asset_id_quote_exchange;
}

std::string
V1.SymbolMapping::getAssetIdBase()
{
	return asset_id_base;
}

void
V1.SymbolMapping::setAssetIdBase(std::string  asset_id_base)
{
	this->asset_id_base = asset_id_base;
}

std::string
V1.SymbolMapping::getAssetIdQuote()
{
	return asset_id_quote;
}

void
V1.SymbolMapping::setAssetIdQuote(std::string  asset_id_quote)
{
	this->asset_id_quote = asset_id_quote;
}

double
V1.SymbolMapping::getPricePrecision()
{
	return price_precision;
}

void
V1.SymbolMapping::setPricePrecision(double  price_precision)
{
	this->price_precision = price_precision;
}

double
V1.SymbolMapping::getSizePrecision()
{
	return size_precision;
}

void
V1.SymbolMapping::setSizePrecision(double  size_precision)
{
	this->size_precision = size_precision;
}


