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

private:
	std::string symbol_id;
	std::string exchange_id;
	std::string security_category;
	std::string name;
	std::string date;
	std::string asset_class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _FinFeedAPI.SymbolModel_H_ */
