#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "FinFeedAPI.ExchangeModel.h"

using namespace std;
using namespace Tizen::ArtikCloud;

FinFeedAPI.ExchangeModel::FinFeedAPI.ExchangeModel()
{
	//__init();
}

FinFeedAPI.ExchangeModel::~FinFeedAPI.ExchangeModel()
{
	//__cleanup();
}

void
FinFeedAPI.ExchangeModel::__init()
{
	//exchange_id = std::string();
	//last_datapoint_date = std::string();
	//mic = std::string();
	//operating_mic = std::string();
	//oprt_sgmt = std::string();
	//market_name_institution_description = std::string();
	//legal_entity_name = std::string();
	//lei = std::string();
	//market_category_code = std::string();
	//acronym = std::string();
	//iso_country_code = std::string();
	//city = std::string();
	//website = std::string();
	//status = std::string();
	//creation_date = null;
	//last_update_date = null;
	//last_validation_date = null;
	//expiry_date = null;
	//comments = std::string();
}

void
FinFeedAPI.ExchangeModel::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(last_datapoint_date != NULL) {
	//
	//delete last_datapoint_date;
	//last_datapoint_date = NULL;
	//}
	//if(mic != NULL) {
	//
	//delete mic;
	//mic = NULL;
	//}
	//if(operating_mic != NULL) {
	//
	//delete operating_mic;
	//operating_mic = NULL;
	//}
	//if(oprt_sgmt != NULL) {
	//
	//delete oprt_sgmt;
	//oprt_sgmt = NULL;
	//}
	//if(market_name_institution_description != NULL) {
	//
	//delete market_name_institution_description;
	//market_name_institution_description = NULL;
	//}
	//if(legal_entity_name != NULL) {
	//
	//delete legal_entity_name;
	//legal_entity_name = NULL;
	//}
	//if(lei != NULL) {
	//
	//delete lei;
	//lei = NULL;
	//}
	//if(market_category_code != NULL) {
	//
	//delete market_category_code;
	//market_category_code = NULL;
	//}
	//if(acronym != NULL) {
	//
	//delete acronym;
	//acronym = NULL;
	//}
	//if(iso_country_code != NULL) {
	//
	//delete iso_country_code;
	//iso_country_code = NULL;
	//}
	//if(city != NULL) {
	//
	//delete city;
	//city = NULL;
	//}
	//if(website != NULL) {
	//
	//delete website;
	//website = NULL;
	//}
	//if(status != NULL) {
	//
	//delete status;
	//status = NULL;
	//}
	//if(creation_date != NULL) {
	//
	//delete creation_date;
	//creation_date = NULL;
	//}
	//if(last_update_date != NULL) {
	//
	//delete last_update_date;
	//last_update_date = NULL;
	//}
	//if(last_validation_date != NULL) {
	//
	//delete last_validation_date;
	//last_validation_date = NULL;
	//}
	//if(expiry_date != NULL) {
	//
	//delete expiry_date;
	//expiry_date = NULL;
	//}
	//if(comments != NULL) {
	//
	//delete comments;
	//comments = NULL;
	//}
	//
}

