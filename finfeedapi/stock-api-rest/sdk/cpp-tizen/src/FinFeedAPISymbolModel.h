/*
 * FinFeedAPI.SymbolModel.h
 *
 * 
 */

#ifndef _FinFeedAPI.SymbolModel_H_
#define _FinFeedAPI.SymbolModel_H_


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

class FinFeedAPI.SymbolModel : public Object {
public:
	/*! \brief Constructor.
	 */
	FinFeedAPI.SymbolModel();
	FinFeedAPI.SymbolModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~FinFeedAPI.SymbolModel();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getSymbolId();

	/*! \brief Set 
	 */
	void setSymbolId(std::string  symbol_id);
	/*! \brief Get 
	 */
	std::string getExchangeId();

	/*! \brief Set 
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get 
	 */
	std::string getSecurityCategory();

	/*! \brief Set 
	 */
	void setSecurityCategory(std::string  security_category);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getDate();

	/*! \brief Set 
	 */
	void setDate(std::string  date);
	/*! \brief Get 
	 */
	std::string getAssetClass();

	/*! \brief Set 
	 */
	void setAssetClass(std::string  asset_class);
	/*! \brief Get 
	 */
	std::string getCfiCode();

	/*! \brief Set 
	 */
	void setCfiCode(std::string  cfi_code);
	/*! \brief Get 
	 */
	std::string getCfiCategory();

	/*! \brief Set 
	 */
	void setCfiCategory(std::string  cfi_category);
	/*! \brief Get 
	 */
	std::string getCfiGroup();

	/*! \brief Set 
	 */
	void setCfiGroup(std::string  cfi_group);
	/*! \brief Get 
	 */
	std::string getCfiAttribute1();

	/*! \brief Set 
	 */
	void setCfiAttribute1(std::string  cfi_attribute1);
	/*! \brief Get 
	 */
	std::string getCfiAttribute2();

	/*! \brief Set 
	 */
	void setCfiAttribute2(std::string  cfi_attribute2);
	/*! \brief Get 
	 */
	std::string getCfiAttribute3();

	/*! \brief Set 
	 */
	void setCfiAttribute3(std::string  cfi_attribute3);
	/*! \brief Get 
	 */
	std::string getCfiAttribute4();

	/*! \brief Set 
	 */
	void setCfiAttribute4(std::string  cfi_attribute4);
	/*! \brief Get 
	 */
	std::string getCfiCategoryDesc();

	/*! \brief Set 
	 */
	void setCfiCategoryDesc(std::string  cfi_category_desc);
	/*! \brief Get 
	 */
	std::string getCfiGroupDesc();

	/*! \brief Set 
	 */
	void setCfiGroupDesc(std::string  cfi_group_desc);
	/*! \brief Get 
	 */
	std::string getCfiAttribute1Desc();

	/*! \brief Set 
	 */
	void setCfiAttribute1Desc(std::string  cfi_attribute1_desc);
	/*! \brief Get 
	 */
	std::string getCfiAttribute2Desc();

	/*! \brief Set 
	 */
	void setCfiAttribute2Desc(std::string  cfi_attribute2_desc);
	/*! \brief Get 
	 */
	std::string getCfiAttribute3Desc();

	/*! \brief Set 
	 */
	void setCfiAttribute3Desc(std::string  cfi_attribute3_desc);
	/*! \brief Get 
	 */
	std::string getCfiAttribute4Desc();

	/*! \brief Set 
	 */
	void setCfiAttribute4Desc(std::string  cfi_attribute4_desc);

private:
	std::string symbol_id;
	std::string exchange_id;
	std::string security_category;
	std::string name;
	std::string date;
	std::string asset_class;
	std::string cfi_code;
	std::string cfi_category;
	std::string cfi_group;
	std::string cfi_attribute1;
	std::string cfi_attribute2;
	std::string cfi_attribute3;
	std::string cfi_attribute4;
	std::string cfi_category_desc;
	std::string cfi_group_desc;
	std::string cfi_attribute1_desc;
	std::string cfi_attribute2_desc;
	std::string cfi_attribute3_desc;
	std::string cfi_attribute4_desc;
	void __init();
	void __cleanup();

};
}
}

#endif /* _FinFeedAPI.SymbolModel_H_ */
