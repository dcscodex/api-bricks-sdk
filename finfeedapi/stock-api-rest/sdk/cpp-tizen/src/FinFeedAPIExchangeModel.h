/*
 * FinFeedAPI.ExchangeModel.h
 *
 * 
 */

#ifndef _FinFeedAPI.ExchangeModel_H_
#define _FinFeedAPI.ExchangeModel_H_


#include <string>
#include "AnyType.h"
#include <map>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class FinFeedAPI.ExchangeModel : public Object {
public:
	/*! \brief Constructor.
	 */
	FinFeedAPI.ExchangeModel();
	FinFeedAPI.ExchangeModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~FinFeedAPI.ExchangeModel();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getExchangeId();

	/*! \brief Set 
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get 
	 */
	std::string getLastDatapointDate();

	/*! \brief Set 
	 */
	void setLastDatapointDate(std::string  last_datapoint_date);
	/*! \brief Get 
	 */
	std::string getMic();

	/*! \brief Set 
	 */
	void setMic(std::string  mic);
	/*! \brief Get 
	 */
	std::string getOperatingMic();

	/*! \brief Set 
	 */
	void setOperatingMic(std::string  operating_mic);
	/*! \brief Get 
	 */
	std::string getOprtSgmt();

	/*! \brief Set 
	 */
	void setOprtSgmt(std::string  oprt_sgmt);
	/*! \brief Get 
	 */
	std::string getMarketNameInstitutionDescription();

	/*! \brief Set 
	 */
	void setMarketNameInstitutionDescription(std::string  market_name_institution_description);
	/*! \brief Get 
	 */
	std::string getLegalEntityName();

	/*! \brief Set 
	 */
	void setLegalEntityName(std::string  legal_entity_name);
	/*! \brief Get 
	 */
	std::string getLei();

	/*! \brief Set 
	 */
	void setLei(std::string  lei);
	/*! \brief Get 
	 */
	std::string getMarketCategoryCode();

	/*! \brief Set 
	 */
	void setMarketCategoryCode(std::string  market_category_code);
	/*! \brief Get 
	 */
	std::string getAcronym();

	/*! \brief Set 
	 */
	void setAcronym(std::string  acronym);
	/*! \brief Get 
	 */
	std::string getIsoCountryCode();

	/*! \brief Set 
	 */
	void setIsoCountryCode(std::string  iso_country_code);
	/*! \brief Get 
	 */
	std::string getCity();

	/*! \brief Set 
	 */
	void setCity(std::string  city);
	/*! \brief Get 
	 */
	std::string getWebsite();

	/*! \brief Set 
	 */
	void setWebsite(std::string  website);
	/*! \brief Get 
	 */
	std::string getStatus();

	/*! \brief Set 
	 */
	void setStatus(std::string  status);
	/*! \brief Get 
	 */
	std::string getCreationDate();

	/*! \brief Set 
	 */
	void setCreationDate(std::string  creation_date);
	/*! \brief Get 
	 */
	std::string getLastUpdateDate();

	/*! \brief Set 
	 */
	void setLastUpdateDate(std::string  last_update_date);
	/*! \brief Get 
	 */
	std::string getLastValidationDate();

	/*! \brief Set 
	 */
	void setLastValidationDate(std::string  last_validation_date);
	/*! \brief Get 
	 */
	std::string getExpiryDate();

	/*! \brief Set 
	 */
	void setExpiryDate(std::string  expiry_date);
	/*! \brief Get 
	 */
	std::string getComments();

	/*! \brief Set 
	 */
	void setComments(std::string  comments);

private:
	std::string exchange_id;
	std::string last_datapoint_date;
	std::string mic;
	std::string operating_mic;
	std::string oprt_sgmt;
	std::string market_name_institution_description;
	std::string legal_entity_name;
	std::string lei;
	std::string market_category_code;
	std::string acronym;
	std::string iso_country_code;
	std::string city;
	std::string website;
	std::string status;
	std::string creation_date;
	std::string last_update_date;
	std::string last_validation_date;
	std::string expiry_date;
	std::string comments;
	void __init();
	void __cleanup();

};
}
}

#endif /* _FinFeedAPI.ExchangeModel_H_ */
