#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "FinFeedAPI.SymbolModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

FinFeedAPI.SymbolModel::FinFeedAPI.SymbolModel()
{
	//__init();
}

FinFeedAPI.SymbolModel::~FinFeedAPI.SymbolModel()
{
	//__cleanup();
}

void
FinFeedAPI.SymbolModel::__init()
{
	//symbol_id = std::string();
	//exchange_id = std::string();
	//security_category = std::string();
	//name = std::string();
	//date = std::string();
	//asset_class = std::string();
}

void
FinFeedAPI.SymbolModel::__cleanup()
{
	//if(symbol_id != NULL) {
	//
	//delete symbol_id;
	//symbol_id = NULL;
	//}
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(security_category != NULL) {
	//
	//delete security_category;
	//security_category = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(date != NULL) {
	//
	//delete date;
	//date = NULL;
	//}
	//if(asset_class != NULL) {
	//
	//delete asset_class;
	//asset_class = NULL;
	//}
	//
}

void
FinFeedAPI.SymbolModel::fromJson(char* jsonStr)
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
	const gchar *exchange_idKey = "exchange_id";
	node = json_object_get_member(pJsonObject, exchange_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchange_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *security_categoryKey = "security_category";
	node = json_object_get_member(pJsonObject, security_categoryKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&security_category, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dateKey = "date";
	node = json_object_get_member(pJsonObject, dateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&date, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *asset_classKey = "asset_class";
	node = json_object_get_member(pJsonObject, asset_classKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_class, node, "std::string", "");
		} else {
			
		}
	}
}

FinFeedAPI.SymbolModel::FinFeedAPI.SymbolModel(char* json)
{
	this->fromJson(json);
}

char*
FinFeedAPI.SymbolModel::toJson()
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
		std::string obj = getExchangeId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchange_idKey = "exchange_id";
	json_object_set_member(pJsonObject, exchange_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSecurityCategory();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *security_categoryKey = "security_category";
	json_object_set_member(pJsonObject, security_categoryKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dateKey = "date";
	json_object_set_member(pJsonObject, dateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAssetClass();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_classKey = "asset_class";
	json_object_set_member(pJsonObject, asset_classKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
FinFeedAPI.SymbolModel::getSymbolId()
{
	return symbol_id;
}

void
FinFeedAPI.SymbolModel::setSymbolId(std::string  symbol_id)
{
	this->symbol_id = symbol_id;
}

std::string
FinFeedAPI.SymbolModel::getExchangeId()
{
	return exchange_id;
}

void
FinFeedAPI.SymbolModel::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
FinFeedAPI.SymbolModel::getSecurityCategory()
{
	return security_category;
}

void
FinFeedAPI.SymbolModel::setSecurityCategory(std::string  security_category)
{
	this->security_category = security_category;
}

std::string
FinFeedAPI.SymbolModel::getName()
{
	return name;
}

void
FinFeedAPI.SymbolModel::setName(std::string  name)
{
	this->name = name;
}

std::string
FinFeedAPI.SymbolModel::getDate()
{
	return date;
}

void
FinFeedAPI.SymbolModel::setDate(std::string  date)
{
	this->date = date;
}

std::string
FinFeedAPI.SymbolModel::getAssetClass()
{
	return asset_class;
}

void
FinFeedAPI.SymbolModel::setAssetClass(std::string  asset_class)
{
	this->asset_class = asset_class;
}


