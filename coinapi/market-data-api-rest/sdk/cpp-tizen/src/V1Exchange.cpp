#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.Exchange.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.Exchange::V1.Exchange()
{
	//__init();
}

V1.Exchange::~V1.Exchange()
{
	//__cleanup();
}

void
V1.Exchange::__init()
{
	//exchange_id = std::string();
	//website = std::string();
	//name = std::string();
	//data_start = std::string();
	//data_end = std::string();
	//data_quote_start = null;
	//data_quote_end = null;
	//data_orderbook_start = null;
	//data_orderbook_end = null;
	//data_trade_start = null;
	//data_trade_end = null;
	//data_trade_count = long(0);
	//data_symbols_count = long(0);
	//volume_1hrs_usd = double(0);
	//volume_1day_usd = double(0);
	//volume_1mth_usd = double(0);
	//new std::list()std::list> metric_id;
	//new std::list()std::list> icons;
	//rank = double(0);
	//integration_status = std::string();
}

void
V1.Exchange::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(website != NULL) {
	//
	//delete website;
	//website = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(data_start != NULL) {
	//
	//delete data_start;
	//data_start = NULL;
	//}
	//if(data_end != NULL) {
	//
	//delete data_end;
	//data_end = NULL;
	//}
	//if(data_quote_start != NULL) {
	//
	//delete data_quote_start;
	//data_quote_start = NULL;
	//}
	//if(data_quote_end != NULL) {
	//
	//delete data_quote_end;
	//data_quote_end = NULL;
	//}
	//if(data_orderbook_start != NULL) {
	//
	//delete data_orderbook_start;
	//data_orderbook_start = NULL;
	//}
	//if(data_orderbook_end != NULL) {
	//
	//delete data_orderbook_end;
	//data_orderbook_end = NULL;
	//}
	//if(data_trade_start != NULL) {
	//
	//delete data_trade_start;
	//data_trade_start = NULL;
	//}
	//if(data_trade_end != NULL) {
	//
	//delete data_trade_end;
	//data_trade_end = NULL;
	//}
	//if(data_trade_count != NULL) {
	//
	//delete data_trade_count;
	//data_trade_count = NULL;
	//}
	//if(data_symbols_count != NULL) {
	//
	//delete data_symbols_count;
	//data_symbols_count = NULL;
	//}
	//if(volume_1hrs_usd != NULL) {
	//
	//delete volume_1hrs_usd;
	//volume_1hrs_usd = NULL;
	//}
	//if(volume_1day_usd != NULL) {
	//
	//delete volume_1day_usd;
	//volume_1day_usd = NULL;
	//}
	//if(volume_1mth_usd != NULL) {
	//
	//delete volume_1mth_usd;
	//volume_1mth_usd = NULL;
	//}
	//if(metric_id != NULL) {
	//metric_id.RemoveAll(true);
	//delete metric_id;
	//metric_id = NULL;
	//}
	//if(icons != NULL) {
	//icons.RemoveAll(true);
	//delete icons;
	//icons = NULL;
	//}
	//if(rank != NULL) {
	//
	//delete rank;
	//rank = NULL;
	//}
	//if(integration_status != NULL) {
	//
	//delete integration_status;
	//integration_status = NULL;
	//}
	//
}

