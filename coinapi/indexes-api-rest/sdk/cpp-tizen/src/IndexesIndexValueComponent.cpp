#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Indexes.IndexValueComponent.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Indexes.IndexValueComponent::Indexes.IndexValueComponent()
{
	//__init();
}

Indexes.IndexValueComponent::~Indexes.IndexValueComponent()
{
	//__cleanup();
}

void
Indexes.IndexValueComponent::__init()
{
	//component_id = std::string();
	//component_value = double(0);
}

void
Indexes.IndexValueComponent::__cleanup()
{
	//if(component_id != NULL) {
	//
	//delete component_id;
	//component_id = NULL;
	//}
	//if(component_value != NULL) {
	//
	//delete component_value;
	//component_value = NULL;
	//}
	//
}

void
Indexes.IndexValueComponent::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *component_idKey = "component_id";
	node = json_object_get_member(pJsonObject, component_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&component_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *component_valueKey = "component_value";
	node = json_object_get_member(pJsonObject, component_valueKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&component_value, node, "double", "");
		} else {
			
		}
	}
}

Indexes.IndexValueComponent::Indexes.IndexValueComponent(char* json)
{
	this->fromJson(json);
}

char*
Indexes.IndexValueComponent::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getComponentId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *component_idKey = "component_id";
	json_object_set_member(pJsonObject, component_idKey, node);
	if (isprimitive("double")) {
		double obj = getComponentValue();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *component_valueKey = "component_value";
	json_object_set_member(pJsonObject, component_valueKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Indexes.IndexValueComponent::getComponentId()
{
	return component_id;
}

void
Indexes.IndexValueComponent::setComponentId(std::string  component_id)
{
	this->component_id = component_id;
}

double
Indexes.IndexValueComponent::getComponentValue()
{
	return component_value;
}

void
Indexes.IndexValueComponent::setComponentValue(double  component_value)
{
	this->component_value = component_value;
}


