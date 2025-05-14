#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Level3.ExecutedOrderModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Level3.ExecutedOrderModel::Level3.ExecutedOrderModel()
{
	//__init();
}

Level3.ExecutedOrderModel::~Level3.ExecutedOrderModel()
{
	//__cleanup();
}

void
Level3.ExecutedOrderModel::__init()
{
	//symbol = std::string();
	//timestamp_nanos = long(0);
	//timestamp = null;
	//order_id_reference = long(0);
	//sale_condition_flags = int(0);
	//is_intermarket_sweep = bool(false);
	//is_extended_hours_trade = bool(false);
	//is_odd_lot_trade = bool(false);
	//is_trade_through_exempt = bool(false);
	//is_single_price_cross_trade = bool(false);
	//size = int(0);
	//price = double(0);
	//trade_id = long(0);
}

void
Level3.ExecutedOrderModel::__cleanup()
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
	//if(sale_condition_flags != NULL) {
	//
	//delete sale_condition_flags;
	//sale_condition_flags = NULL;
	//}
	//if(is_intermarket_sweep != NULL) {
	//
	//delete is_intermarket_sweep;
	//is_intermarket_sweep = NULL;
	//}
	//if(is_extended_hours_trade != NULL) {
	//
	//delete is_extended_hours_trade;
	//is_extended_hours_trade = NULL;
	//}
	//if(is_odd_lot_trade != NULL) {
	//
	//delete is_odd_lot_trade;
	//is_odd_lot_trade = NULL;
	//}
	//if(is_trade_through_exempt != NULL) {
	//
	//delete is_trade_through_exempt;
	//is_trade_through_exempt = NULL;
	//}
	//if(is_single_price_cross_trade != NULL) {
	//
	//delete is_single_price_cross_trade;
	//is_single_price_cross_trade = NULL;
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
	//if(trade_id != NULL) {
	//
	//delete trade_id;
	//trade_id = NULL;
	//}
	//
}

