#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Options.OptionExchangeGroup.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Options.OptionExchangeGroup::Options.OptionExchangeGroup()
{
	//__init();
}

Options.OptionExchangeGroup::~Options.OptionExchangeGroup()
{
	//__cleanup();
}

void
Options.OptionExchangeGroup::__init()
{
	//asset_id_base = std::string();
	//asset_id_quote = std::string();
	//underlying_price = double(0);
	//time_expiration = null;
	//new std::list()std::list> strikes;
}

void
Options.OptionExchangeGroup::__cleanup()
{
	//if(asset_id_base != NULL) {
	//
	//delete asset_id_base;
	//asset_id_base = NULL;
	//}
	//if(asset_id_quote != NULL) {
	//
	//delete asset_id_quote;
	//asset_id_quote = NULL;
	//}
	//if(underlying_price != NULL) {
	//
	//delete underlying_price;
	//underlying_price = NULL;
	//}
	//if(time_expiration != NULL) {
	//
	//delete time_expiration;
	//time_expiration = NULL;
	//}
	//if(strikes != NULL) {
	//strikes.RemoveAll(true);
	//delete strikes;
	//strikes = NULL;
	//}
	//
}

void
Options.OptionExchangeGroup::fromJson(char* jsonStr)
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
	const gchar *asset_id_quoteKey = "asset_id_quote";
	node = json_object_get_member(pJsonObject, asset_id_quoteKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id_quote, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *underlying_priceKey = "underlying_price";
	node = json_object_get_member(pJsonObject, underlying_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&underlying_price, node, "double", "");
		} else {
			
		}
	}
	const gchar *time_expirationKey = "time_expiration";
	node = json_object_get_member(pJsonObject, time_expirationKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&time_expiration, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *strikesKey = "strikes";
	node = json_object_get_member(pJsonObject, strikesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Options.Strike> new_list;
			Options.Strike inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Options.Strike")) {
					jsonToValue(&inst, temp_json, "Options.Strike", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			strikes = new_list;
		}
		
	}
}

Options.OptionExchangeGroup::Options.OptionExchangeGroup(char* json)
{
	this->fromJson(json);
}

char*
Options.OptionExchangeGroup::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getAssetIdQuote();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_id_quoteKey = "asset_id_quote";
	json_object_set_member(pJsonObject, asset_id_quoteKey, node);
	if (isprimitive("double")) {
		double obj = getUnderlyingPrice();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *underlying_priceKey = "underlying_price";
	json_object_set_member(pJsonObject, underlying_priceKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimeExpiration();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *time_expirationKey = "time_expiration";
	json_object_set_member(pJsonObject, time_expirationKey, node);
	if (isprimitive("Options.Strike")) {
		list<Options.Strike> new_list = static_cast<list <Options.Strike> > (getStrikes());
		node = converttoJson(&new_list, "Options.Strike", "array");
	} else {
		node = json_node_alloc();
		list<Options.Strike> new_list = static_cast<list <Options.Strike> > (getStrikes());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Options.Strike>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Options.Strike obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *strikesKey = "strikes";
	json_object_set_member(pJsonObject, strikesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Options.OptionExchangeGroup::getAssetIdBase()
{
	return asset_id_base;
}

void
Options.OptionExchangeGroup::setAssetIdBase(std::string  asset_id_base)
{
	this->asset_id_base = asset_id_base;
}

std::string
Options.OptionExchangeGroup::getAssetIdQuote()
{
	return asset_id_quote;
}

void
Options.OptionExchangeGroup::setAssetIdQuote(std::string  asset_id_quote)
{
	this->asset_id_quote = asset_id_quote;
}

double
Options.OptionExchangeGroup::getUnderlyingPrice()
{
	return underlying_price;
}

void
Options.OptionExchangeGroup::setUnderlyingPrice(double  underlying_price)
{
	this->underlying_price = underlying_price;
}

std::string
Options.OptionExchangeGroup::getTimeExpiration()
{
	return time_expiration;
}

void
Options.OptionExchangeGroup::setTimeExpiration(std::string  time_expiration)
{
	this->time_expiration = time_expiration;
}

std::list<Options.Strike>
Options.OptionExchangeGroup::getStrikes()
{
	return strikes;
}

void
Options.OptionExchangeGroup::setStrikes(std::list <Options.Strike> strikes)
{
	this->strikes = strikes;
}


