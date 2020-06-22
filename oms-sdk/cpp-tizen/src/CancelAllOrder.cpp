#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CancelAllOrder.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CancelAllOrder::CancelAllOrder()
{
	//__init();
}

CancelAllOrder::~CancelAllOrder()
{
	//__cleanup();
}

void
CancelAllOrder::__init()
{
	//exchange_id = std::string();
}

void
CancelAllOrder::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//
}

void
CancelAllOrder::fromJson(char* jsonStr)
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
}

CancelAllOrder::CancelAllOrder(char* json)
{
	this->fromJson(json);
}

char*
CancelAllOrder::toJson()
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CancelAllOrder::getExchangeId()
{
	return exchange_id;
}

void
CancelAllOrder::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}


