#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Level3.ModifyOrderModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Level3.ModifyOrderModel::Level3.ModifyOrderModel()
{
	//__init();
}

Level3.ModifyOrderModel::~Level3.ModifyOrderModel()
{
	//__cleanup();
}

void
Level3.ModifyOrderModel::__init()
{
	//symbol = std::string();
	//timestamp_nanos = long(0);
	//timestamp = null;
	//order_id_reference = long(0);
	//is_priority_reset = bool(false);
	//size = int(0);
	//price = double(0);
}

void
Level3.ModifyOrderModel::__cleanup()
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
	//if(order_id_reference != NULL) {
	//
	//delete order_id_reference;
	//order_id_reference = NULL;
	//}
	//if(is_priority_reset != NULL) {
	//
	//delete is_priority_reset;
	//is_priority_reset = NULL;
	//}
	//if(size != NULL) {
	//
	//delete size;
	//size = NULL;
	//}
	//if(price != NULL) {
	//
	//delete price;
	//price = NULL;
	//}
	//
}

void
Level3.ModifyOrderModel::fromJson(char* jsonStr)
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
	const gchar *order_id_referenceKey = "order_id_reference";
	node = json_object_get_member(pJsonObject, order_id_referenceKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&order_id_reference, node, "long long", "");
		} else {
			
		}
	}
	const gchar *is_priority_resetKey = "is_priority_reset";
	node = json_object_get_member(pJsonObject, is_priority_resetKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_priority_reset, node, "bool", "");
		} else {
			
		}
	}
	const gchar *sizeKey = "size";
	node = json_object_get_member(pJsonObject, sizeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&size, node, "int", "");
		} else {
			
		}
	}
	const gchar *priceKey = "price";
	node = json_object_get_member(pJsonObject, priceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&price, node, "double", "");
		} else {
			
		}
	}
}

Level3.ModifyOrderModel::Level3.ModifyOrderModel(char* json)
{
	this->fromJson(json);
}

char*
Level3.ModifyOrderModel::toJson()
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
	if (isprimitive("long long")) {
		long long obj = getOrderIdReference();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *order_id_referenceKey = "order_id_reference";
	json_object_set_member(pJsonObject, order_id_referenceKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsPriorityReset();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_priority_resetKey = "is_priority_reset";
	json_object_set_member(pJsonObject, is_priority_resetKey, node);
	if (isprimitive("int")) {
		int obj = getSize();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *sizeKey = "size";
	json_object_set_member(pJsonObject, sizeKey, node);
	if (isprimitive("double")) {
		double obj = getPrice();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *priceKey = "price";
	json_object_set_member(pJsonObject, priceKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Level3.ModifyOrderModel::getSymbol()
{
	return symbol;
}

void
Level3.ModifyOrderModel::setSymbol(std::string  symbol)
{
	this->symbol = symbol;
}

long long
Level3.ModifyOrderModel::getTimestampNanos()
{
	return timestamp_nanos;
}

void
Level3.ModifyOrderModel::setTimestampNanos(long long  timestamp_nanos)
{
	this->timestamp_nanos = timestamp_nanos;
}

std::string
Level3.ModifyOrderModel::getTimestamp()
{
	return timestamp;
}

void
Level3.ModifyOrderModel::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

long long
Level3.ModifyOrderModel::getOrderIdReference()
{
	return order_id_reference;
}

void
Level3.ModifyOrderModel::setOrderIdReference(long long  order_id_reference)
{
	this->order_id_reference = order_id_reference;
}

bool
Level3.ModifyOrderModel::getIsPriorityReset()
{
	return is_priority_reset;
}

void
Level3.ModifyOrderModel::setIsPriorityReset(bool  is_priority_reset)
{
	this->is_priority_reset = is_priority_reset;
}

int
Level3.ModifyOrderModel::getSize()
{
	return size;
}

void
Level3.ModifyOrderModel::setSize(int  size)
{
	this->size = size;
}

double
Level3.ModifyOrderModel::getPrice()
{
	return price;
}

void
Level3.ModifyOrderModel::setPrice(double  price)
{
	this->price = price;
}


