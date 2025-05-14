#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Admin.ShortSalePriceTestStatusModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Admin.ShortSalePriceTestStatusModel::Admin.ShortSalePriceTestStatusModel()
{
	//__init();
}

Admin.ShortSalePriceTestStatusModel::~Admin.ShortSalePriceTestStatusModel()
{
	//__cleanup();
}

void
Admin.ShortSalePriceTestStatusModel::__init()
{
	//symbol = std::string();
	//timestamp_nanos = long(0);
	//timestamp = null;
	//short_sale_price_test_status = int(0);
	//short_sale_price_test_status_code = std::string();
	//short_sale_price_test_status_text = std::string();
	//is_short_sale_price_test_not_in_effect = bool(false);
	//is_short_sale_price_test_in_effect = bool(false);
	//detail = int(0);
	//detail_code = std::string();
	//detail_text = std::string();
	//is_detail_no_price_test = bool(false);
	//is_detail_activated = bool(false);
	//is_detail_continued = bool(false);
	//is_detail_deactivated = bool(false);
	//is_detail_not_available = bool(false);
}

void
Admin.ShortSalePriceTestStatusModel::__cleanup()
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
	//if(short_sale_price_test_status != NULL) {
	//
	//delete short_sale_price_test_status;
	//short_sale_price_test_status = NULL;
	//}
	//if(short_sale_price_test_status_code != NULL) {
	//
	//delete short_sale_price_test_status_code;
	//short_sale_price_test_status_code = NULL;
	//}
	//if(short_sale_price_test_status_text != NULL) {
	//
	//delete short_sale_price_test_status_text;
	//short_sale_price_test_status_text = NULL;
	//}
	//if(is_short_sale_price_test_not_in_effect != NULL) {
	//
	//delete is_short_sale_price_test_not_in_effect;
	//is_short_sale_price_test_not_in_effect = NULL;
	//}
	//if(is_short_sale_price_test_in_effect != NULL) {
	//
	//delete is_short_sale_price_test_in_effect;
	//is_short_sale_price_test_in_effect = NULL;
	//}
	//if(detail != NULL) {
	//
	//delete detail;
	//detail = NULL;
	//}
	//if(detail_code != NULL) {
	//
	//delete detail_code;
	//detail_code = NULL;
	//}
	//if(detail_text != NULL) {
	//
	//delete detail_text;
	//detail_text = NULL;
	//}
	//if(is_detail_no_price_test != NULL) {
	//
	//delete is_detail_no_price_test;
	//is_detail_no_price_test = NULL;
	//}
	//if(is_detail_activated != NULL) {
	//
	//delete is_detail_activated;
	//is_detail_activated = NULL;
	//}
	//if(is_detail_continued != NULL) {
	//
	//delete is_detail_continued;
	//is_detail_continued = NULL;
	//}
	//if(is_detail_deactivated != NULL) {
	//
	//delete is_detail_deactivated;
	//is_detail_deactivated = NULL;
	//}
	//if(is_detail_not_available != NULL) {
	//
	//delete is_detail_not_available;
	//is_detail_not_available = NULL;
	//}
	//
}

