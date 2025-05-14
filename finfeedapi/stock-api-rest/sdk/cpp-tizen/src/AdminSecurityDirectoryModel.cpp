#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Admin.SecurityDirectoryModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Admin.SecurityDirectoryModel::Admin.SecurityDirectoryModel()
{
	//__init();
}

Admin.SecurityDirectoryModel::~Admin.SecurityDirectoryModel()
{
	//__cleanup();
}

void
Admin.SecurityDirectoryModel::__init()
{
	//symbol = std::string();
	//timestamp_nanos = long(0);
	//timestamp = null;
	//flags = int(0);
	//round_lot_size = int(0);
	//adjusted_poc_price = double(0);
	//luld_tier = int(0);
	//luld_tier_code = std::string();
	//luld_tier_text = std::string();
	//is_luld_tier_not_applicable = bool(false);
	//is_luld_tier1 = bool(false);
	//is_luld_tier2 = bool(false);
}

void
Admin.SecurityDirectoryModel::__cleanup()
{
	//if(symbol != NULL) {
	//
	//delete symbol;
	//symbol = NULL;
	//}
	//if(timestamp_nanos != NULL) {
	//
	//delete timestamp_nanos;
	//timestamp_nanos = NULL;
	//}
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(flags != NULL) {
	//
	//delete flags;
	//flags = NULL;
	//}
	//if(round_lot_size != NULL) {
	//
	//delete round_lot_size;
	//round_lot_size = NULL;
	//}
	//if(adjusted_poc_price != NULL) {
	//
	//delete adjusted_poc_price;
	//adjusted_poc_price = NULL;
	//}
	//if(luld_tier != NULL) {
	//
	//delete luld_tier;
	//luld_tier = NULL;
	//}
	//if(luld_tier_code != NULL) {
	//
	//delete luld_tier_code;
	//luld_tier_code = NULL;
	//}
	//if(luld_tier_text != NULL) {
	//
	//delete luld_tier_text;
	//luld_tier_text = NULL;
	//}
	//if(is_luld_tier_not_applicable != NULL) {
	//
	//delete is_luld_tier_not_applicable;
	//is_luld_tier_not_applicable = NULL;
	//}
	//if(is_luld_tier1 != NULL) {
	//
	//delete is_luld_tier1;
	//is_luld_tier1 = NULL;
	//}
	//if(is_luld_tier2 != NULL) {
	//
	//delete is_luld_tier2;
	//is_luld_tier2 = NULL;
	//}
	//
}

void
Admin.SecurityDirectoryModel::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *symbolKey = "symbol";
	node = json_object_get_member(pJsonObject, symbolKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *timestamp_nanosKey = "timestamp_nanos";
	node = json_object_get_member(pJsonObject, timestamp_nanosKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&timestamp_nanos, node, "long long", "");
		} else {
			
		}
	}
	const gchar *timestampKey = "timestamp";
	node = json_object_get_member(pJsonObject, timestampKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&timestamp, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *flagsKey = "flags";
	node = json_object_get_member(pJsonObject, flagsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&flags, node, "int", "");
		} else {
			
		}
	}
	const gchar *round_lot_sizeKey = "round_lot_size";
	node = json_object_get_member(pJsonObject, round_lot_sizeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&round_lot_size, node, "int", "");
		} else {
			
		}
	}
	const gchar *adjusted_poc_priceKey = "adjusted_poc_price";
	node = json_object_get_member(pJsonObject, adjusted_poc_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&adjusted_poc_price, node, "double", "");
		} else {
			
		}
	}
	const gchar *luld_tierKey = "luld_tier";
	node = json_object_get_member(pJsonObject, luld_tierKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&luld_tier, node, "int", "");
		} else {
			
		}
	}
	const gchar *luld_tier_codeKey = "luld_tier_code";
	node = json_object_get_member(pJsonObject, luld_tier_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&luld_tier_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *luld_tier_textKey = "luld_tier_text";
	node = json_object_get_member(pJsonObject, luld_tier_textKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&luld_tier_text, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *is_luld_tier_not_applicableKey = "is_luld_tier_not_applicable";
	node = json_object_get_member(pJsonObject, is_luld_tier_not_applicableKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_luld_tier_not_applicable, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_luld_tier1Key = "is_luld_tier1";
	node = json_object_get_member(pJsonObject, is_luld_tier1Key);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_luld_tier1, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_luld_tier2Key = "is_luld_tier2";
	node = json_object_get_member(pJsonObject, is_luld_tier2Key);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_luld_tier2, node, "bool", "");
		} else {
			
		}
	}
}

Admin.SecurityDirectoryModel::Admin.SecurityDirectoryModel(char* json)
{
	this->fromJson(json);
}

