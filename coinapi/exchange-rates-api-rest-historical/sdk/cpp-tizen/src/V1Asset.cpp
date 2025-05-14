#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.Asset.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.Asset::V1.Asset()
{
	//__init();
}

V1.Asset::~V1.Asset()
{
	//__cleanup();
}

void
V1.Asset::__init()
{
	//asset_id = std::string();
	//name = std::string();
	//type_is_crypto = int(0);
	//data_quote_start = null;
	//data_quote_end = null;
	//data_orderbook_start = null;
	//data_orderbook_end = null;
	//data_trade_start = null;
	//data_trade_end = null;
	//data_symbols_count = long(0);
	//volume_1hrs_usd = double(0);
	//volume_1day_usd = double(0);
	//volume_1mth_usd = double(0);
	//price_usd = double(0);
	//id_icon = std::string();
	//supply_current = double(0);
	//supply_total = double(0);
	//supply_max = double(0);
	//new std::list()std::list> chain_addresses;
	//data_start = std::string();
	//data_end = std::string();
}

void
V1.Asset::__cleanup()
{
	//if(asset_id != NULL) {
	//
	//delete asset_id;
	//asset_id = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(type_is_crypto != NULL) {
	//
	//delete type_is_crypto;
	//type_is_crypto = NULL;
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
	//if(price_usd != NULL) {
	//
	//delete price_usd;
	//price_usd = NULL;
	//}
	//if(id_icon != NULL) {
	//
	//delete id_icon;
	//id_icon = NULL;
	//}
	//if(supply_current != NULL) {
	//
	//delete supply_current;
	//supply_current = NULL;
	//}
	//if(supply_total != NULL) {
	//
	//delete supply_total;
	//supply_total = NULL;
	//}
	//if(supply_max != NULL) {
	//
	//delete supply_max;
	//supply_max = NULL;
	//}
	//if(chain_addresses != NULL) {
	//chain_addresses.RemoveAll(true);
	//delete chain_addresses;
	//chain_addresses = NULL;
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
	//
}

