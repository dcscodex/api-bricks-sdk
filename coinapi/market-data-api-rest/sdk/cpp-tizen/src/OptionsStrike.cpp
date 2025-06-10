#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Options.Strike.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Options.Strike::Options.Strike()
{
	//__init();
}

Options.Strike::~Options.Strike()
{
	//__cleanup();
}

void
Options.Strike::__init()
{
	//strike_price = double(0);
	//call = new V1.QuoteTrade();
	//put = new V1.QuoteTrade();
}

void
Options.Strike::__cleanup()
{
	//if(strike_price != NULL) {
	//
	//delete strike_price;
	//strike_price = NULL;
	//}
	//if(call != NULL) {
	//
	//delete call;
	//call = NULL;
	//}
	//if(put != NULL) {
	//
	//delete put;
	//put = NULL;
	//}
	//
}

void
Options.Strike::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *strike_priceKey = "strike_price";
	node = json_object_get_member(pJsonObject, strike_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&strike_price, node, "double", "");
		} else {
			
		}
	}
	const gchar *callKey = "call";
	node = json_object_get_member(pJsonObject, callKey);
	if (node !=NULL) {
	

		if (isprimitive("V1.QuoteTrade")) {
			jsonToValue(&call, node, "V1.QuoteTrade", "V1.QuoteTrade");
		} else {
			
			V1.QuoteTrade* obj = static_cast<V1.QuoteTrade*> (&call);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *putKey = "put";
	node = json_object_get_member(pJsonObject, putKey);
	if (node !=NULL) {
	

		if (isprimitive("V1.QuoteTrade")) {
			jsonToValue(&put, node, "V1.QuoteTrade", "V1.QuoteTrade");
		} else {
			
			V1.QuoteTrade* obj = static_cast<V1.QuoteTrade*> (&put);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

Options.Strike::Options.Strike(char* json)
{
	this->fromJson(json);
}

char*
Options.Strike::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("double")) {
		double obj = getStrikePrice();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *strike_priceKey = "strike_price";
	json_object_set_member(pJsonObject, strike_priceKey, node);
	if (isprimitive("V1.QuoteTrade")) {
		V1.QuoteTrade obj = getCall();
		node = converttoJson(&obj, "V1.QuoteTrade", "");
	}
	else {
		
		V1.QuoteTrade obj = static_cast<V1.QuoteTrade> (getCall());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *callKey = "call";
	json_object_set_member(pJsonObject, callKey, node);
	if (isprimitive("V1.QuoteTrade")) {
		V1.QuoteTrade obj = getPut();
		node = converttoJson(&obj, "V1.QuoteTrade", "");
	}
	else {
		
		V1.QuoteTrade obj = static_cast<V1.QuoteTrade> (getPut());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *putKey = "put";
	json_object_set_member(pJsonObject, putKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

double
Options.Strike::getStrikePrice()
{
	return strike_price;
}

void
Options.Strike::setStrikePrice(double  strike_price)
{
	this->strike_price = strike_price;
}

V1.QuoteTrade
Options.Strike::getCall()
{
	return call;
}

void
Options.Strike::setCall(V1.QuoteTrade  call)
{
	this->call = call;
}

V1.QuoteTrade
Options.Strike::getPut()
{
	return put;
}

void
Options.Strike::setPut(V1.QuoteTrade  put)
{
	this->put = put;
}


