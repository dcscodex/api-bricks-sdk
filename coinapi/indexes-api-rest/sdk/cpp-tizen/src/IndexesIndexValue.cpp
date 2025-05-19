#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Indexes.IndexValue.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Indexes.IndexValue::Indexes.IndexValue()
{
	//__init();
}

Indexes.IndexValue::~Indexes.IndexValue()
{
	//__cleanup();
}

void
Indexes.IndexValue::__init()
{
	//timestamp = null;
	//value = double(0);
	//new std::list()std::list> composition;
}

void
Indexes.IndexValue::__cleanup()
{
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(value != NULL) {
	//
	//delete value;
	//value = NULL;
	//}
	//if(composition != NULL) {
	//composition.RemoveAll(true);
	//delete composition;
	//composition = NULL;
	//}
	//
}

void
Indexes.IndexValue::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *timestampKey = "timestamp";
	node = json_object_get_member(pJsonObject, timestampKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&timestamp, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *valueKey = "value";
	node = json_object_get_member(pJsonObject, valueKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&value, node, "double", "");
		} else {
			
		}
	}
	const gchar *compositionKey = "composition";
	node = json_object_get_member(pJsonObject, compositionKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Indexes.IndexValueComponent> new_list;
			Indexes.IndexValueComponent inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Indexes.IndexValueComponent")) {
					jsonToValue(&inst, temp_json, "Indexes.IndexValueComponent", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			composition = new_list;
		}
		
	}
}

Indexes.IndexValue::Indexes.IndexValue(char* json)
{
	this->fromJson(json);
}

char*
Indexes.IndexValue::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("double")) {
		double obj = getValue();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *valueKey = "value";
	json_object_set_member(pJsonObject, valueKey, node);
	if (isprimitive("Indexes.IndexValueComponent")) {
		list<Indexes.IndexValueComponent> new_list = static_cast<list <Indexes.IndexValueComponent> > (getComposition());
		node = converttoJson(&new_list, "Indexes.IndexValueComponent", "array");
	} else {
		node = json_node_alloc();
		list<Indexes.IndexValueComponent> new_list = static_cast<list <Indexes.IndexValueComponent> > (getComposition());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Indexes.IndexValueComponent>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Indexes.IndexValueComponent obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *compositionKey = "composition";
	json_object_set_member(pJsonObject, compositionKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Indexes.IndexValue::getTimestamp()
{
	return timestamp;
}

void
Indexes.IndexValue::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

double
Indexes.IndexValue::getValue()
{
	return value;
}

void
Indexes.IndexValue::setValue(double  value)
{
	this->value = value;
}

std::list<Indexes.IndexValueComponent>
Indexes.IndexValue::getComposition()
{
	return composition;
}

void
Indexes.IndexValue::setComposition(std::list <Indexes.IndexValueComponent> composition)
{
	this->composition = composition;
}


