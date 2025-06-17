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
	//cfi_code = std::string();
	//cfi_category = std::string();
	//cfi_group = std::string();
	//cfi_attribute1 = std::string();
	//cfi_attribute2 = std::string();
	//cfi_attribute3 = std::string();
	//cfi_attribute4 = std::string();
	//cfi_category_desc = std::string();
	//cfi_group_desc = std::string();
	//cfi_attribute1_desc = std::string();
	//cfi_attribute2_desc = std::string();
	//cfi_attribute3_desc = std::string();
	//cfi_attribute4_desc = std::string();
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
	//if(cfi_code != NULL) {
	//
	//delete cfi_code;
	//cfi_code = NULL;
	//}
	//if(cfi_category != NULL) {
	//
	//delete cfi_category;
	//cfi_category = NULL;
	//}
	//if(cfi_group != NULL) {
	//
	//delete cfi_group;
	//cfi_group = NULL;
	//}
	//if(cfi_attribute1 != NULL) {
	//
	//delete cfi_attribute1;
	//cfi_attribute1 = NULL;
	//}
	//if(cfi_attribute2 != NULL) {
	//
	//delete cfi_attribute2;
	//cfi_attribute2 = NULL;
	//}
	//if(cfi_attribute3 != NULL) {
	//
	//delete cfi_attribute3;
	//cfi_attribute3 = NULL;
	//}
	//if(cfi_attribute4 != NULL) {
	//
	//delete cfi_attribute4;
	//cfi_attribute4 = NULL;
	//}
	//if(cfi_category_desc != NULL) {
	//
	//delete cfi_category_desc;
	//cfi_category_desc = NULL;
	//}
	//if(cfi_group_desc != NULL) {
	//
	//delete cfi_group_desc;
	//cfi_group_desc = NULL;
	//}
	//if(cfi_attribute1_desc != NULL) {
	//
	//delete cfi_attribute1_desc;
	//cfi_attribute1_desc = NULL;
	//}
	//if(cfi_attribute2_desc != NULL) {
	//
	//delete cfi_attribute2_desc;
	//cfi_attribute2_desc = NULL;
	//}
	//if(cfi_attribute3_desc != NULL) {
	//
	//delete cfi_attribute3_desc;
	//cfi_attribute3_desc = NULL;
	//}
	//if(cfi_attribute4_desc != NULL) {
	//
	//delete cfi_attribute4_desc;
	//cfi_attribute4_desc = NULL;
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
	const gchar *cfi_codeKey = "cfi_code";
	node = json_object_get_member(pJsonObject, cfi_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cfi_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cfi_categoryKey = "cfi_category";
	node = json_object_get_member(pJsonObject, cfi_categoryKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cfi_category, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cfi_groupKey = "cfi_group";
	node = json_object_get_member(pJsonObject, cfi_groupKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cfi_group, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cfi_attribute1Key = "cfi_attribute1";
	node = json_object_get_member(pJsonObject, cfi_attribute1Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cfi_attribute1, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cfi_attribute2Key = "cfi_attribute2";
	node = json_object_get_member(pJsonObject, cfi_attribute2Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cfi_attribute2, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cfi_attribute3Key = "cfi_attribute3";
	node = json_object_get_member(pJsonObject, cfi_attribute3Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cfi_attribute3, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cfi_attribute4Key = "cfi_attribute4";
	node = json_object_get_member(pJsonObject, cfi_attribute4Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cfi_attribute4, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cfi_category_descKey = "cfi_category_desc";
	node = json_object_get_member(pJsonObject, cfi_category_descKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cfi_category_desc, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cfi_group_descKey = "cfi_group_desc";
	node = json_object_get_member(pJsonObject, cfi_group_descKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cfi_group_desc, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cfi_attribute1_descKey = "cfi_attribute1_desc";
	node = json_object_get_member(pJsonObject, cfi_attribute1_descKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cfi_attribute1_desc, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cfi_attribute2_descKey = "cfi_attribute2_desc";
	node = json_object_get_member(pJsonObject, cfi_attribute2_descKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cfi_attribute2_desc, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cfi_attribute3_descKey = "cfi_attribute3_desc";
	node = json_object_get_member(pJsonObject, cfi_attribute3_descKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cfi_attribute3_desc, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cfi_attribute4_descKey = "cfi_attribute4_desc";
	node = json_object_get_member(pJsonObject, cfi_attribute4_descKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cfi_attribute4_desc, node, "std::string", "");
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
	if (isprimitive("std::string")) {
		std::string obj = getCfiCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cfi_codeKey = "cfi_code";
	json_object_set_member(pJsonObject, cfi_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCfiCategory();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cfi_categoryKey = "cfi_category";
	json_object_set_member(pJsonObject, cfi_categoryKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCfiGroup();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cfi_groupKey = "cfi_group";
	json_object_set_member(pJsonObject, cfi_groupKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCfiAttribute1();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cfi_attribute1Key = "cfi_attribute1";
	json_object_set_member(pJsonObject, cfi_attribute1Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getCfiAttribute2();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cfi_attribute2Key = "cfi_attribute2";
	json_object_set_member(pJsonObject, cfi_attribute2Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getCfiAttribute3();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cfi_attribute3Key = "cfi_attribute3";
	json_object_set_member(pJsonObject, cfi_attribute3Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getCfiAttribute4();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cfi_attribute4Key = "cfi_attribute4";
	json_object_set_member(pJsonObject, cfi_attribute4Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getCfiCategoryDesc();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cfi_category_descKey = "cfi_category_desc";
	json_object_set_member(pJsonObject, cfi_category_descKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCfiGroupDesc();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cfi_group_descKey = "cfi_group_desc";
	json_object_set_member(pJsonObject, cfi_group_descKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCfiAttribute1Desc();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cfi_attribute1_descKey = "cfi_attribute1_desc";
	json_object_set_member(pJsonObject, cfi_attribute1_descKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCfiAttribute2Desc();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cfi_attribute2_descKey = "cfi_attribute2_desc";
	json_object_set_member(pJsonObject, cfi_attribute2_descKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCfiAttribute3Desc();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cfi_attribute3_descKey = "cfi_attribute3_desc";
	json_object_set_member(pJsonObject, cfi_attribute3_descKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCfiAttribute4Desc();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cfi_attribute4_descKey = "cfi_attribute4_desc";
	json_object_set_member(pJsonObject, cfi_attribute4_descKey, node);
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

std::string
FinFeedAPI.SymbolModel::getCfiCode()
{
	return cfi_code;
}

void
FinFeedAPI.SymbolModel::setCfiCode(std::string  cfi_code)
{
	this->cfi_code = cfi_code;
}

std::string
FinFeedAPI.SymbolModel::getCfiCategory()
{
	return cfi_category;
}

void
FinFeedAPI.SymbolModel::setCfiCategory(std::string  cfi_category)
{
	this->cfi_category = cfi_category;
}

std::string
FinFeedAPI.SymbolModel::getCfiGroup()
{
	return cfi_group;
}

void
FinFeedAPI.SymbolModel::setCfiGroup(std::string  cfi_group)
{
	this->cfi_group = cfi_group;
}

std::string
FinFeedAPI.SymbolModel::getCfiAttribute1()
{
	return cfi_attribute1;
}

void
FinFeedAPI.SymbolModel::setCfiAttribute1(std::string  cfi_attribute1)
{
	this->cfi_attribute1 = cfi_attribute1;
}

std::string
FinFeedAPI.SymbolModel::getCfiAttribute2()
{
	return cfi_attribute2;
}

void
FinFeedAPI.SymbolModel::setCfiAttribute2(std::string  cfi_attribute2)
{
	this->cfi_attribute2 = cfi_attribute2;
}

std::string
FinFeedAPI.SymbolModel::getCfiAttribute3()
{
	return cfi_attribute3;
}

void
FinFeedAPI.SymbolModel::setCfiAttribute3(std::string  cfi_attribute3)
{
	this->cfi_attribute3 = cfi_attribute3;
}

std::string
FinFeedAPI.SymbolModel::getCfiAttribute4()
{
	return cfi_attribute4;
}

void
FinFeedAPI.SymbolModel::setCfiAttribute4(std::string  cfi_attribute4)
{
	this->cfi_attribute4 = cfi_attribute4;
}

std::string
FinFeedAPI.SymbolModel::getCfiCategoryDesc()
{
	return cfi_category_desc;
}

void
FinFeedAPI.SymbolModel::setCfiCategoryDesc(std::string  cfi_category_desc)
{
	this->cfi_category_desc = cfi_category_desc;
}

std::string
FinFeedAPI.SymbolModel::getCfiGroupDesc()
{
	return cfi_group_desc;
}

void
FinFeedAPI.SymbolModel::setCfiGroupDesc(std::string  cfi_group_desc)
{
	this->cfi_group_desc = cfi_group_desc;
}

std::string
FinFeedAPI.SymbolModel::getCfiAttribute1Desc()
{
	return cfi_attribute1_desc;
}

void
FinFeedAPI.SymbolModel::setCfiAttribute1Desc(std::string  cfi_attribute1_desc)
{
	this->cfi_attribute1_desc = cfi_attribute1_desc;
}

std::string
FinFeedAPI.SymbolModel::getCfiAttribute2Desc()
{
	return cfi_attribute2_desc;
}

void
FinFeedAPI.SymbolModel::setCfiAttribute2Desc(std::string  cfi_attribute2_desc)
{
	this->cfi_attribute2_desc = cfi_attribute2_desc;
}

std::string
FinFeedAPI.SymbolModel::getCfiAttribute3Desc()
{
	return cfi_attribute3_desc;
}

void
FinFeedAPI.SymbolModel::setCfiAttribute3Desc(std::string  cfi_attribute3_desc)
{
	this->cfi_attribute3_desc = cfi_attribute3_desc;
}

std::string
FinFeedAPI.SymbolModel::getCfiAttribute4Desc()
{
	return cfi_attribute4_desc;
}

void
FinFeedAPI.SymbolModel::setCfiAttribute4Desc(std::string  cfi_attribute4_desc)
{
	this->cfi_attribute4_desc = cfi_attribute4_desc;
}


