#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Admin.OfficialPriceModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Admin.OfficialPriceModel::Admin.OfficialPriceModel()
{
	//__init();
}

Admin.OfficialPriceModel::~Admin.OfficialPriceModel()
{
	//__cleanup();
}

void
Admin.OfficialPriceModel::__init()
{
	//symbol = std::string();
	//timestamp_nanos = long(0);
	//timestamp = null;
	//price_type = int(0);
	//price_type_code = std::string();
	//price_type_text = std::string();
	//is_price_type_opening = bool(false);
	//is_price_type_closing = bool(false);
	//official_price = double(0);
}

void
Admin.OfficialPriceModel::__cleanup()
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
	//if(price_type != NULL) {
	//
	//delete price_type;
	//price_type = NULL;
	//}
	//if(price_type_code != NULL) {
	//
	//delete price_type_code;
	//price_type_code = NULL;
	//}
	//if(price_type_text != NULL) {
	//
	//delete price_type_text;
	//price_type_text = NULL;
	//}
	//if(is_price_type_opening != NULL) {
	//
	//delete is_price_type_opening;
	//is_price_type_opening = NULL;
	//}
	//if(is_price_type_closing != NULL) {
	//
	//delete is_price_type_closing;
	//is_price_type_closing = NULL;
	//}
	//if(official_price != NULL) {
	//
	//delete official_price;
	//official_price = NULL;
	//}
	//
}

void
Admin.OfficialPriceModel::fromJson(char* jsonStr)
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
	const gchar *price_typeKey = "price_type";
	node = json_object_get_member(pJsonObject, price_typeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&price_type, node, "int", "");
		} else {
			
		}
	}
	const gchar *price_type_codeKey = "price_type_code";
	node = json_object_get_member(pJsonObject, price_type_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&price_type_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *price_type_textKey = "price_type_text";
	node = json_object_get_member(pJsonObject, price_type_textKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&price_type_text, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *is_price_type_openingKey = "is_price_type_opening";
	node = json_object_get_member(pJsonObject, is_price_type_openingKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_price_type_opening, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_price_type_closingKey = "is_price_type_closing";
	node = json_object_get_member(pJsonObject, is_price_type_closingKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_price_type_closing, node, "bool", "");
		} else {
			
		}
	}
	const gchar *official_priceKey = "official_price";
	node = json_object_get_member(pJsonObject, official_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&official_price, node, "double", "");
		} else {
			
		}
	}
}

Admin.OfficialPriceModel::Admin.OfficialPriceModel(char* json)
{
	this->fromJson(json);
}

char*
Admin.OfficialPriceModel::toJson()
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
		int obj = getPriceType();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *price_typeKey = "price_type";
	json_object_set_member(pJsonObject, price_typeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPriceTypeCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *price_type_codeKey = "price_type_code";
	json_object_set_member(pJsonObject, price_type_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPriceTypeText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *price_type_textKey = "price_type_text";
	json_object_set_member(pJsonObject, price_type_textKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsPriceTypeOpening();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_price_type_openingKey = "is_price_type_opening";
	json_object_set_member(pJsonObject, is_price_type_openingKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsPriceTypeClosing();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_price_type_closingKey = "is_price_type_closing";
	json_object_set_member(pJsonObject, is_price_type_closingKey, node);
	if (isprimitive("double")) {
		double obj = getOfficialPrice();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *official_priceKey = "official_price";
	json_object_set_member(pJsonObject, official_priceKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Admin.OfficialPriceModel::getSymbol()
{
	return symbol;
}

void
Admin.OfficialPriceModel::setSymbol(std::string  symbol)
{
	this->symbol = symbol;
}

long long
Admin.OfficialPriceModel::getTimestampNanos()
{
	return timestamp_nanos;
}

void
Admin.OfficialPriceModel::setTimestampNanos(long long  timestamp_nanos)
{
	this->timestamp_nanos = timestamp_nanos;
}

std::string
Admin.OfficialPriceModel::getTimestamp()
{
	return timestamp;
}

void
Admin.OfficialPriceModel::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

int
Admin.OfficialPriceModel::getPriceType()
{
	return price_type;
}

void
Admin.OfficialPriceModel::setPriceType(int  price_type)
{
	this->price_type = price_type;
}

std::string
Admin.OfficialPriceModel::getPriceTypeCode()
{
	return price_type_code;
}

void
Admin.OfficialPriceModel::setPriceTypeCode(std::string  price_type_code)
{
	this->price_type_code = price_type_code;
}

std::string
Admin.OfficialPriceModel::getPriceTypeText()
{
	return price_type_text;
}

void
Admin.OfficialPriceModel::setPriceTypeText(std::string  price_type_text)
{
	this->price_type_text = price_type_text;
}

bool
Admin.OfficialPriceModel::getIsPriceTypeOpening()
{
	return is_price_type_opening;
}

void
Admin.OfficialPriceModel::setIsPriceTypeOpening(bool  is_price_type_opening)
{
	this->is_price_type_opening = is_price_type_opening;
}

bool
Admin.OfficialPriceModel::getIsPriceTypeClosing()
{
	return is_price_type_closing;
}

void
Admin.OfficialPriceModel::setIsPriceTypeClosing(bool  is_price_type_closing)
{
	this->is_price_type_closing = is_price_type_closing;
}

double
Admin.OfficialPriceModel::getOfficialPrice()
{
	return official_price;
}

void
Admin.OfficialPriceModel::setOfficialPrice(double  official_price)
{
	this->official_price = official_price;
}


