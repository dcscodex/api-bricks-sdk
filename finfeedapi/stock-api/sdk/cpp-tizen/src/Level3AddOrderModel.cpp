#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Level3.AddOrderModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Level3.AddOrderModel::Level3.AddOrderModel()
{
	//__init();
}

Level3.AddOrderModel::~Level3.AddOrderModel()
{
	//__cleanup();
}

void
Level3.AddOrderModel::__init()
{
	//symbol = std::string();
	//timestamp_nanos = long(0);
	//timestamp = null;
	//is_side_buy = bool(false);
	//size = int(0);
	//price = double(0);
	//order_id = long(0);
}

void
Level3.AddOrderModel::__cleanup()
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
	//if(is_side_buy != NULL) {
	//
	//delete is_side_buy;
	//is_side_buy = NULL;
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
	//if(order_id != NULL) {
	//
	//delete order_id;
	//order_id = NULL;
	//}
	//
}

void
Level3.AddOrderModel::fromJson(char* jsonStr)
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
	const gchar *is_side_buyKey = "is_side_buy";
	node = json_object_get_member(pJsonObject, is_side_buyKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_side_buy, node, "bool", "");
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
	const gchar *order_idKey = "order_id";
	node = json_object_get_member(pJsonObject, order_idKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&order_id, node, "long long", "");
		} else {
			
		}
	}
}

Level3.AddOrderModel::Level3.AddOrderModel(char* json)
{
	this->fromJson(json);
}

char*
Level3.AddOrderModel::toJson()
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
	if (isprimitive("bool")) {
		bool obj = getIsSideBuy();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_side_buyKey = "is_side_buy";
	json_object_set_member(pJsonObject, is_side_buyKey, node);
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
	if (isprimitive("long long")) {
		long long obj = getOrderId();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *order_idKey = "order_id";
	json_object_set_member(pJsonObject, order_idKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Level3.AddOrderModel::getSymbol()
{
	return symbol;
}

void
Level3.AddOrderModel::setSymbol(std::string  symbol)
{
	this->symbol = symbol;
}

long long
Level3.AddOrderModel::getTimestampNanos()
{
	return timestamp_nanos;
}

void
Level3.AddOrderModel::setTimestampNanos(long long  timestamp_nanos)
{
	this->timestamp_nanos = timestamp_nanos;
}

std::string
Level3.AddOrderModel::getTimestamp()
{
	return timestamp;
}

void
Level3.AddOrderModel::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

bool
Level3.AddOrderModel::getIsSideBuy()
{
	return is_side_buy;
}

void
Level3.AddOrderModel::setIsSideBuy(bool  is_side_buy)
{
	this->is_side_buy = is_side_buy;
}

int
Level3.AddOrderModel::getSize()
{
	return size;
}

void
Level3.AddOrderModel::setSize(int  size)
{
	this->size = size;
}

double
Level3.AddOrderModel::getPrice()
{
	return price;
}

void
Level3.AddOrderModel::setPrice(double  price)
{
	this->price = price;
}

long long
Level3.AddOrderModel::getOrderId()
{
	return order_id;
}

void
Level3.AddOrderModel::setOrderId(long long  order_id)
{
	this->order_id = order_id;
}


