#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Indexes.IndexDefinitionInputData.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Indexes.IndexDefinitionInputData::Indexes.IndexDefinitionInputData()
{
	//__init();
}

Indexes.IndexDefinitionInputData::~Indexes.IndexDefinitionInputData()
{
	//__cleanup();
}

void
Indexes.IndexDefinitionInputData::__init()
{
	//exchangeId = std::string();
	//exchangeSymbolId = std::string();
	//baseAssetId = std::string();
	//quoteAssetId = std::string();
	//beginDate = null;
	//endDate = null;
	//status = std::string();
	//statusInfo = std::string();
	//lastModificationTime = null;
}

void
Indexes.IndexDefinitionInputData::__cleanup()
{
	//if(exchangeId != NULL) {
	//
	//delete exchangeId;
	//exchangeId = NULL;
	//}
	//if(exchangeSymbolId != NULL) {
	//
	//delete exchangeSymbolId;
	//exchangeSymbolId = NULL;
	//}
	//if(baseAssetId != NULL) {
	//
	//delete baseAssetId;
	//baseAssetId = NULL;
	//}
	//if(quoteAssetId != NULL) {
	//
	//delete quoteAssetId;
	//quoteAssetId = NULL;
	//}
	//if(beginDate != NULL) {
	//
	//delete beginDate;
	//beginDate = NULL;
	//}
	//if(endDate != NULL) {
	//
	//delete endDate;
	//endDate = NULL;
	//}
	//if(status != NULL) {
	//
	//delete status;
	//status = NULL;
	//}
	//if(statusInfo != NULL) {
	//
	//delete statusInfo;
	//statusInfo = NULL;
	//}
	//if(lastModificationTime != NULL) {
	//
	//delete lastModificationTime;
	//lastModificationTime = NULL;
	//}
	//
}

void
Indexes.IndexDefinitionInputData::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *exchangeIdKey = "exchangeId";
	node = json_object_get_member(pJsonObject, exchangeIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchangeId, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *exchangeSymbolIdKey = "exchangeSymbolId";
	node = json_object_get_member(pJsonObject, exchangeSymbolIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchangeSymbolId, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *baseAssetIdKey = "baseAssetId";
	node = json_object_get_member(pJsonObject, baseAssetIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&baseAssetId, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *quoteAssetIdKey = "quoteAssetId";
	node = json_object_get_member(pJsonObject, quoteAssetIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&quoteAssetId, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *beginDateKey = "beginDate";
	node = json_object_get_member(pJsonObject, beginDateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&beginDate, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *endDateKey = "endDate";
	node = json_object_get_member(pJsonObject, endDateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&endDate, node, "std::string", "");
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
	const gchar *statusInfoKey = "statusInfo";
	node = json_object_get_member(pJsonObject, statusInfoKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&statusInfo, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *lastModificationTimeKey = "lastModificationTime";
	node = json_object_get_member(pJsonObject, lastModificationTimeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lastModificationTime, node, "std::string", "");
		} else {
			
		}
	}
}

Indexes.IndexDefinitionInputData::Indexes.IndexDefinitionInputData(char* json)
{
	this->fromJson(json);
}

char*
Indexes.IndexDefinitionInputData::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getExchangeId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchangeIdKey = "exchangeId";
	json_object_set_member(pJsonObject, exchangeIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getExchangeSymbolId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchangeSymbolIdKey = "exchangeSymbolId";
	json_object_set_member(pJsonObject, exchangeSymbolIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getBaseAssetId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *baseAssetIdKey = "baseAssetId";
	json_object_set_member(pJsonObject, baseAssetIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getQuoteAssetId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *quoteAssetIdKey = "quoteAssetId";
	json_object_set_member(pJsonObject, quoteAssetIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getBeginDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *beginDateKey = "beginDate";
	json_object_set_member(pJsonObject, beginDateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEndDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *endDateKey = "endDate";
	json_object_set_member(pJsonObject, endDateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getStatus();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *statusKey = "status";
	json_object_set_member(pJsonObject, statusKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getStatusInfo();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *statusInfoKey = "statusInfo";
	json_object_set_member(pJsonObject, statusInfoKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLastModificationTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *lastModificationTimeKey = "lastModificationTime";
	json_object_set_member(pJsonObject, lastModificationTimeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Indexes.IndexDefinitionInputData::getExchangeId()
{
	return exchangeId;
}

void
Indexes.IndexDefinitionInputData::setExchangeId(std::string  exchangeId)
{
	this->exchangeId = exchangeId;
}

std::string
Indexes.IndexDefinitionInputData::getExchangeSymbolId()
{
	return exchangeSymbolId;
}

void
Indexes.IndexDefinitionInputData::setExchangeSymbolId(std::string  exchangeSymbolId)
{
	this->exchangeSymbolId = exchangeSymbolId;
}

std::string
Indexes.IndexDefinitionInputData::getBaseAssetId()
{
	return baseAssetId;
}

void
Indexes.IndexDefinitionInputData::setBaseAssetId(std::string  baseAssetId)
{
	this->baseAssetId = baseAssetId;
}

std::string
Indexes.IndexDefinitionInputData::getQuoteAssetId()
{
	return quoteAssetId;
}

void
Indexes.IndexDefinitionInputData::setQuoteAssetId(std::string  quoteAssetId)
{
	this->quoteAssetId = quoteAssetId;
}

std::string
Indexes.IndexDefinitionInputData::getBeginDate()
{
	return beginDate;
}

void
Indexes.IndexDefinitionInputData::setBeginDate(std::string  beginDate)
{
	this->beginDate = beginDate;
}

std::string
Indexes.IndexDefinitionInputData::getEndDate()
{
	return endDate;
}

void
Indexes.IndexDefinitionInputData::setEndDate(std::string  endDate)
{
	this->endDate = endDate;
}

std::string
Indexes.IndexDefinitionInputData::getStatus()
{
	return status;
}

void
Indexes.IndexDefinitionInputData::setStatus(std::string  status)
{
	this->status = status;
}

std::string
Indexes.IndexDefinitionInputData::getStatusInfo()
{
	return statusInfo;
}

void
Indexes.IndexDefinitionInputData::setStatusInfo(std::string  statusInfo)
{
	this->statusInfo = statusInfo;
}

std::string
Indexes.IndexDefinitionInputData::getLastModificationTime()
{
	return lastModificationTime;
}

void
Indexes.IndexDefinitionInputData::setLastModificationTime(std::string  lastModificationTime)
{
	this->lastModificationTime = lastModificationTime;
}


