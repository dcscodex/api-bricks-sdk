/*
 * Options.OptionExchangeGroup.h
 *
 * Represents an option exchange group data model.
 */

#ifndef _Options.OptionExchangeGroup_H_
#define _Options.OptionExchangeGroup_H_


#include <string>
#include "Options.Strike.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents an option exchange group data model.
 *
 *  \ingroup Models
 *
 */

class Options.OptionExchangeGroup : public Object {
public:
	/*! \brief Constructor.
	 */
	Options.OptionExchangeGroup();
	Options.OptionExchangeGroup(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Options.OptionExchangeGroup();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The base asset identifier.
	 */
	std::string getAssetIdBase();

	/*! \brief Set The base asset identifier.
	 */
	void setAssetIdBase(std::string  asset_id_base);
	/*! \brief Get The quote asset identifier.
	 */
	std::string getAssetIdQuote();

	/*! \brief Set The quote asset identifier.
	 */
	void setAssetIdQuote(std::string  asset_id_quote);
	/*! \brief Get The underlying price of the option.
	 */
	double getUnderlyingPrice();

	/*! \brief Set The underlying price of the option.
	 */
	void setUnderlyingPrice(double  underlying_price);
	/*! \brief Get The expiration time of the option.
	 */
	std::string getTimeExpiration();

	/*! \brief Set The expiration time of the option.
	 */
	void setTimeExpiration(std::string  time_expiration);
	/*! \brief Get The list of strikes available.
	 */
	std::list<Options.Strike> getStrikes();

	/*! \brief Set The list of strikes available.
	 */
	void setStrikes(std::list <Options.Strike> strikes);

private:
	std::string asset_id_base;
	std::string asset_id_quote;
	double underlying_price;
	std::string time_expiration;
	std::list <Options.Strike>strikes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Options.OptionExchangeGroup_H_ */
