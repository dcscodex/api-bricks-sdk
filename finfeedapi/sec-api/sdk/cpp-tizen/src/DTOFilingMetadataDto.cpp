#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "DTO.FilingMetadataDto.h"

using namespace std;
using namespace Tizen::ArtikCloud;

DTO.FilingMetadataDto::DTO.FilingMetadataDto()
{
	//__init();
}

DTO.FilingMetadataDto::~DTO.FilingMetadataDto()
{
	//__cleanup();
}

void
DTO.FilingMetadataDto::__init()
{
	//cik = long(0);
	//accession_number = std::string();
	//filing_date = null;
	//report_date = null;
	//acceptance_date_time = null;
	//act = std::string();
	//form = std::string();
	//file_number = std::string();
	//film_number = std::string();
	//items = std::string();
	//core_type = std::string();
	//size = int(0);
	//is_xbrl = bool(false);
	//is_inline_xbrl = bool(false);
	//primary_document = std::string();
	//primary_doc_description = std::string();
	//source_file = std::string();
}

void
DTO.FilingMetadataDto::__cleanup()
{
	//if(cik != NULL) {
	//
	//delete cik;
	//cik = NULL;
	//}
	//if(accession_number != NULL) {
	//
	//delete accession_number;
	//accession_number = NULL;
	//}
	//if(filing_date != NULL) {
	//
	//delete filing_date;
	//filing_date = NULL;
	//}
	//if(report_date != NULL) {
	//
	//delete report_date;
	//report_date = NULL;
	//}
	//if(acceptance_date_time != NULL) {
	//
	//delete acceptance_date_time;
	//acceptance_date_time = NULL;
	//}
	//if(act != NULL) {
	//
	//delete act;
	//act = NULL;
	//}
	//if(form != NULL) {
	//
	//delete form;
	//form = NULL;
	//}
	//if(file_number != NULL) {
	//
	//delete file_number;
	//file_number = NULL;
	//}
	//if(film_number != NULL) {
	//
	//delete film_number;
	//film_number = NULL;
	//}
	//if(items != NULL) {
	//
	//delete items;
	//items = NULL;
	//}
	//if(core_type != NULL) {
	//
	//delete core_type;
	//core_type = NULL;
	//}
	//if(size != NULL) {
	//
	//delete size;
	//size = NULL;
	//}
	//if(is_xbrl != NULL) {
	//
	//delete is_xbrl;
	//is_xbrl = NULL;
	//}
	//if(is_inline_xbrl != NULL) {
	//
	//delete is_inline_xbrl;
	//is_inline_xbrl = NULL;
	//}
	//if(primary_document != NULL) {
	//
	//delete primary_document;
	//primary_document = NULL;
	//}
	//if(primary_doc_description != NULL) {
	//
	//delete primary_doc_description;
	//primary_doc_description = NULL;
	//}
	//if(source_file != NULL) {
	//
	//delete source_file;
	//source_file = NULL;
	//}
	//
}