void
V1.Exchange::fromJson(char* jsonStr)
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
	const gchar *websiteKey = "website";
	node = json_object_get_member(pJsonObject, websiteKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&website, node, "std::string", "");
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
	const gchar *data_startKey = "data_start";
	node = json_object_get_member(pJsonObject, data_startKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&data_start, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *data_endKey = "data_end";
	node = json_object_get_member(pJsonObject, data_endKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&data_end, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *data_quote_startKey = "data_quote_start";
	node = json_object_get_member(pJsonObject, data_quote_startKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&data_quote_start, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *data_quote_endKey = "data_quote_end";
	node = json_object_get_member(pJsonObject, data_quote_endKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&data_quote_end, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *data_orderbook_startKey = "data_orderbook_start";
	node = json_object_get_member(pJsonObject, data_orderbook_startKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&data_orderbook_start, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *data_orderbook_endKey = "data_orderbook_end";
	node = json_object_get_member(pJsonObject, data_orderbook_endKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&data_orderbook_end, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *data_trade_startKey = "data_trade_start";
	node = json_object_get_member(pJsonObject, data_trade_startKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&data_trade_start, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *data_trade_endKey = "data_trade_end";
	node = json_object_get_member(pJsonObject, data_trade_endKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&data_trade_end, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *data_trade_countKey = "data_trade_count";
	node = json_object_get_member(pJsonObject, data_trade_countKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&data_trade_count, node, "long long", "");
		} else {
			
		}
	}
	const gchar *data_symbols_countKey = "data_symbols_count";
	node = json_object_get_member(pJsonObject, data_symbols_countKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&data_symbols_count, node, "long long", "");
		} else {
			
		}
	}
	const gchar *volume_1hrs_usdKey = "volume_1hrs_usd";
	node = json_object_get_member(pJsonObject, volume_1hrs_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&volume_1hrs_usd, node, "double", "");
		} else {
			
		}
	}
	const gchar *volume_1day_usdKey = "volume_1day_usd";
	node = json_object_get_member(pJsonObject, volume_1day_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&volume_1day_usd, node, "double", "");
		} else {
			
		}
	}
	const gchar *volume_1mth_usdKey = "volume_1mth_usd";
	node = json_object_get_member(pJsonObject, volume_1mth_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&volume_1mth_usd, node, "double", "");
		} else {
			
		}
	}
	const gchar *metric_idKey = "metric_id";
	node = json_object_get_member(pJsonObject, metric_idKey);
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
			metric_id = new_list;
		}
		
	}
	const gchar *iconsKey = "icons";
	node = json_object_get_member(pJsonObject, iconsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<V1.Icon> new_list;
			V1.Icon inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("V1.Icon")) {
					jsonToValue(&inst, temp_json, "V1.Icon", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			icons = new_list;
		}
		
	}
	const gchar *rankKey = "rank";
	node = json_object_get_member(pJsonObject, rankKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&rank, node, "double", "");
		} else {
			
		}
	}
	const gchar *integration_statusKey = "integration_status";
	node = json_object_get_member(pJsonObject, integration_statusKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&integration_status, node, "std::string", "");
		} else {
			
		}
	}
}

V1.Exchange::V1.Exchange(char* json)
{
	this->fromJson(json);
}

