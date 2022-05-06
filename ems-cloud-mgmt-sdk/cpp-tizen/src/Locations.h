/*
 * Locations.h
 *
 * 
 */

#ifndef _Locations_H_
#define _Locations_H_


#include <string>
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

class Locations : public Object {
public:
	/*! \brief Constructor.
	 */
	Locations();
	Locations(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Locations();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get CoinAPI location identifier
	 */
	std::string getLocationId();

	/*! \brief Set CoinAPI location identifier
	 */
	void setLocationId(std::string  location_id);
	/*! \brief Get Identifier of the region by the location provider
	 */
	std::string getRegionName();

	/*! \brief Set Identifier of the region by the location provider
	 */
	void setRegionName(std::string  region_name);
	/*! \brief Get Identifier of the location provider
	 */
	std::string getProviderName();

	/*! \brief Set Identifier of the location provider
	 */
	void setProviderName(std::string  provider_name);

private:
	std::string location_id;
	std::string region_name;
	std::string provider_name;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Locations_H_ */
