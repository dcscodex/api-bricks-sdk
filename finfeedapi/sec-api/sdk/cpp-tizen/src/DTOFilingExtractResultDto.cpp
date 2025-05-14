#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "DTO.FilingExtractResultDto.h"

using namespace std;
using namespace Tizen::ArtikCloud;

DTO.FilingExtractResultDto::DTO.FilingExtractResultDto()
{
	//__init();
}

DTO.FilingExtractResultDto::~DTO.FilingExtractResultDto()
{
	//__cleanup();
}

void
DTO.FilingExtractResultDto::__init()
{
	//accession_number = std::string();
	//form_type = std::string();
	//new std::list()std::list> items;
}

void
DTO.FilingExtractResultDto::__cleanup()
{
	//if(accession_number != NULL) {
	//
	//delete accession_number;
	//accession_number = NULL;
	//}
	//if(form_type != NULL) {
	//
	//delete form_type;
	//form_type = NULL;
	//}
	//if(items != NULL) {
	//items.RemoveAll(true);
	//delete items;
	//items = NULL;
	//}
	//
}

void
DTO.FilingExtractResultDto::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *accession_numberKey = "accession_number";
	node = json_object_get_member(pJsonObject, accession_numberKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&accession_number, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *form_typeKey = "form_type";
	node = json_object_get_member(pJsonObject, form_typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&form_type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *itemsKey = "items";
	node = json_object_get_member(pJsonObject, itemsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<DTO.FilingItemDto> new_list;
			DTO.FilingItemDto inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("DTO.FilingItemDto")) {
					jsonToValue(&inst, temp_json, "DTO.FilingItemDto", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			items = new_list;
		}
		
	}
}

DTO.FilingExtractResultDto::DTO.FilingExtractResultDto(char* json)
{
	this->fromJson(json);
}

char*
DTO.FilingExtractResultDto::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getAccessionNumber();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *accession_numberKey = "accession_number";
	json_object_set_member(pJsonObject, accession_numberKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFormType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *form_typeKey = "form_type";
	json_object_set_member(pJsonObject, form_typeKey, node);
	if (isprimitive("DTO.FilingItemDto")) {
		list<DTO.FilingItemDto> new_list = static_cast<list <DTO.FilingItemDto> > (getItems());
		node = converttoJson(&new_list, "DTO.FilingItemDto", "array");
	} else {
		node = json_node_alloc();
		list<DTO.FilingItemDto> new_list = static_cast<list <DTO.FilingItemDto> > (getItems());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<DTO.FilingItemDto>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			DTO.FilingItemDto obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *itemsKey = "items";
	json_object_set_member(pJsonObject, itemsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
DTO.FilingExtractResultDto::getAccessionNumber()
{
	return accession_number;
}

void
DTO.FilingExtractResultDto::setAccessionNumber(std::string  accession_number)
{
	this->accession_number = accession_number;
}

std::string
DTO.FilingExtractResultDto::getFormType()
{
	return form_type;
}

void
DTO.FilingExtractResultDto::setFormType(std::string  form_type)
{
	this->form_type = form_type;
}

std::list<DTO.FilingItemDto>
DTO.FilingExtractResultDto::getItems()
{
	return items;
}

void
DTO.FilingExtractResultDto::setItems(std::list <DTO.FilingItemDto> items)
{
	this->items = items;
}


