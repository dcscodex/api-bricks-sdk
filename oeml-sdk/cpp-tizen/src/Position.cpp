#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Position.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Position::Position()
{
	//__init();
}

Position::~Position()
{
	//__cleanup();
}

void
Position::__init()
{
	//type = std::string();
	//exchange_name = std::string();
	//new std::list()std::list> data;
}

void
Position::__cleanup()
{
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(exchange_name != NULL) {
	//
	//delete exchange_name;
	//exchange_name = NULL;
	//}
	//if(data != NULL) {
	//data.RemoveAll(true);
	//delete data;
	//data = NULL;
	//}
	//
}

void
Position::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *exchange_nameKey = "exchange_name";
	node = json_object_get_member(pJsonObject, exchange_nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchange_name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dataKey = "data";
	node = json_object_get_member(pJsonObject, dataKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Position_data> new_list;
			Position_data inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Position_data")) {
					jsonToValue(&inst, temp_json, "Position_data", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			data = new_list;
		}
		
	}
}

Position::Position(char* json)
{
	this->fromJson(json);
}

char*
Position::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getExchangeName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchange_nameKey = "exchange_name";
	json_object_set_member(pJsonObject, exchange_nameKey, node);
	if (isprimitive("Position_data")) {
		list<Position_data> new_list = static_cast<list <Position_data> > (getData());
		node = converttoJson(&new_list, "Position_data", "array");
	} else {
		node = json_node_alloc();
		list<Position_data> new_list = static_cast<list <Position_data> > (getData());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Position_data>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Position_data obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *dataKey = "data";
	json_object_set_member(pJsonObject, dataKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Position::getType()
{
	return type;
}

void
Position::setType(std::string  type)
{
	this->type = type;
}

std::string
Position::getExchangeName()
{
	return exchange_name;
}

void
Position::setExchangeName(std::string  exchange_name)
{
	this->exchange_name = exchange_name;
}

std::list<Position_data>
Position::getData()
{
	return data;
}

void
Position::setData(std::list <Position_data> data)
{
	this->data = data;
}


