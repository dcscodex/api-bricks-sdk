#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Admin.RetailLiquidityIndicatorModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Admin.RetailLiquidityIndicatorModel::Admin.RetailLiquidityIndicatorModel()
{
	//__init();
}

Admin.RetailLiquidityIndicatorModel::~Admin.RetailLiquidityIndicatorModel()
{
	//__cleanup();
}

void
Admin.RetailLiquidityIndicatorModel::__init()
{
	//symbol = std::string();
	//timestamp_nanos = long(0);
	//timestamp = null;
	//retail_liquidity_indicator = int(0);
	//retail_liquidity_indicator_code = std::string();
	//retail_liquidity_indicator_text = std::string();
	//is_retail_indicator_not_applicable = bool(false);
	//is_retail_indicator_buy_interest = bool(false);
	//is_retail_indicator_sell_interest = bool(false);
	//is_retail_indicator_buy_and_sell_interest = bool(false);
}

void
Admin.RetailLiquidityIndicatorModel::__cleanup()
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
	//if(retail_liquidity_indicator != NULL) {
	//
	//delete retail_liquidity_indicator;
	//retail_liquidity_indicator = NULL;
	//}
	//if(retail_liquidity_indicator_code != NULL) {
	//
	//delete retail_liquidity_indicator_code;
	//retail_liquidity_indicator_code = NULL;
	//}
	//if(retail_liquidity_indicator_text != NULL) {
	//
	//delete retail_liquidity_indicator_text;
	//retail_liquidity_indicator_text = NULL;
	//}
	//if(is_retail_indicator_not_applicable != NULL) {
	//
	//delete is_retail_indicator_not_applicable;
	//is_retail_indicator_not_applicable = NULL;
	//}
	//if(is_retail_indicator_buy_interest != NULL) {
	//
	//delete is_retail_indicator_buy_interest;
	//is_retail_indicator_buy_interest = NULL;
	//}
	//if(is_retail_indicator_sell_interest != NULL) {
	//
	//delete is_retail_indicator_sell_interest;
	//is_retail_indicator_sell_interest = NULL;
	//}
	//if(is_retail_indicator_buy_and_sell_interest != NULL) {
	//
	//delete is_retail_indicator_buy_and_sell_interest;
	//is_retail_indicator_buy_and_sell_interest = NULL;
	//}
	//
}