void
V1.Asset::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *asset_idKey = "asset_id";
	node = json_object_get_member(pJsonObject, asset_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id, node, "std::string", "");
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
	const gchar *type_is_cryptoKey = "type_is_crypto";
	node = json_object_get_member(pJsonObject, type_is_cryptoKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&type_is_crypto, node, "int", "");
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
	const gchar *price_usdKey = "price_usd";
	node = json_object_get_member(pJsonObject, price_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&price_usd, node, "double", "");
		} else {
			
		}
	}
	const gchar *id_iconKey = "id_icon";
	node = json_object_get_member(pJsonObject, id_iconKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id_icon, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *supply_currentKey = "supply_current";
	node = json_object_get_member(pJsonObject, supply_currentKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&supply_current, node, "double", "");
		} else {
			
		}
	}
	const gchar *supply_totalKey = "supply_total";
	node = json_object_get_member(pJsonObject, supply_totalKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&supply_total, node, "double", "");
		} else {
			
		}
	}
	const gchar *supply_maxKey = "supply_max";
	node = json_object_get_member(pJsonObject, supply_maxKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&supply_max, node, "double", "");
		} else {
			
		}
	}
	const gchar *chain_addressesKey = "chain_addresses";
	node = json_object_get_member(pJsonObject, chain_addressesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<V1.ChainNetworkAddress> new_list;
			V1.ChainNetworkAddress inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("V1.ChainNetworkAddress")) {
					jsonToValue(&inst, temp_json, "V1.ChainNetworkAddress", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			chain_addresses = new_list;
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
}

V1.Asset::V1.Asset(char* json)
{
	this->fromJson(json);
}

char*
V1.Asset::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getAssetId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_idKey = "asset_id";
	json_object_set_member(pJsonObject, asset_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("int")) {
		int obj = getTypeIsCrypto();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *type_is_cryptoKey = "type_is_crypto";
	json_object_set_member(pJsonObject, type_is_cryptoKey, node);
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
	if (isprimitive("double")) {
		double obj = getPriceUsd();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *price_usdKey = "price_usd";
	json_object_set_member(pJsonObject, price_usdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIdIcon();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *id_iconKey = "id_icon";
	json_object_set_member(pJsonObject, id_iconKey, node);
	if (isprimitive("double")) {
		double obj = getSupplyCurrent();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *supply_currentKey = "supply_current";
	json_object_set_member(pJsonObject, supply_currentKey, node);
	if (isprimitive("double")) {
		double obj = getSupplyTotal();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *supply_totalKey = "supply_total";
	json_object_set_member(pJsonObject, supply_totalKey, node);
	if (isprimitive("double")) {
		double obj = getSupplyMax();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *supply_maxKey = "supply_max";
	json_object_set_member(pJsonObject, supply_maxKey, node);
	if (isprimitive("V1.ChainNetworkAddress")) {
		list<V1.ChainNetworkAddress> new_list = static_cast<list <V1.ChainNetworkAddress> > (getChainAddresses());
		node = converttoJson(&new_list, "V1.ChainNetworkAddress", "array");
	} else {
		node = json_node_alloc();
		list<V1.ChainNetworkAddress> new_list = static_cast<list <V1.ChainNetworkAddress> > (getChainAddresses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<V1.ChainNetworkAddress>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			V1.ChainNetworkAddress obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *chain_addressesKey = "chain_addresses";
	json_object_set_member(pJsonObject, chain_addressesKey, node);
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.Asset::getAssetId()
{
	return asset_id;
}

void
V1.Asset::setAssetId(std::string  asset_id)
{
	this->asset_id = asset_id;
}

std::string
V1.Asset::getName()
{
	return name;
}

void
V1.Asset::setName(std::string  name)
{
	this->name = name;
}

int
V1.Asset::getTypeIsCrypto()
{
	return type_is_crypto;
}

void
V1.Asset::setTypeIsCrypto(int  type_is_crypto)
{
	this->type_is_crypto = type_is_crypto;
}

std::string
V1.Asset::getDataQuoteStart()
{
	return data_quote_start;
}

void
V1.Asset::setDataQuoteStart(std::string  data_quote_start)
{
	this->data_quote_start = data_quote_start;
}

std::string
V1.Asset::getDataQuoteEnd()
{
	return data_quote_end;
}

void
V1.Asset::setDataQuoteEnd(std::string  data_quote_end)
{
	this->data_quote_end = data_quote_end;
}

std::string
V1.Asset::getDataOrderbookStart()
{
	return data_orderbook_start;
}

void
V1.Asset::setDataOrderbookStart(std::string  data_orderbook_start)
{
	this->data_orderbook_start = data_orderbook_start;
}

std::string
V1.Asset::getDataOrderbookEnd()
{
	return data_orderbook_end;
}

void
V1.Asset::setDataOrderbookEnd(std::string  data_orderbook_end)
{
	this->data_orderbook_end = data_orderbook_end;
}

std::string
V1.Asset::getDataTradeStart()
{
	return data_trade_start;
}

void
V1.Asset::setDataTradeStart(std::string  data_trade_start)
{
	this->data_trade_start = data_trade_start;
}

std::string
V1.Asset::getDataTradeEnd()
{
	return data_trade_end;
}

void
V1.Asset::setDataTradeEnd(std::string  data_trade_end)
{
	this->data_trade_end = data_trade_end;
}

long long
V1.Asset::getDataSymbolsCount()
{
	return data_symbols_count;
}

void
V1.Asset::setDataSymbolsCount(long long  data_symbols_count)
{
	this->data_symbols_count = data_symbols_count;
}

double
V1.Asset::getVolume1hrsUsd()
{
	return volume_1hrs_usd;
}

void
V1.Asset::setVolume1hrsUsd(double  volume_1hrs_usd)
{
	this->volume_1hrs_usd = volume_1hrs_usd;
}

double
V1.Asset::getVolume1dayUsd()
{
	return volume_1day_usd;
}

void
V1.Asset::setVolume1dayUsd(double  volume_1day_usd)
{
	this->volume_1day_usd = volume_1day_usd;
}

double
V1.Asset::getVolume1mthUsd()
{
	return volume_1mth_usd;
}

void
V1.Asset::setVolume1mthUsd(double  volume_1mth_usd)
{
	this->volume_1mth_usd = volume_1mth_usd;
}

double
V1.Asset::getPriceUsd()
{
	return price_usd;
}

void
V1.Asset::setPriceUsd(double  price_usd)
{
	this->price_usd = price_usd;
}

std::string
V1.Asset::getIdIcon()
{
	return id_icon;
}

void
V1.Asset::setIdIcon(std::string  id_icon)
{
	this->id_icon = id_icon;
}

double
V1.Asset::getSupplyCurrent()
{
	return supply_current;
}

void
V1.Asset::setSupplyCurrent(double  supply_current)
{
	this->supply_current = supply_current;
}

double
V1.Asset::getSupplyTotal()
{
	return supply_total;
}

void
V1.Asset::setSupplyTotal(double  supply_total)
{
	this->supply_total = supply_total;
}

double
V1.Asset::getSupplyMax()
{
	return supply_max;
}

void
V1.Asset::setSupplyMax(double  supply_max)
{
	this->supply_max = supply_max;
}

std::list<V1.ChainNetworkAddress>
V1.Asset::getChainAddresses()
{
	return chain_addresses;
}

void
V1.Asset::setChainAddresses(std::list <V1.ChainNetworkAddress> chain_addresses)
{
	this->chain_addresses = chain_addresses;
}

std::string
V1.Asset::getDataStart()
{
	return data_start;
}

void
V1.Asset::setDataStart(std::string  data_start)
{
	this->data_start = data_start;
}

std::string
V1.Asset::getDataEnd()
{
	return data_end;
}

void
V1.Asset::setDataEnd(std::string  data_end)
{
	this->data_end = data_end;
}