void
FinFeedAPI.ExchangeModel::fromJson(char* jsonStr)
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
	const gchar *last_datapoint_dateKey = "last_datapoint_date";
	node = json_object_get_member(pJsonObject, last_datapoint_dateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&last_datapoint_date, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *micKey = "mic";
	node = json_object_get_member(pJsonObject, micKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&mic, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *operating_micKey = "operating_mic";
	node = json_object_get_member(pJsonObject, operating_micKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&operating_mic, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *oprt_sgmtKey = "oprt_sgmt";
	node = json_object_get_member(pJsonObject, oprt_sgmtKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&oprt_sgmt, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *market_name_institution_descriptionKey = "market_name_institution_description";
	node = json_object_get_member(pJsonObject, market_name_institution_descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&market_name_institution_description, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *legal_entity_nameKey = "legal_entity_name";
	node = json_object_get_member(pJsonObject, legal_entity_nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&legal_entity_name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *leiKey = "lei";
	node = json_object_get_member(pJsonObject, leiKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lei, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *market_category_codeKey = "market_category_code";
	node = json_object_get_member(pJsonObject, market_category_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&market_category_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *acronymKey = "acronym";
	node = json_object_get_member(pJsonObject, acronymKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&acronym, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iso_country_codeKey = "iso_country_code";
	node = json_object_get_member(pJsonObject, iso_country_codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iso_country_code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cityKey = "city";
	node = json_object_get_member(pJsonObject, cityKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&city, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *websiteKey = "website";
	node = json_object_get_member(pJsonObject, websiteKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&website, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *statusKey = "status";
	node = json_object_get_member(pJsonObject, statusKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&status, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *creation_dateKey = "creation_date";
	node = json_object_get_member(pJsonObject, creation_dateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&creation_date, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *last_update_dateKey = "last_update_date";
	node = json_object_get_member(pJsonObject, last_update_dateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&last_update_date, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *last_validation_dateKey = "last_validation_date";
	node = json_object_get_member(pJsonObject, last_validation_dateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&last_validation_date, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *expiry_dateKey = "expiry_date";
	node = json_object_get_member(pJsonObject, expiry_dateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&expiry_date, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *commentsKey = "comments";
	node = json_object_get_member(pJsonObject, commentsKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&comments, node, "std::string", "");
		} else {
			
		}
	}
}

FinFeedAPI.ExchangeModel::FinFeedAPI.ExchangeModel(char* json)
{
	this->fromJson(json);
}

char*
FinFeedAPI.ExchangeModel::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getLastDatapointDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *last_datapoint_dateKey = "last_datapoint_date";
	json_object_set_member(pJsonObject, last_datapoint_dateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMic();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *micKey = "mic";
	json_object_set_member(pJsonObject, micKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOperatingMic();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *operating_micKey = "operating_mic";
	json_object_set_member(pJsonObject, operating_micKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOprtSgmt();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *oprt_sgmtKey = "oprt_sgmt";
	json_object_set_member(pJsonObject, oprt_sgmtKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMarketNameInstitutionDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *market_name_institution_descriptionKey = "market_name_institution_description";
	json_object_set_member(pJsonObject, market_name_institution_descriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLegalEntityName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *legal_entity_nameKey = "legal_entity_name";
	json_object_set_member(pJsonObject, legal_entity_nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLei();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *leiKey = "lei";
	json_object_set_member(pJsonObject, leiKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMarketCategoryCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *market_category_codeKey = "market_category_code";
	json_object_set_member(pJsonObject, market_category_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAcronym();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *acronymKey = "acronym";
	json_object_set_member(pJsonObject, acronymKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIsoCountryCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iso_country_codeKey = "iso_country_code";
	json_object_set_member(pJsonObject, iso_country_codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCity();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cityKey = "city";
	json_object_set_member(pJsonObject, cityKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getWebsite();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *websiteKey = "website";
	json_object_set_member(pJsonObject, websiteKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getStatus();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *statusKey = "status";
	json_object_set_member(pJsonObject, statusKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCreationDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *creation_dateKey = "creation_date";
	json_object_set_member(pJsonObject, creation_dateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLastUpdateDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *last_update_dateKey = "last_update_date";
	json_object_set_member(pJsonObject, last_update_dateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLastValidationDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *last_validation_dateKey = "last_validation_date";
	json_object_set_member(pJsonObject, last_validation_dateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getExpiryDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *expiry_dateKey = "expiry_date";
	json_object_set_member(pJsonObject, expiry_dateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getComments();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *commentsKey = "comments";
	json_object_set_member(pJsonObject, commentsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
FinFeedAPI.ExchangeModel::getExchangeId()
{
	return exchange_id;
}

void
FinFeedAPI.ExchangeModel::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
FinFeedAPI.ExchangeModel::getLastDatapointDate()
{
	return last_datapoint_date;
}

void
FinFeedAPI.ExchangeModel::setLastDatapointDate(std::string  last_datapoint_date)
{
	this->last_datapoint_date = last_datapoint_date;
}

std::string
FinFeedAPI.ExchangeModel::getMic()
{
	return mic;
}

void
FinFeedAPI.ExchangeModel::setMic(std::string  mic)
{
	this->mic = mic;
}

std::string
FinFeedAPI.ExchangeModel::getOperatingMic()
{
	return operating_mic;
}

void
FinFeedAPI.ExchangeModel::setOperatingMic(std::string  operating_mic)
{
	this->operating_mic = operating_mic;
}

std::string
FinFeedAPI.ExchangeModel::getOprtSgmt()
{
	return oprt_sgmt;
}

void
FinFeedAPI.ExchangeModel::setOprtSgmt(std::string  oprt_sgmt)
{
	this->oprt_sgmt = oprt_sgmt;
}

std::string
FinFeedAPI.ExchangeModel::getMarketNameInstitutionDescription()
{
	return market_name_institution_description;
}

void
FinFeedAPI.ExchangeModel::setMarketNameInstitutionDescription(std::string  market_name_institution_description)
{
	this->market_name_institution_description = market_name_institution_description;
}

std::string
FinFeedAPI.ExchangeModel::getLegalEntityName()
{
	return legal_entity_name;
}

void
FinFeedAPI.ExchangeModel::setLegalEntityName(std::string  legal_entity_name)
{
	this->legal_entity_name = legal_entity_name;
}

std::string
FinFeedAPI.ExchangeModel::getLei()
{
	return lei;
}

void
FinFeedAPI.ExchangeModel::setLei(std::string  lei)
{
	this->lei = lei;
}

std::string
FinFeedAPI.ExchangeModel::getMarketCategoryCode()
{
	return market_category_code;
}

void
FinFeedAPI.ExchangeModel::setMarketCategoryCode(std::string  market_category_code)
{
	this->market_category_code = market_category_code;
}

std::string
FinFeedAPI.ExchangeModel::getAcronym()
{
	return acronym;
}

void
FinFeedAPI.ExchangeModel::setAcronym(std::string  acronym)
{
	this->acronym = acronym;
}

std::string
FinFeedAPI.ExchangeModel::getIsoCountryCode()
{
	return iso_country_code;
}

void
FinFeedAPI.ExchangeModel::setIsoCountryCode(std::string  iso_country_code)
{
	this->iso_country_code = iso_country_code;
}

std::string
FinFeedAPI.ExchangeModel::getCity()
{
	return city;
}

void
FinFeedAPI.ExchangeModel::setCity(std::string  city)
{
	this->city = city;
}

std::string
FinFeedAPI.ExchangeModel::getWebsite()
{
	return website;
}

void
FinFeedAPI.ExchangeModel::setWebsite(std::string  website)
{
	this->website = website;
}

std::string
FinFeedAPI.ExchangeModel::getStatus()
{
	return status;
}

void
FinFeedAPI.ExchangeModel::setStatus(std::string  status)
{
	this->status = status;
}

std::string
FinFeedAPI.ExchangeModel::getCreationDate()
{
	return creation_date;
}

void
FinFeedAPI.ExchangeModel::setCreationDate(std::string  creation_date)
{
	this->creation_date = creation_date;
}

std::string
FinFeedAPI.ExchangeModel::getLastUpdateDate()
{
	return last_update_date;
}

void
FinFeedAPI.ExchangeModel::setLastUpdateDate(std::string  last_update_date)
{
	this->last_update_date = last_update_date;
}

std::string
FinFeedAPI.ExchangeModel::getLastValidationDate()
{
	return last_validation_date;
}

void
FinFeedAPI.ExchangeModel::setLastValidationDate(std::string  last_validation_date)
{
	this->last_validation_date = last_validation_date;
}

std::string
FinFeedAPI.ExchangeModel::getExpiryDate()
{
	return expiry_date;
}

void
FinFeedAPI.ExchangeModel::setExpiryDate(std::string  expiry_date)
{
	this->expiry_date = expiry_date;
}

std::string
FinFeedAPI.ExchangeModel::getComments()
{
	return comments;
}

void
FinFeedAPI.ExchangeModel::setComments(std::string  comments)
{
	this->comments = comments;
}