void
Admin.RetailLiquidityIndicatorModel::fromJson(char* jsonStr)
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
	const gchar *retail_liquidity_indicatorKey = "retail_liquidity_indicator";
	node = json_object_get_member(pJsonObject, retail_liquidity_indicatorKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&retail_liquidity_indicator, node, "int", "");
		} else {
			
		}
	}
	const gchar *retail_liquidity_indicator_codeKey = "retail_liquidity_indicator_code";
	node = json_object_get_member(pJsonObject, retail_liquidity_indicator_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&retail_liquidity_indicator_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *retail_liquidity_indicator_textKey = "retail_liquidity_indicator_text";
	node = json_object_get_member(pJsonObject, retail_liquidity_indicator_textKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&retail_liquidity_indicator_text, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *is_retail_indicator_not_applicableKey = "is_retail_indicator_not_applicable";
	node = json_object_get_member(pJsonObject, is_retail_indicator_not_applicableKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_retail_indicator_not_applicable, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_retail_indicator_buy_interestKey = "is_retail_indicator_buy_interest";
	node = json_object_get_member(pJsonObject, is_retail_indicator_buy_interestKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_retail_indicator_buy_interest, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_retail_indicator_sell_interestKey = "is_retail_indicator_sell_interest";
	node = json_object_get_member(pJsonObject, is_retail_indicator_sell_interestKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_retail_indicator_sell_interest, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_retail_indicator_buy_and_sell_interestKey = "is_retail_indicator_buy_and_sell_interest";
	node = json_object_get_member(pJsonObject, is_retail_indicator_buy_and_sell_interestKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_retail_indicator_buy_and_sell_interest, node, "bool", "");
		} else {
			
		}
	}
}

Admin.RetailLiquidityIndicatorModel::Admin.RetailLiquidityIndicatorModel(char* json)
{
	this->fromJson(json);
}

char*
Admin.RetailLiquidityIndicatorModel::toJson()
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
		int obj = getRetailLiquidityIndicator();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *retail_liquidity_indicatorKey = "retail_liquidity_indicator";
	json_object_set_member(pJsonObject, retail_liquidity_indicatorKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRetailLiquidityIndicatorCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *retail_liquidity_indicator_codeKey = "retail_liquidity_indicator_code";
	json_object_set_member(pJsonObject, retail_liquidity_indicator_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRetailLiquidityIndicatorText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *retail_liquidity_indicator_textKey = "retail_liquidity_indicator_text";
	json_object_set_member(pJsonObject, retail_liquidity_indicator_textKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsRetailIndicatorNotApplicable();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_retail_indicator_not_applicableKey = "is_retail_indicator_not_applicable";
	json_object_set_member(pJsonObject, is_retail_indicator_not_applicableKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsRetailIndicatorBuyInterest();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_retail_indicator_buy_interestKey = "is_retail_indicator_buy_interest";
	json_object_set_member(pJsonObject, is_retail_indicator_buy_interestKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsRetailIndicatorSellInterest();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_retail_indicator_sell_interestKey = "is_retail_indicator_sell_interest";
	json_object_set_member(pJsonObject, is_retail_indicator_sell_interestKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsRetailIndicatorBuyAndSellInterest();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_retail_indicator_buy_and_sell_interestKey = "is_retail_indicator_buy_and_sell_interest";
	json_object_set_member(pJsonObject, is_retail_indicator_buy_and_sell_interestKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Admin.RetailLiquidityIndicatorModel::getSymbol()
{
	return symbol;
}

void
Admin.RetailLiquidityIndicatorModel::setSymbol(std::string  symbol)
{
	this->symbol = symbol;
}

long long
Admin.RetailLiquidityIndicatorModel::getTimestampNanos()
{
	return timestamp_nanos;
}

void
Admin.RetailLiquidityIndicatorModel::setTimestampNanos(long long  timestamp_nanos)
{
	this->timestamp_nanos = timestamp_nanos;
}

std::string
Admin.RetailLiquidityIndicatorModel::getTimestamp()
{
	return timestamp;
}

void
Admin.RetailLiquidityIndicatorModel::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

int
Admin.RetailLiquidityIndicatorModel::getRetailLiquidityIndicator()
{
	return retail_liquidity_indicator;
}

void
Admin.RetailLiquidityIndicatorModel::setRetailLiquidityIndicator(int  retail_liquidity_indicator)
{
	this->retail_liquidity_indicator = retail_liquidity_indicator;
}

std::string
Admin.RetailLiquidityIndicatorModel::getRetailLiquidityIndicatorCode()
{
	return retail_liquidity_indicator_code;
}

void
Admin.RetailLiquidityIndicatorModel::setRetailLiquidityIndicatorCode(std::string  retail_liquidity_indicator_code)
{
	this->retail_liquidity_indicator_code = retail_liquidity_indicator_code;
}

std::string
Admin.RetailLiquidityIndicatorModel::getRetailLiquidityIndicatorText()
{
	return retail_liquidity_indicator_text;
}

void
Admin.RetailLiquidityIndicatorModel::setRetailLiquidityIndicatorText(std::string  retail_liquidity_indicator_text)
{
	this->retail_liquidity_indicator_text = retail_liquidity_indicator_text;
}

bool
Admin.RetailLiquidityIndicatorModel::getIsRetailIndicatorNotApplicable()
{
	return is_retail_indicator_not_applicable;
}

void
Admin.RetailLiquidityIndicatorModel::setIsRetailIndicatorNotApplicable(bool  is_retail_indicator_not_applicable)
{
	this->is_retail_indicator_not_applicable = is_retail_indicator_not_applicable;
}

bool
Admin.RetailLiquidityIndicatorModel::getIsRetailIndicatorBuyInterest()
{
	return is_retail_indicator_buy_interest;
}

void
Admin.RetailLiquidityIndicatorModel::setIsRetailIndicatorBuyInterest(bool  is_retail_indicator_buy_interest)
{
	this->is_retail_indicator_buy_interest = is_retail_indicator_buy_interest;
}

bool
Admin.RetailLiquidityIndicatorModel::getIsRetailIndicatorSellInterest()
{
	return is_retail_indicator_sell_interest;
}

void
Admin.RetailLiquidityIndicatorModel::setIsRetailIndicatorSellInterest(bool  is_retail_indicator_sell_interest)
{
	this->is_retail_indicator_sell_interest = is_retail_indicator_sell_interest;
}

bool
Admin.RetailLiquidityIndicatorModel::getIsRetailIndicatorBuyAndSellInterest()
{
	return is_retail_indicator_buy_and_sell_interest;
}

void
Admin.RetailLiquidityIndicatorModel::setIsRetailIndicatorBuyAndSellInterest(bool  is_retail_indicator_buy_and_sell_interest)
{
	this->is_retail_indicator_buy_and_sell_interest = is_retail_indicator_buy_and_sell_interest;
}


