#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "NewOrder.h"

using namespace std;
using namespace Tizen::ArtikCloud;

NewOrder::NewOrder()
{
	//__init();
}

NewOrder::~NewOrder()
{
	//__cleanup();
}

void
NewOrder::__init()
{
	//exchange_id = std::string();
	//client_order_id = std::string();
	//symbol_exchange = std::string();
	//symbol_coinapi = std::string();
	//amount_order = double(0);
	//price = double(0);
	//side = std::string();
	//order_type = std::string();
	//time_in_force = new TimeInForce();
	//expire_time = null;
	//new std::list()std::list> exec_inst;
}

void
NewOrder::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(client_order_id != NULL) {
	//
	//delete client_order_id;
	//client_order_id = NULL;
	//}
	//if(symbol_exchange != NULL) {
	//
	//delete symbol_exchange;
	//symbol_exchange = NULL;
	//}
	//if(symbol_coinapi != NULL) {
	//
	//delete symbol_coinapi;
	//symbol_coinapi = NULL;
	//}
	//if(amount_order != NULL) {
	//
	//delete amount_order;
	//amount_order = NULL;
	//}
	//if(price != NULL) {
	//
	//delete price;
	//price = NULL;
	//}
	//if(side != NULL) {
	//
	//delete side;
	//side = NULL;
	//}
	//if(order_type != NULL) {
	//
	//delete order_type;
	//order_type = NULL;
	//}
	//if(time_in_force != NULL) {
	//
	//delete time_in_force;
	//time_in_force = NULL;
	//}
	//if(expire_time != NULL) {
	//
	//delete expire_time;
	//expire_time = NULL;
	//}
	//if(exec_inst != NULL) {
	//exec_inst.RemoveAll(true);
	//delete exec_inst;
	//exec_inst = NULL;
	//}
	//
}

void
NewOrder::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *exchange_idKey = "exchange_id";
	node = json_object_get_member(pJsonObject, exchange_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchange_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *client_order_idKey = "client_order_id";
	node = json_object_get_member(pJsonObject, client_order_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&client_order_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *symbol_exchangeKey = "symbol_exchange";
	node = json_object_get_member(pJsonObject, symbol_exchangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol_exchange, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *symbol_coinapiKey = "symbol_coinapi";
	node = json_object_get_member(pJsonObject, symbol_coinapiKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol_coinapi, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *amount_orderKey = "amount_order";
	node = json_object_get_member(pJsonObject, amount_orderKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&amount_order, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&amount_order);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priceKey = "price";
	node = json_object_get_member(pJsonObject, priceKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&price, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&price);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *sideKey = "side";
	node = json_object_get_member(pJsonObject, sideKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&side, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *order_typeKey = "order_type";
	node = json_object_get_member(pJsonObject, order_typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&order_type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *time_in_forceKey = "time_in_force";
	node = json_object_get_member(pJsonObject, time_in_forceKey);
	if (node !=NULL) {
	

		if (isprimitive("TimeInForce")) {
			jsonToValue(&time_in_force, node, "TimeInForce", "TimeInForce");
		} else {
			
			TimeInForce* obj = static_cast<TimeInForce*> (&time_in_force);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *expire_timeKey = "expire_time";
	node = json_object_get_member(pJsonObject, expire_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("Date")) {
			jsonToValue(&expire_time, node, "Date", "Date");
		} else {
			
			Date* obj = static_cast<Date*> (&expire_time);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *exec_instKey = "exec_inst";
	node = json_object_get_member(pJsonObject, exec_instKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			exec_inst = new_list;
		}
		
	}
}

NewOrder::NewOrder(char* json)
{
	this->fromJson(json);
}

char*
NewOrder::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getExchangeId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchange_idKey = "exchange_id";
	json_object_set_member(pJsonObject, exchange_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getClientOrderId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *client_order_idKey = "client_order_id";
	json_object_set_member(pJsonObject, client_order_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSymbolExchange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbol_exchangeKey = "symbol_exchange";
	json_object_set_member(pJsonObject, symbol_exchangeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSymbolCoinapi();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbol_coinapiKey = "symbol_coinapi";
	json_object_set_member(pJsonObject, symbol_coinapiKey, node);
	if (isprimitive("long long")) {
		long long obj = getAmountOrder();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getAmountOrder());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *amount_orderKey = "amount_order";
	json_object_set_member(pJsonObject, amount_orderKey, node);
	if (isprimitive("long long")) {
		long long obj = getPrice();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getPrice());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priceKey = "price";
	json_object_set_member(pJsonObject, priceKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSide();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *sideKey = "side";
	json_object_set_member(pJsonObject, sideKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOrderType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *order_typeKey = "order_type";
	json_object_set_member(pJsonObject, order_typeKey, node);
	if (isprimitive("TimeInForce")) {
		TimeInForce obj = getTimeInForce();
		node = converttoJson(&obj, "TimeInForce", "");
	}
	else {
		
		TimeInForce obj = static_cast<TimeInForce> (getTimeInForce());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *time_in_forceKey = "time_in_force";
	json_object_set_member(pJsonObject, time_in_forceKey, node);
	if (isprimitive("Date")) {
		Date obj = getExpireTime();
		node = converttoJson(&obj, "Date", "");
	}
	else {
		
		Date obj = static_cast<Date> (getExpireTime());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *expire_timeKey = "expire_time";
	json_object_set_member(pJsonObject, expire_timeKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getExecInst());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getExecInst());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *exec_instKey = "exec_inst";
	json_object_set_member(pJsonObject, exec_instKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
NewOrder::getExchangeId()
{
	return exchange_id;
}

void
NewOrder::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
NewOrder::getClientOrderId()
{
	return client_order_id;
}

void
NewOrder::setClientOrderId(std::string  client_order_id)
{
	this->client_order_id = client_order_id;
}

std::string
NewOrder::getSymbolExchange()
{
	return symbol_exchange;
}

void
NewOrder::setSymbolExchange(std::string  symbol_exchange)
{
	this->symbol_exchange = symbol_exchange;
}

std::string
NewOrder::getSymbolCoinapi()
{
	return symbol_coinapi;
}

void
NewOrder::setSymbolCoinapi(std::string  symbol_coinapi)
{
	this->symbol_coinapi = symbol_coinapi;
}

long long
NewOrder::getAmountOrder()
{
	return amount_order;
}

void
NewOrder::setAmountOrder(long long  amount_order)
{
	this->amount_order = amount_order;
}

long long
NewOrder::getPrice()
{
	return price;
}

void
NewOrder::setPrice(long long  price)
{
	this->price = price;
}

std::string
NewOrder::getSide()
{
	return side;
}

void
NewOrder::setSide(std::string  side)
{
	this->side = side;
}

std::string
NewOrder::getOrderType()
{
	return order_type;
}

void
NewOrder::setOrderType(std::string  order_type)
{
	this->order_type = order_type;
}

TimeInForce
NewOrder::getTimeInForce()
{
	return time_in_force;
}

void
NewOrder::setTimeInForce(TimeInForce  time_in_force)
{
	this->time_in_force = time_in_force;
}

Date
NewOrder::getExpireTime()
{
	return expire_time;
}

void
NewOrder::setExpireTime(Date  expire_time)
{
	this->expire_time = expire_time;
}

std::list<std::string>
NewOrder::getExecInst()
{
	return exec_inst;
}

void
NewOrder::setExecInst(std::list <std::string> exec_inst)
{
	this->exec_inst = exec_inst;
}


