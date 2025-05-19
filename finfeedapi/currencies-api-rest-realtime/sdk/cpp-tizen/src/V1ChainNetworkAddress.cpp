#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "V1.ChainNetworkAddress.h"

using namespace std;
using namespace Tizen::ArtikCloud;

V1.ChainNetworkAddress::V1.ChainNetworkAddress()
{
	//__init();
}

V1.ChainNetworkAddress::~V1.ChainNetworkAddress()
{
	//__cleanup();
}

void
V1.ChainNetworkAddress::__init()
{
	//chain_id = std::string();
	//network_id = std::string();
	//address = std::string();
}

void
V1.ChainNetworkAddress::__cleanup()
{
	//if(chain_id != NULL) {
	//
	//delete chain_id;
	//chain_id = NULL;
	//}
	//if(network_id != NULL) {
	//
	//delete network_id;
	//network_id = NULL;
	//}
	//if(address != NULL) {
	//
	//delete address;
	//address = NULL;
	//}
	//
}

void
V1.ChainNetworkAddress::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *chain_idKey = "chain_id";
	node = json_object_get_member(pJsonObject, chain_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&chain_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *network_idKey = "network_id";
	node = json_object_get_member(pJsonObject, network_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&network_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *addressKey = "address";
	node = json_object_get_member(pJsonObject, addressKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&address, node, "std::string", "");
		} else {
			
		}
	}
}

V1.ChainNetworkAddress::V1.ChainNetworkAddress(char* json)
{
	this->fromJson(json);
}

char*
V1.ChainNetworkAddress::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getChainId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *chain_idKey = "chain_id";
	json_object_set_member(pJsonObject, chain_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getNetworkId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *network_idKey = "network_id";
	json_object_set_member(pJsonObject, network_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAddress();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *addressKey = "address";
	json_object_set_member(pJsonObject, addressKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
V1.ChainNetworkAddress::getChainId()
{
	return chain_id;
}

void
V1.ChainNetworkAddress::setChainId(std::string  chain_id)
{
	this->chain_id = chain_id;
}

std::string
V1.ChainNetworkAddress::getNetworkId()
{
	return network_id;
}

void
V1.ChainNetworkAddress::setNetworkId(std::string  network_id)
{
	this->network_id = network_id;
}

std::string
V1.ChainNetworkAddress::getAddress()
{
	return address;
}

void
V1.ChainNetworkAddress::setAddress(std::string  address)
{
	this->address = address;
}


