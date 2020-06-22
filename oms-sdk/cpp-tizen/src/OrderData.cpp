#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Order_data.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Order_data::Order_data()
{
	//__init();
}

Order_data::~Order_data()
{
	//__cleanup();
}

void
Order_data::__init()
{
	//exchange_id = std::string();
	//id = std::string();
	//client_order_id_format_exchange = std::string();
	//exchange_order_id = std::string();
	//amount_open = double(0);
	//amount_filled = double(0);
	//status = new OrderStatus();
	//new std::list()std::list> time_order;
	//error_message = std::string();
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
Order_data::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(client_order_id_format_exchange != NULL) {
	//
	//delete client_order_id_format_exchange;
	//client_order_id_format_exchange = NULL;
	//}
	//if(exchange_order_id != NULL) {
	//
	//delete exchange_order_id;
	//exchange_order_id = NULL;
	//}
	//if(amount_open != NULL) {
	//
	//delete amount_open;
	//amount_open = NULL;
	//}
	//if(amount_filled != NULL) {
	//
	//delete amount_filled;
	//amount_filled = NULL;
	//}
	//if(status != NULL) {
	//
	//delete status;
	//status = NULL;
	//}
	//if(time_order != NULL) {
	//time_order.RemoveAll(true);
	//delete time_order;
	//time_order = NULL;
	//}
	//if(error_message != NULL) {
	//
	//delete error_message;
	//error_message = NULL;
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
Order_data::fromJson(char* jsonStr)
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
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *client_order_id_format_exchangeKey = "client_order_id_format_exchange";
	node = json_object_get_member(pJsonObject, client_order_id_format_exchangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&client_order_id_format_exchange, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *exchange_order_idKey = "exchange_order_id";
	node = json_object_get_member(pJsonObject, exchange_order_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchange_order_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *amount_openKey = "amount_open";
	node = json_object_get_member(pJsonObject, amount_openKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&amount_open, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&amount_open);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *amount_filledKey = "amount_filled";
	node = json_object_get_member(pJsonObject, amount_filledKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&amount_filled, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&amount_filled);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *statusKey = "status";
	node = json_object_get_member(pJsonObject, statusKey);
	if (node !=NULL) {
	

		if (isprimitive("OrderStatus")) {
			jsonToValue(&status, node, "OrderStatus", "OrderStatus");
		} else {
			
			OrderStatus* obj = static_cast<OrderStatus*> (&status);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *time_orderKey = "time_order";
	node = json_object_get_member(pJsonObject, time_orderKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::list> new_list;
			std::list inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::list")) {
					jsonToValue(&inst, temp_json, "std::list", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			time_order = new_list;
		}
		
	}
	const gchar *error_messageKey = "error_message";
	node = json_object_get_member(pJsonObject, error_messageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&error_message, node, "std::string", "");
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

Order_data::Order_data(char* json)
{
	this->fromJson(json);
}

char*
Order_data::toJson()
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
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getClientOrderIdFormatExchange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *client_order_id_format_exchangeKey = "client_order_id_format_exchange";
	json_object_set_member(pJsonObject, client_order_id_format_exchangeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getExchangeOrderId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchange_order_idKey = "exchange_order_id";
	json_object_set_member(pJsonObject, exchange_order_idKey, node);
	if (isprimitive("long long")) {
		long long obj = getAmountOpen();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getAmountOpen());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *amount_openKey = "amount_open";
	json_object_set_member(pJsonObject, amount_openKey, node);
	if (isprimitive("long long")) {
		long long obj = getAmountFilled();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getAmountFilled());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *amount_filledKey = "amount_filled";
	json_object_set_member(pJsonObject, amount_filledKey, node);
	if (isprimitive("OrderStatus")) {
		OrderStatus obj = getStatus();
		node = converttoJson(&obj, "OrderStatus", "");
	}
	else {
		
		OrderStatus obj = static_cast<OrderStatus> (getStatus());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *statusKey = "status";
	json_object_set_member(pJsonObject, statusKey, node);
	if (isprimitive("std::list")) {
		list<std::list> new_list = static_cast<list <std::list> > (getTimeOrder());
		node = converttoJson(&new_list, "std::list", "array");
	} else {
		node = json_node_alloc();
		list<std::list> new_list = static_cast<list <std::list> > (getTimeOrder());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<std::list>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			std::list obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *time_orderKey = "time_order";
	json_object_set_member(pJsonObject, time_orderKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getErrorMessage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *error_messageKey = "error_message";
	json_object_set_member(pJsonObject, error_messageKey, node);
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
Order_data::getExchangeId()
{
	return exchange_id;
}

void
Order_data::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
Order_data::getId()
{
	return id;
}

void
Order_data::setId(std::string  id)
{
	this->id = id;
}

std::string
Order_data::getClientOrderIdFormatExchange()
{
	return client_order_id_format_exchange;
}

void
Order_data::setClientOrderIdFormatExchange(std::string  client_order_id_format_exchange)
{
	this->client_order_id_format_exchange = client_order_id_format_exchange;
}

std::string
Order_data::getExchangeOrderId()
{
	return exchange_order_id;
}

void
Order_data::setExchangeOrderId(std::string  exchange_order_id)
{
	this->exchange_order_id = exchange_order_id;
}

long long
Order_data::getAmountOpen()
{
	return amount_open;
}

void
Order_data::setAmountOpen(long long  amount_open)
{
	this->amount_open = amount_open;
}

long long
Order_data::getAmountFilled()
{
	return amount_filled;
}

void
Order_data::setAmountFilled(long long  amount_filled)
{
	this->amount_filled = amount_filled;
}

OrderStatus
Order_data::getStatus()
{
	return status;
}

void
Order_data::setStatus(OrderStatus  status)
{
	this->status = status;
}

std::list<std::list>
Order_data::getTimeOrder()
{
	return time_order;
}

void
Order_data::setTimeOrder(std::list <std::list> time_order)
{
	this->time_order = time_order;
}

std::string
Order_data::getErrorMessage()
{
	return error_message;
}

void
Order_data::setErrorMessage(std::string  error_message)
{
	this->error_message = error_message;
}

std::string
Order_data::getClientOrderId()
{
	return client_order_id;
}

void
Order_data::setClientOrderId(std::string  client_order_id)
{
	this->client_order_id = client_order_id;
}

std::string
Order_data::getSymbolExchange()
{
	return symbol_exchange;
}

void
Order_data::setSymbolExchange(std::string  symbol_exchange)
{
	this->symbol_exchange = symbol_exchange;
}

std::string
Order_data::getSymbolCoinapi()
{
	return symbol_coinapi;
}

void
Order_data::setSymbolCoinapi(std::string  symbol_coinapi)
{
	this->symbol_coinapi = symbol_coinapi;
}

long long
Order_data::getAmountOrder()
{
	return amount_order;
}

void
Order_data::setAmountOrder(long long  amount_order)
{
	this->amount_order = amount_order;
}

long long
Order_data::getPrice()
{
	return price;
}

void
Order_data::setPrice(long long  price)
{
	this->price = price;
}

std::string
Order_data::getSide()
{
	return side;
}

void
Order_data::setSide(std::string  side)
{
	this->side = side;
}

std::string
Order_data::getOrderType()
{
	return order_type;
}

void
Order_data::setOrderType(std::string  order_type)
{
	this->order_type = order_type;
}

TimeInForce
Order_data::getTimeInForce()
{
	return time_in_force;
}

void
Order_data::setTimeInForce(TimeInForce  time_in_force)
{
	this->time_in_force = time_in_force;
}

Date
Order_data::getExpireTime()
{
	return expire_time;
}

void
Order_data::setExpireTime(Date  expire_time)
{
	this->expire_time = expire_time;
}

std::list<std::string>
Order_data::getExecInst()
{
	return exec_inst;
}

void
Order_data::setExecInst(std::list <std::string> exec_inst)
{
	this->exec_inst = exec_inst;
}


