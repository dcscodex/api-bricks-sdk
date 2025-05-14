#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "DTO.FilingItemDto.h"

using namespace std;
using namespace Tizen::ArtikCloud;

DTO.FilingItemDto::DTO.FilingItemDto()
{
	//__init();
}

DTO.FilingItemDto::~DTO.FilingItemDto()
{
	//__cleanup();
}

void
DTO.FilingItemDto::__init()
{
	//item_number = std::string();
	//item_title = std::string();
	//content = std::string();
}

void
DTO.FilingItemDto::__cleanup()
{
	//if(item_number != NULL) {
	//
	//delete item_number;
	//item_number = NULL;
	//}
	//if(item_title != NULL) {
	//
	//delete item_title;
	//item_title = NULL;
	//}
	//if(content != NULL) {
	//
	//delete content;
	//content = NULL;
	//}
	//
}

void
DTO.FilingItemDto::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *item_numberKey = "item_number";
	node = json_object_get_member(pJsonObject, item_numberKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&item_number, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *item_titleKey = "item_title";
	node = json_object_get_member(pJsonObject, item_titleKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&item_title, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *contentKey = "content";
	node = json_object_get_member(pJsonObject, contentKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&content, node, "std::string", "");
		} else {
			
		}
	}
}

DTO.FilingItemDto::DTO.FilingItemDto(char* json)
{
	this->fromJson(json);
}

char*
DTO.FilingItemDto::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getItemNumber();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *item_numberKey = "item_number";
	json_object_set_member(pJsonObject, item_numberKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getItemTitle();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *item_titleKey = "item_title";
	json_object_set_member(pJsonObject, item_titleKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getContent();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *contentKey = "content";
	json_object_set_member(pJsonObject, contentKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
DTO.FilingItemDto::getItemNumber()
{
	return item_number;
}

void
DTO.FilingItemDto::setItemNumber(std::string  item_number)
{
	this->item_number = item_number;
}

std::string
DTO.FilingItemDto::getItemTitle()
{
	return item_title;
}

void
DTO.FilingItemDto::setItemTitle(std::string  item_title)
{
	this->item_title = item_title;
}

std::string
DTO.FilingItemDto::getContent()
{
	return content;
}

void
DTO.FilingItemDto::setContent(std::string  content)
{
	this->content = content;
}


