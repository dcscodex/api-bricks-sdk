#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "DTO.SecFilingResultDto.h"

using namespace std;
using namespace Tizen::ArtikCloud;

DTO.SecFilingResultDto::DTO.SecFilingResultDto()
{
	//__init();
}

DTO.SecFilingResultDto::~DTO.SecFilingResultDto()
{
	//__cleanup();
}

void
DTO.SecFilingResultDto::__init()
{
	//accession_number = std::string();
	//form_type = std::string();
	//filing_date = null;
	//company_name = std::string();
	//cik = long(0);
	//document_filename = std::string();
	//document_description = std::string();
	//source_file = std::string();
}

void
DTO.SecFilingResultDto::__cleanup()
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
	//if(filing_date != NULL) {
	//
	//delete filing_date;
	//filing_date = NULL;
	//}
	//if(company_name != NULL) {
	//
	//delete company_name;
	//company_name = NULL;
	//}
	//if(cik != NULL) {
	//
	//delete cik;
	//cik = NULL;
	//}
	//if(document_filename != NULL) {
	//
	//delete document_filename;
	//document_filename = NULL;
	//}
	//if(document_description != NULL) {
	//
	//delete document_description;
	//document_description = NULL;
	//}
	//if(source_file != NULL) {
	//
	//delete source_file;
	//source_file = NULL;
	//}
	//
}

void
DTO.SecFilingResultDto::fromJson(char* jsonStr)
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
	const gchar *filing_dateKey = "filing_date";
	node = json_object_get_member(pJsonObject, filing_dateKey);
	if (node !=NULL) {
	

		if (isprimitive("Date")) {
			jsonToValue(&filing_date, node, "Date", "Date");
		} else {
			
		}
	}
	const gchar *company_nameKey = "company_name";
	node = json_object_get_member(pJsonObject, company_nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&company_name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cikKey = "cik";
	node = json_object_get_member(pJsonObject, cikKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&cik, node, "long long", "");
		} else {
			
		}
	}
	const gchar *document_filenameKey = "document_filename";
	node = json_object_get_member(pJsonObject, document_filenameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&document_filename, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *document_descriptionKey = "document_description";
	node = json_object_get_member(pJsonObject, document_descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&document_description, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *source_fileKey = "source_file";
	node = json_object_get_member(pJsonObject, source_fileKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&source_file, node, "std::string", "");
		} else {
			
		}
	}
}

DTO.SecFilingResultDto::DTO.SecFilingResultDto(char* json)
{
	this->fromJson(json);
}

char*
DTO.SecFilingResultDto::toJson()
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
	if (isprimitive("Date")) {
		Date obj = getFilingDate();
		node = converttoJson(&obj, "Date", "");
	}
	else {
		
	}
	const gchar *filing_dateKey = "filing_date";
	json_object_set_member(pJsonObject, filing_dateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCompanyName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *company_nameKey = "company_name";
	json_object_set_member(pJsonObject, company_nameKey, node);
	if (isprimitive("long long")) {
		long long obj = getCik();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *cikKey = "cik";
	json_object_set_member(pJsonObject, cikKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDocumentFilename();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *document_filenameKey = "document_filename";
	json_object_set_member(pJsonObject, document_filenameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDocumentDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *document_descriptionKey = "document_description";
	json_object_set_member(pJsonObject, document_descriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSourceFile();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *source_fileKey = "source_file";
	json_object_set_member(pJsonObject, source_fileKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
DTO.SecFilingResultDto::getAccessionNumber()
{
	return accession_number;
}

void
DTO.SecFilingResultDto::setAccessionNumber(std::string  accession_number)
{
	this->accession_number = accession_number;
}

std::string
DTO.SecFilingResultDto::getFormType()
{
	return form_type;
}

void
DTO.SecFilingResultDto::setFormType(std::string  form_type)
{
	this->form_type = form_type;
}

Date
DTO.SecFilingResultDto::getFilingDate()
{
	return filing_date;
}

void
DTO.SecFilingResultDto::setFilingDate(Date  filing_date)
{
	this->filing_date = filing_date;
}

std::string
DTO.SecFilingResultDto::getCompanyName()
{
	return company_name;
}

void
DTO.SecFilingResultDto::setCompanyName(std::string  company_name)
{
	this->company_name = company_name;
}

long long
DTO.SecFilingResultDto::getCik()
{
	return cik;
}

void
DTO.SecFilingResultDto::setCik(long long  cik)
{
	this->cik = cik;
}

std::string
DTO.SecFilingResultDto::getDocumentFilename()
{
	return document_filename;
}

void
DTO.SecFilingResultDto::setDocumentFilename(std::string  document_filename)
{
	this->document_filename = document_filename;
}

std::string
DTO.SecFilingResultDto::getDocumentDescription()
{
	return document_description;
}

void
DTO.SecFilingResultDto::setDocumentDescription(std::string  document_description)
{
	this->document_description = document_description;
}

std::string
DTO.SecFilingResultDto::getSourceFile()
{
	return source_file;
}

void
DTO.SecFilingResultDto::setSourceFile(std::string  source_file)
{
	this->source_file = source_file;
}