void
Admin.ShortSalePriceTestStatusModel::fromJson(char* jsonStr)
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
	const gchar *short_sale_price_test_statusKey = "short_sale_price_test_status";
	node = json_object_get_member(pJsonObject, short_sale_price_test_statusKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&short_sale_price_test_status, node, "int", "");
		} else {
			
		}
	}
	const gchar *short_sale_price_test_status_codeKey = "short_sale_price_test_status_code";
	node = json_object_get_member(pJsonObject, short_sale_price_test_status_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&short_sale_price_test_status_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *short_sale_price_test_status_textKey = "short_sale_price_test_status_text";
	node = json_object_get_member(pJsonObject, short_sale_price_test_status_textKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&short_sale_price_test_status_text, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *is_short_sale_price_test_not_in_effectKey = "is_short_sale_price_test_not_in_effect";
	node = json_object_get_member(pJsonObject, is_short_sale_price_test_not_in_effectKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_short_sale_price_test_not_in_effect, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_short_sale_price_test_in_effectKey = "is_short_sale_price_test_in_effect";
	node = json_object_get_member(pJsonObject, is_short_sale_price_test_in_effectKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_short_sale_price_test_in_effect, node, "bool", "");
		} else {
			
		}
	}
	const gchar *detailKey = "detail";
	node = json_object_get_member(pJsonObject, detailKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&detail, node, "int", "");
		} else {
			
		}
	}
	const gchar *detail_codeKey = "detail_code";
	node = json_object_get_member(pJsonObject, detail_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&detail_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *detail_textKey = "detail_text";
	node = json_object_get_member(pJsonObject, detail_textKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&detail_text, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *is_detail_no_price_testKey = "is_detail_no_price_test";
	node = json_object_get_member(pJsonObject, is_detail_no_price_testKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_detail_no_price_test, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_detail_activatedKey = "is_detail_activated";
	node = json_object_get_member(pJsonObject, is_detail_activatedKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_detail_activated, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_detail_continuedKey = "is_detail_continued";
	node = json_object_get_member(pJsonObject, is_detail_continuedKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_detail_continued, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_detail_deactivatedKey = "is_detail_deactivated";
	node = json_object_get_member(pJsonObject, is_detail_deactivatedKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_detail_deactivated, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_detail_not_availableKey = "is_detail_not_available";
	node = json_object_get_member(pJsonObject, is_detail_not_availableKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_detail_not_available, node, "bool", "");
		} else {
			
		}
	}
}

Admin.ShortSalePriceTestStatusModel::Admin.ShortSalePriceTestStatusModel(char* json)
{
	this->fromJson(json);
}

char*
Admin.ShortSalePriceTestStatusModel::toJson()
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
		int obj = getShortSalePriceTestStatus();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *short_sale_price_test_statusKey = "short_sale_price_test_status";
	json_object_set_member(pJsonObject, short_sale_price_test_statusKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getShortSalePriceTestStatusCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *short_sale_price_test_status_codeKey = "short_sale_price_test_status_code";
	json_object_set_member(pJsonObject, short_sale_price_test_status_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getShortSalePriceTestStatusText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *short_sale_price_test_status_textKey = "short_sale_price_test_status_text";
	json_object_set_member(pJsonObject, short_sale_price_test_status_textKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsShortSalePriceTestNotInEffect();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_short_sale_price_test_not_in_effectKey = "is_short_sale_price_test_not_in_effect";
	json_object_set_member(pJsonObject, is_short_sale_price_test_not_in_effectKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsShortSalePriceTestInEffect();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_short_sale_price_test_in_effectKey = "is_short_sale_price_test_in_effect";
	json_object_set_member(pJsonObject, is_short_sale_price_test_in_effectKey, node);
	if (isprimitive("int")) {
		int obj = getDetail();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *detailKey = "detail";
	json_object_set_member(pJsonObject, detailKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDetailCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *detail_codeKey = "detail_code";
	json_object_set_member(pJsonObject, detail_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDetailText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *detail_textKey = "detail_text";
	json_object_set_member(pJsonObject, detail_textKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsDetailNoPriceTest();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_detail_no_price_testKey = "is_detail_no_price_test";
	json_object_set_member(pJsonObject, is_detail_no_price_testKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsDetailActivated();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_detail_activatedKey = "is_detail_activated";
	json_object_set_member(pJsonObject, is_detail_activatedKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsDetailContinued();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_detail_continuedKey = "is_detail_continued";
	json_object_set_member(pJsonObject, is_detail_continuedKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsDetailDeactivated();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_detail_deactivatedKey = "is_detail_deactivated";
	json_object_set_member(pJsonObject, is_detail_deactivatedKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsDetailNotAvailable();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_detail_not_availableKey = "is_detail_not_available";
	json_object_set_member(pJsonObject, is_detail_not_availableKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Admin.ShortSalePriceTestStatusModel::getSymbol()
{
	return symbol;
}

void
Admin.ShortSalePriceTestStatusModel::setSymbol(std::string  symbol)
{
	this->symbol = symbol;
}

long long
Admin.ShortSalePriceTestStatusModel::getTimestampNanos()
{
	return timestamp_nanos;
}

void
Admin.ShortSalePriceTestStatusModel::setTimestampNanos(long long  timestamp_nanos)
{
	this->timestamp_nanos = timestamp_nanos;
}

std::string
Admin.ShortSalePriceTestStatusModel::getTimestamp()
{
	return timestamp;
}

void
Admin.ShortSalePriceTestStatusModel::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

int
Admin.ShortSalePriceTestStatusModel::getShortSalePriceTestStatus()
{
	return short_sale_price_test_status;
}

void
Admin.ShortSalePriceTestStatusModel::setShortSalePriceTestStatus(int  short_sale_price_test_status)
{
	this->short_sale_price_test_status = short_sale_price_test_status;
}

std::string
Admin.ShortSalePriceTestStatusModel::getShortSalePriceTestStatusCode()
{
	return short_sale_price_test_status_code;
}

void
Admin.ShortSalePriceTestStatusModel::setShortSalePriceTestStatusCode(std::string  short_sale_price_test_status_code)
{
	this->short_sale_price_test_status_code = short_sale_price_test_status_code;
}

std::string
Admin.ShortSalePriceTestStatusModel::getShortSalePriceTestStatusText()
{
	return short_sale_price_test_status_text;
}

void
Admin.ShortSalePriceTestStatusModel::setShortSalePriceTestStatusText(std::string  short_sale_price_test_status_text)
{
	this->short_sale_price_test_status_text = short_sale_price_test_status_text;
}

bool
Admin.ShortSalePriceTestStatusModel::getIsShortSalePriceTestNotInEffect()
{
	return is_short_sale_price_test_not_in_effect;
}

void
Admin.ShortSalePriceTestStatusModel::setIsShortSalePriceTestNotInEffect(bool  is_short_sale_price_test_not_in_effect)
{
	this->is_short_sale_price_test_not_in_effect = is_short_sale_price_test_not_in_effect;
}

bool
Admin.ShortSalePriceTestStatusModel::getIsShortSalePriceTestInEffect()
{
	return is_short_sale_price_test_in_effect;
}

void
Admin.ShortSalePriceTestStatusModel::setIsShortSalePriceTestInEffect(bool  is_short_sale_price_test_in_effect)
{
	this->is_short_sale_price_test_in_effect = is_short_sale_price_test_in_effect;
}

int
Admin.ShortSalePriceTestStatusModel::getDetail()
{
	return detail;
}

void
Admin.ShortSalePriceTestStatusModel::setDetail(int  detail)
{
	this->detail = detail;
}

std::string
Admin.ShortSalePriceTestStatusModel::getDetailCode()
{
	return detail_code;
}

void
Admin.ShortSalePriceTestStatusModel::setDetailCode(std::string  detail_code)
{
	this->detail_code = detail_code;
}

std::string
Admin.ShortSalePriceTestStatusModel::getDetailText()
{
	return detail_text;
}

void
Admin.ShortSalePriceTestStatusModel::setDetailText(std::string  detail_text)
{
	this->detail_text = detail_text;
}

bool
Admin.ShortSalePriceTestStatusModel::getIsDetailNoPriceTest()
{
	return is_detail_no_price_test;
}

void
Admin.ShortSalePriceTestStatusModel::setIsDetailNoPriceTest(bool  is_detail_no_price_test)
{
	this->is_detail_no_price_test = is_detail_no_price_test;
}

bool
Admin.ShortSalePriceTestStatusModel::getIsDetailActivated()
{
	return is_detail_activated;
}

void
Admin.ShortSalePriceTestStatusModel::setIsDetailActivated(bool  is_detail_activated)
{
	this->is_detail_activated = is_detail_activated;
}

bool
Admin.ShortSalePriceTestStatusModel::getIsDetailContinued()
{
	return is_detail_continued;
}

void
Admin.ShortSalePriceTestStatusModel::setIsDetailContinued(bool  is_detail_continued)
{
	this->is_detail_continued = is_detail_continued;
}

bool
Admin.ShortSalePriceTestStatusModel::getIsDetailDeactivated()
{
	return is_detail_deactivated;
}

void
Admin.ShortSalePriceTestStatusModel::setIsDetailDeactivated(bool  is_detail_deactivated)
{
	this->is_detail_deactivated = is_detail_deactivated;
}

bool
Admin.ShortSalePriceTestStatusModel::getIsDetailNotAvailable()
{
	return is_detail_not_available;
}

void
Admin.ShortSalePriceTestStatusModel::setIsDetailNotAvailable(bool  is_detail_not_available)
{
	this->is_detail_not_available = is_detail_not_available;
}