void
DTO.FilingMetadataDto::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *cikKey = "cik";
	node = json_object_get_member(pJsonObject, cikKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&cik, node, "long long", "");
		} else {
			
		}
	}
	const gchar *accession_numberKey = "accession_number";
	node = json_object_get_member(pJsonObject, accession_numberKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&accession_number, node, "std::string", "");
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
	const gchar *report_dateKey = "report_date";
	node = json_object_get_member(pJsonObject, report_dateKey);
	if (node !=NULL) {
	

		if (isprimitive("Date")) {
			jsonToValue(&report_date, node, "Date", "Date");
		} else {
			
		}
	}
	const gchar *acceptance_date_timeKey = "acceptance_date_time";
	node = json_object_get_member(pJsonObject, acceptance_date_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&acceptance_date_time, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *actKey = "act";
	node = json_object_get_member(pJsonObject, actKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&act, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *formKey = "form";
	node = json_object_get_member(pJsonObject, formKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&form, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *file_numberKey = "file_number";
	node = json_object_get_member(pJsonObject, file_numberKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&file_number, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *film_numberKey = "film_number";
	node = json_object_get_member(pJsonObject, film_numberKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&film_number, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *itemsKey = "items";
	node = json_object_get_member(pJsonObject, itemsKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&items, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *core_typeKey = "core_type";
	node = json_object_get_member(pJsonObject, core_typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&core_type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *sizeKey = "size";
	node = json_object_get_member(pJsonObject, sizeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&size, node, "int", "");
		} else {
			
		}
	}
	const gchar *is_xbrlKey = "is_xbrl";
	node = json_object_get_member(pJsonObject, is_xbrlKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_xbrl, node, "bool", "");
		} else {
			
		}
	}
	const gchar *is_inline_xbrlKey = "is_inline_xbrl";
	node = json_object_get_member(pJsonObject, is_inline_xbrlKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_inline_xbrl, node, "bool", "");
		} else {
			
		}
	}
	const gchar *primary_documentKey = "primary_document";
	node = json_object_get_member(pJsonObject, primary_documentKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&primary_document, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *primary_doc_descriptionKey = "primary_doc_description";
	node = json_object_get_member(pJsonObject, primary_doc_descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&primary_doc_description, node, "std::string", "");
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

DTO.FilingMetadataDto::DTO.FilingMetadataDto(char* json)
{
	this->fromJson(json);
}

char*
DTO.FilingMetadataDto::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("long long")) {
		long long obj = getCik();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *cikKey = "cik";
	json_object_set_member(pJsonObject, cikKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAccessionNumber();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *accession_numberKey = "accession_number";
	json_object_set_member(pJsonObject, accession_numberKey, node);
	if (isprimitive("Date")) {
		Date obj = getFilingDate();
		node = converttoJson(&obj, "Date", "");
	}
	else {
		
	}
	const gchar *filing_dateKey = "filing_date";
	json_object_set_member(pJsonObject, filing_dateKey, node);
	if (isprimitive("Date")) {
		Date obj = getReportDate();
		node = converttoJson(&obj, "Date", "");
	}
	else {
		
	}
	const gchar *report_dateKey = "report_date";
	json_object_set_member(pJsonObject, report_dateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAcceptanceDateTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *acceptance_date_timeKey = "acceptance_date_time";
	json_object_set_member(pJsonObject, acceptance_date_timeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAct();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *actKey = "act";
	json_object_set_member(pJsonObject, actKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getForm();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *formKey = "form";
	json_object_set_member(pJsonObject, formKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFileNumber();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *file_numberKey = "file_number";
	json_object_set_member(pJsonObject, file_numberKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFilmNumber();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *film_numberKey = "film_number";
	json_object_set_member(pJsonObject, film_numberKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getItems();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *itemsKey = "items";
	json_object_set_member(pJsonObject, itemsKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCoreType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *core_typeKey = "core_type";
	json_object_set_member(pJsonObject, core_typeKey, node);
	if (isprimitive("int")) {
		int obj = getSize();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *sizeKey = "size";
	json_object_set_member(pJsonObject, sizeKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsXbrl();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_xbrlKey = "is_xbrl";
	json_object_set_member(pJsonObject, is_xbrlKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsInlineXbrl();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_inline_xbrlKey = "is_inline_xbrl";
	json_object_set_member(pJsonObject, is_inline_xbrlKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPrimaryDocument();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *primary_documentKey = "primary_document";
	json_object_set_member(pJsonObject, primary_documentKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPrimaryDocDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *primary_doc_descriptionKey = "primary_doc_description";
	json_object_set_member(pJsonObject, primary_doc_descriptionKey, node);
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

long long
DTO.FilingMetadataDto::getCik()
{
	return cik;
}

void
DTO.FilingMetadataDto::setCik(long long  cik)
{
	this->cik = cik;
}

std::string
DTO.FilingMetadataDto::getAccessionNumber()
{
	return accession_number;
}

void
DTO.FilingMetadataDto::setAccessionNumber(std::string  accession_number)
{
	this->accession_number = accession_number;
}

Date
DTO.FilingMetadataDto::getFilingDate()
{
	return filing_date;
}

void
DTO.FilingMetadataDto::setFilingDate(Date  filing_date)
{
	this->filing_date = filing_date;
}

Date
DTO.FilingMetadataDto::getReportDate()
{
	return report_date;
}

void
DTO.FilingMetadataDto::setReportDate(Date  report_date)
{
	this->report_date = report_date;
}

std::string
DTO.FilingMetadataDto::getAcceptanceDateTime()
{
	return acceptance_date_time;
}

void
DTO.FilingMetadataDto::setAcceptanceDateTime(std::string  acceptance_date_time)
{
	this->acceptance_date_time = acceptance_date_time;
}

std::string
DTO.FilingMetadataDto::getAct()
{
	return act;
}

void
DTO.FilingMetadataDto::setAct(std::string  act)
{
	this->act = act;
}

std::string
DTO.FilingMetadataDto::getForm()
{
	return form;
}

void
DTO.FilingMetadataDto::setForm(std::string  form)
{
	this->form = form;
}

std::string
DTO.FilingMetadataDto::getFileNumber()
{
	return file_number;
}

void
DTO.FilingMetadataDto::setFileNumber(std::string  file_number)
{
	this->file_number = file_number;
}

std::string
DTO.FilingMetadataDto::getFilmNumber()
{
	return film_number;
}

void
DTO.FilingMetadataDto::setFilmNumber(std::string  film_number)
{
	this->film_number = film_number;
}

std::string
DTO.FilingMetadataDto::getItems()
{
	return items;
}

void
DTO.FilingMetadataDto::setItems(std::string  items)
{
	this->items = items;
}

std::string
DTO.FilingMetadataDto::getCoreType()
{
	return core_type;
}

void
DTO.FilingMetadataDto::setCoreType(std::string  core_type)
{
	this->core_type = core_type;
}

int
DTO.FilingMetadataDto::getSize()
{
	return size;
}

void
DTO.FilingMetadataDto::setSize(int  size)
{
	this->size = size;
}

bool
DTO.FilingMetadataDto::getIsXbrl()
{
	return is_xbrl;
}

void
DTO.FilingMetadataDto::setIsXbrl(bool  is_xbrl)
{
	this->is_xbrl = is_xbrl;
}

bool
DTO.FilingMetadataDto::getIsInlineXbrl()
{
	return is_inline_xbrl;
}

void
DTO.FilingMetadataDto::setIsInlineXbrl(bool  is_inline_xbrl)
{
	this->is_inline_xbrl = is_inline_xbrl;
}

std::string
DTO.FilingMetadataDto::getPrimaryDocument()
{
	return primary_document;
}

void
DTO.FilingMetadataDto::setPrimaryDocument(std::string  primary_document)
{
	this->primary_document = primary_document;
}

std::string
DTO.FilingMetadataDto::getPrimaryDocDescription()
{
	return primary_doc_description;
}

void
DTO.FilingMetadataDto::setPrimaryDocDescription(std::string  primary_doc_description)
{
	this->primary_doc_description = primary_doc_description;
}

std::string
DTO.FilingMetadataDto::getSourceFile()
{
	return source_file;
}

void
DTO.FilingMetadataDto::setSourceFile(std::string  source_file)
{
	this->source_file = source_file;
}


