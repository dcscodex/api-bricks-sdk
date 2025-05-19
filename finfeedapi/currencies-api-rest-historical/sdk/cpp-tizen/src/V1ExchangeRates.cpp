#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.ExchangeRates.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.ExchangeRates::V1.ExchangeRates()
{
	//__init();
}

V1.ExchangeRates::~V1.ExchangeRates()
{
	//__cleanup();
}

void
V1.ExchangeRates::__init()
{
	//asset_id_base = std::string();
	//new std::list()std::list> rates;
}

void
V1.ExchangeRates::__cleanup()
{
	//if(asset_id_base != NULL) {
	//
	//delete asset_id_base;
	//asset_id_base = NULL;
	//}
	//if(rates != NULL) {
	//rates.RemoveAll(true);
	//delete rates;
	//rates = NULL;
	//}
	//
}

void
V1.ExchangeRates::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *asset_id_baseKey = "asset_id_base";
	node = json_object_get_member(pJsonObject, asset_id_baseKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id_base, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *ratesKey = "rates";
	node = json_object_get_member(pJsonObject, ratesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<V1.ExchangeRatesRate> new_list;
			V1.ExchangeRatesRate inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("V1.ExchangeRatesRate")) {
					jsonToValue(&inst, temp_json, "V1.ExchangeRatesRate", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			rates = new_list;
		}
		
	}
}

V1.ExchangeRates::V1.ExchangeRates(char* json)
{
	this->fromJson(json);
}

char*
V1.ExchangeRates::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getAssetIdBase();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_id_baseKey = "asset_id_base";
	json_object_set_member(pJsonObject, asset_id_baseKey, node);
	if (isprimitive("V1.ExchangeRatesRate")) {
		list<V1.ExchangeRatesRate> new_list = static_cast<list <V1.ExchangeRatesRate> > (getRates());
		node = converttoJson(&new_list, "V1.ExchangeRatesRate", "array");
	} else {
		node = json_node_alloc();
		list<V1.ExchangeRatesRate> new_list = static_cast<list <V1.ExchangeRatesRate> > (getRates());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<V1.ExchangeRatesRate>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			V1.ExchangeRatesRate obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *ratesKey = "rates";
	json_object_set_member(pJsonObject, ratesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.ExchangeRates::getAssetIdBase()
{
	return asset_id_base;
}

void
V1.ExchangeRates::setAssetIdBase(std::string  asset_id_base)
{
	this->asset_id_base = asset_id_base;
}

std::list<V1.ExchangeRatesRate>
V1.ExchangeRates::getRates()
{
	return rates;
}

void
V1.ExchangeRates::setRates(std::list <V1.ExchangeRatesRate> rates)
{
	this->rates = rates;
}