char*
Admin.SecurityDirectoryModel::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getSymbol();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbolKey = "symbol";
	json_object_set_member(pJsonObject, symbolKey, node);
	if (isprimitive("long long")) {
		long long obj = getTimestampNanos();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *timestamp_nanosKey = "timestamp_nanos";
	json_object_set_member(pJsonObject, timestamp_nanosKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("int")) {
		int obj = getFlags();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *flagsKey = "flags";
	json_object_set_member(pJsonObject, flagsKey, node);
	if (isprimitive("int")) {
		int obj = getRoundLotSize();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *round_lot_sizeKey = "round_lot_size";
	json_object_set_member(pJsonObject, round_lot_sizeKey, node);
	if (isprimitive("double")) {
		double obj = getAdjustedPocPrice();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *adjusted_poc_priceKey = "adjusted_poc_price";
	json_object_set_member(pJsonObject, adjusted_poc_priceKey, node);
	if (isprimitive("int")) {
		int obj = getLuldTier();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *luld_tierKey = "luld_tier";
	json_object_set_member(pJsonObject, luld_tierKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLuldTierCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *luld_tier_codeKey = "luld_tier_code";
	json_object_set_member(pJsonObject, luld_tier_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLuldTierText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *luld_tier_textKey = "luld_tier_text";
	json_object_set_member(pJsonObject, luld_tier_textKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsLuldTierNotApplicable();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_luld_tier_not_applicableKey = "is_luld_tier_not_applicable";
	json_object_set_member(pJsonObject, is_luld_tier_not_applicableKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsLuldTier1();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_luld_tier1Key = "is_luld_tier1";
	json_object_set_member(pJsonObject, is_luld_tier1Key, node);
	if (isprimitive("bool")) {
		bool obj = getIsLuldTier2();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_luld_tier2Key = "is_luld_tier2";
	json_object_set_member(pJsonObject, is_luld_tier2Key, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Admin.SecurityDirectoryModel::getSymbol()
{
	return symbol;
}

void
Admin.SecurityDirectoryModel::setSymbol(std::string  symbol)
{
	this->symbol = symbol;
}

long long
Admin.SecurityDirectoryModel::getTimestampNanos()
{
	return timestamp_nanos;
}

void
Admin.SecurityDirectoryModel::setTimestampNanos(long long  timestamp_nanos)
{
	this->timestamp_nanos = timestamp_nanos;
}

std::string
Admin.SecurityDirectoryModel::getTimestamp()
{
	return timestamp;
}

void
Admin.SecurityDirectoryModel::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

int
Admin.SecurityDirectoryModel::getFlags()
{
	return flags;
}

void
Admin.SecurityDirectoryModel::setFlags(int  flags)
{
	this->flags = flags;
}

int
Admin.SecurityDirectoryModel::getRoundLotSize()
{
	return round_lot_size;
}

void
Admin.SecurityDirectoryModel::setRoundLotSize(int  round_lot_size)
{
	this->round_lot_size = round_lot_size;
}

double
Admin.SecurityDirectoryModel::getAdjustedPocPrice()
{
	return adjusted_poc_price;
}

void
Admin.SecurityDirectoryModel::setAdjustedPocPrice(double  adjusted_poc_price)
{
	this->adjusted_poc_price = adjusted_poc_price;
}

int
Admin.SecurityDirectoryModel::getLuldTier()
{
	return luld_tier;
}

void
Admin.SecurityDirectoryModel::setLuldTier(int  luld_tier)
{
	this->luld_tier = luld_tier;
}

std::string
Admin.SecurityDirectoryModel::getLuldTierCode()
{
	return luld_tier_code;
}

void
Admin.SecurityDirectoryModel::setLuldTierCode(std::string  luld_tier_code)
{
	this->luld_tier_code = luld_tier_code;
}

std::string
Admin.SecurityDirectoryModel::getLuldTierText()
{
	return luld_tier_text;
}

void
Admin.SecurityDirectoryModel::setLuldTierText(std::string  luld_tier_text)
{
	this->luld_tier_text = luld_tier_text;
}

bool
Admin.SecurityDirectoryModel::getIsLuldTierNotApplicable()
{
	return is_luld_tier_not_applicable;
}

void
Admin.SecurityDirectoryModel::setIsLuldTierNotApplicable(bool  is_luld_tier_not_applicable)
{
	this->is_luld_tier_not_applicable = is_luld_tier_not_applicable;
}

bool
Admin.SecurityDirectoryModel::getIsLuldTier1()
{
	return is_luld_tier1;
}

void
Admin.SecurityDirectoryModel::setIsLuldTier1(bool  is_luld_tier1)
{
	this->is_luld_tier1 = is_luld_tier1;
}

bool
Admin.SecurityDirectoryModel::getIsLuldTier2()
{
	return is_luld_tier2;
}

void
Admin.SecurityDirectoryModel::setIsLuldTier2(bool  is_luld_tier2)
{
	this->is_luld_tier2 = is_luld_tier2;
}