void
Level3.ExecutedOrderModel::fromJson(char* jsonStr)
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
	const gchar *sale_condition_flagsKey = "sale_condition_flags";
	node = json_object_get_member(pJsonObject, sale_condition_flagsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&sale_condition_flags, node, "int", "");
		} else {
			
		}
	}
	const gchar *is_intermarket_sweepKey = "is_intermarket_sweep";
	node = json_object_get_member(pJsonObject, is_intermarket_sweepKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_intermarket_sweep, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_extended_hours_tradeKey = "is_extended_hours_trade";
	node = json_object_get_member(pJsonObject, is_extended_hours_tradeKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_extended_hours_trade, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_odd_lot_tradeKey = "is_odd_lot_trade";
	node = json_object_get_member(pJsonObject, is_odd_lot_tradeKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_odd_lot_trade, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_trade_through_exemptKey = "is_trade_through_exempt";
	node = json_object_get_member(pJsonObject, is_trade_through_exemptKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_trade_through_exempt, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_single_price_cross_tradeKey = "is_single_price_cross_trade";
	node = json_object_get_member(pJsonObject, is_single_price_cross_tradeKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_single_price_cross_trade, node, "bool", "");
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
	const gchar *trade_idKey = "trade_id";
	node = json_object_get_member(pJsonObject, trade_idKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&trade_id, node, "long long", "");
		} else {
			
		}
	}
}

Level3.ExecutedOrderModel::Level3.ExecutedOrderModel(char* json)
{
	this->fromJson(json);
}

char*
Level3.ExecutedOrderModel::toJson()
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
	if (isprimitive("int")) {
		int obj = getSaleConditionFlags();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *sale_condition_flagsKey = "sale_condition_flags";
	json_object_set_member(pJsonObject, sale_condition_flagsKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsIntermarketSweep();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_intermarket_sweepKey = "is_intermarket_sweep";
	json_object_set_member(pJsonObject, is_intermarket_sweepKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsExtendedHoursTrade();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_extended_hours_tradeKey = "is_extended_hours_trade";
	json_object_set_member(pJsonObject, is_extended_hours_tradeKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsOddLotTrade();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_odd_lot_tradeKey = "is_odd_lot_trade";
	json_object_set_member(pJsonObject, is_odd_lot_tradeKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsTradeThroughExempt();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_trade_through_exemptKey = "is_trade_through_exempt";
	json_object_set_member(pJsonObject, is_trade_through_exemptKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsSinglePriceCrossTrade();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_single_price_cross_tradeKey = "is_single_price_cross_trade";
	json_object_set_member(pJsonObject, is_single_price_cross_tradeKey, node);
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
		long long obj = getTradeId();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *trade_idKey = "trade_id";
	json_object_set_member(pJsonObject, trade_idKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Level3.ExecutedOrderModel::getSymbol()
{
	return symbol;
}

void
Level3.ExecutedOrderModel::setSymbol(std::string  symbol)
{
	this->symbol = symbol;
}

long long
Level3.ExecutedOrderModel::getTimestampNanos()
{
	return timestamp_nanos;
}

void
Level3.ExecutedOrderModel::setTimestampNanos(long long  timestamp_nanos)
{
	this->timestamp_nanos = timestamp_nanos;
}

std::string
Level3.ExecutedOrderModel::getTimestamp()
{
	return timestamp;
}

void
Level3.ExecutedOrderModel::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

long long
Level3.ExecutedOrderModel::getOrderIdReference()
{
	return order_id_reference;
}

void
Level3.ExecutedOrderModel::setOrderIdReference(long long  order_id_reference)
{
	this->order_id_reference = order_id_reference;
}

int
Level3.ExecutedOrderModel::getSaleConditionFlags()
{
	return sale_condition_flags;
}

void
Level3.ExecutedOrderModel::setSaleConditionFlags(int  sale_condition_flags)
{
	this->sale_condition_flags = sale_condition_flags;
}

bool
Level3.ExecutedOrderModel::getIsIntermarketSweep()
{
	return is_intermarket_sweep;
}

void
Level3.ExecutedOrderModel::setIsIntermarketSweep(bool  is_intermarket_sweep)
{
	this->is_intermarket_sweep = is_intermarket_sweep;
}

bool
Level3.ExecutedOrderModel::getIsExtendedHoursTrade()
{
	return is_extended_hours_trade;
}

void
Level3.ExecutedOrderModel::setIsExtendedHoursTrade(bool  is_extended_hours_trade)
{
	this->is_extended_hours_trade = is_extended_hours_trade;
}

bool
Level3.ExecutedOrderModel::getIsOddLotTrade()
{
	return is_odd_lot_trade;
}

void
Level3.ExecutedOrderModel::setIsOddLotTrade(bool  is_odd_lot_trade)
{
	this->is_odd_lot_trade = is_odd_lot_trade;
}

bool
Level3.ExecutedOrderModel::getIsTradeThroughExempt()
{
	return is_trade_through_exempt;
}

void
Level3.ExecutedOrderModel::setIsTradeThroughExempt(bool  is_trade_through_exempt)
{
	this->is_trade_through_exempt = is_trade_through_exempt;
}

bool
Level3.ExecutedOrderModel::getIsSinglePriceCrossTrade()
{
	return is_single_price_cross_trade;
}

void
Level3.ExecutedOrderModel::setIsSinglePriceCrossTrade(bool  is_single_price_cross_trade)
{
	this->is_single_price_cross_trade = is_single_price_cross_trade;
}

int
Level3.ExecutedOrderModel::getSize()
{
	return size;
}

void
Level3.ExecutedOrderModel::setSize(int  size)
{
	this->size = size;
}

double
Level3.ExecutedOrderModel::getPrice()
{
	return price;
}

void
Level3.ExecutedOrderModel::setPrice(double  price)
{
	this->price = price;
}

long long
Level3.ExecutedOrderModel::getTradeId()
{
	return trade_id;
}

void
Level3.ExecutedOrderModel::setTradeId(long long  trade_id)
{
	this->trade_id = trade_id;
}