char*
V1.Exchange::toJson()
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
		std::string obj = getWebsite();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *websiteKey = "website";
	json_object_set_member(pJsonObject, websiteKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDataStart();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *data_startKey = "data_start";
	json_object_set_member(pJsonObject, data_startKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDataEnd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *data_endKey = "data_end";
	json_object_set_member(pJsonObject, data_endKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDataQuoteStart();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *data_quote_startKey = "data_quote_start";
	json_object_set_member(pJsonObject, data_quote_startKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDataQuoteEnd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *data_quote_endKey = "data_quote_end";
	json_object_set_member(pJsonObject, data_quote_endKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDataOrderbookStart();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *data_orderbook_startKey = "data_orderbook_start";
	json_object_set_member(pJsonObject, data_orderbook_startKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDataOrderbookEnd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *data_orderbook_endKey = "data_orderbook_end";
	json_object_set_member(pJsonObject, data_orderbook_endKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDataTradeStart();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *data_trade_startKey = "data_trade_start";
	json_object_set_member(pJsonObject, data_trade_startKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDataTradeEnd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *data_trade_endKey = "data_trade_end";
	json_object_set_member(pJsonObject, data_trade_endKey, node);
	if (isprimitive("long long")) {
		long long obj = getDataTradeCount();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *data_trade_countKey = "data_trade_count";
	json_object_set_member(pJsonObject, data_trade_countKey, node);
	if (isprimitive("long long")) {
		long long obj = getDataSymbolsCount();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *data_symbols_countKey = "data_symbols_count";
	json_object_set_member(pJsonObject, data_symbols_countKey, node);
	if (isprimitive("double")) {
		double obj = getVolume1hrsUsd();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *volume_1hrs_usdKey = "volume_1hrs_usd";
	json_object_set_member(pJsonObject, volume_1hrs_usdKey, node);
	if (isprimitive("double")) {
		double obj = getVolume1dayUsd();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *volume_1day_usdKey = "volume_1day_usd";
	json_object_set_member(pJsonObject, volume_1day_usdKey, node);
	if (isprimitive("double")) {
		double obj = getVolume1mthUsd();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *volume_1mth_usdKey = "volume_1mth_usd";
	json_object_set_member(pJsonObject, volume_1mth_usdKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getMetricId());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getMetricId());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *metric_idKey = "metric_id";
	json_object_set_member(pJsonObject, metric_idKey, node);
	if (isprimitive("V1.Icon")) {
		list<V1.Icon> new_list = static_cast<list <V1.Icon> > (getIcons());
		node = converttoJson(&new_list, "V1.Icon", "array");
	} else {
		node = json_node_alloc();
		list<V1.Icon> new_list = static_cast<list <V1.Icon> > (getIcons());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<V1.Icon>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			V1.Icon obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *iconsKey = "icons";
	json_object_set_member(pJsonObject, iconsKey, node);
	if (isprimitive("double")) {
		double obj = getRank();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *rankKey = "rank";
	json_object_set_member(pJsonObject, rankKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIntegrationStatus();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *integration_statusKey = "integration_status";
	json_object_set_member(pJsonObject, integration_statusKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.Exchange::getExchangeId()
{
	return exchange_id;
}

void
V1.Exchange::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
V1.Exchange::getWebsite()
{
	return website;
}

void
V1.Exchange::setWebsite(std::string  website)
{
	this->website = website;
}

std::string
V1.Exchange::getName()
{
	return name;
}

void
V1.Exchange::setName(std::string  name)
{
	this->name = name;
}

std::string
V1.Exchange::getDataStart()
{
	return data_start;
}

void
V1.Exchange::setDataStart(std::string  data_start)
{
	this->data_start = data_start;
}

std::string
V1.Exchange::getDataEnd()
{
	return data_end;
}

void
V1.Exchange::setDataEnd(std::string  data_end)
{
	this->data_end = data_end;
}

std::string
V1.Exchange::getDataQuoteStart()
{
	return data_quote_start;
}

void
V1.Exchange::setDataQuoteStart(std::string  data_quote_start)
{
	this->data_quote_start = data_quote_start;
}

std::string
V1.Exchange::getDataQuoteEnd()
{
	return data_quote_end;
}

void
V1.Exchange::setDataQuoteEnd(std::string  data_quote_end)
{
	this->data_quote_end = data_quote_end;
}

std::string
V1.Exchange::getDataOrderbookStart()
{
	return data_orderbook_start;
}

void
V1.Exchange::setDataOrderbookStart(std::string  data_orderbook_start)
{
	this->data_orderbook_start = data_orderbook_start;
}

std::string
V1.Exchange::getDataOrderbookEnd()
{
	return data_orderbook_end;
}

void
V1.Exchange::setDataOrderbookEnd(std::string  data_orderbook_end)
{
	this->data_orderbook_end = data_orderbook_end;
}

std::string
V1.Exchange::getDataTradeStart()
{
	return data_trade_start;
}

void
V1.Exchange::setDataTradeStart(std::string  data_trade_start)
{
	this->data_trade_start = data_trade_start;
}

std::string
V1.Exchange::getDataTradeEnd()
{
	return data_trade_end;
}

void
V1.Exchange::setDataTradeEnd(std::string  data_trade_end)
{
	this->data_trade_end = data_trade_end;
}

long long
V1.Exchange::getDataTradeCount()
{
	return data_trade_count;
}

void
V1.Exchange::setDataTradeCount(long long  data_trade_count)
{
	this->data_trade_count = data_trade_count;
}

long long
V1.Exchange::getDataSymbolsCount()
{
	return data_symbols_count;
}

void
V1.Exchange::setDataSymbolsCount(long long  data_symbols_count)
{
	this->data_symbols_count = data_symbols_count;
}

double
V1.Exchange::getVolume1hrsUsd()
{
	return volume_1hrs_usd;
}

void
V1.Exchange::setVolume1hrsUsd(double  volume_1hrs_usd)
{
	this->volume_1hrs_usd = volume_1hrs_usd;
}

double
V1.Exchange::getVolume1dayUsd()
{
	return volume_1day_usd;
}

void
V1.Exchange::setVolume1dayUsd(double  volume_1day_usd)
{
	this->volume_1day_usd = volume_1day_usd;
}

double
V1.Exchange::getVolume1mthUsd()
{
	return volume_1mth_usd;
}

void
V1.Exchange::setVolume1mthUsd(double  volume_1mth_usd)
{
	this->volume_1mth_usd = volume_1mth_usd;
}

std::list<std::string>
V1.Exchange::getMetricId()
{
	return metric_id;
}

void
V1.Exchange::setMetricId(std::list <std::string> metric_id)
{
	this->metric_id = metric_id;
}

std::list<V1.Icon>
V1.Exchange::getIcons()
{
	return icons;
}

void
V1.Exchange::setIcons(std::list <V1.Icon> icons)
{
	this->icons = icons;
}

double
V1.Exchange::getRank()
{
	return rank;
}

void
V1.Exchange::setRank(double  rank)
{
	this->rank = rank;
}

std::string
V1.Exchange::getIntegrationStatus()
{
	return integration_status;
}

void
V1.Exchange::setIntegrationStatus(std::string  integration_status)
{
	this->integration_status = integration_status;
}


