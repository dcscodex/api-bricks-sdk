/*
 * V1.Icon.h
 *
 * Represents an icon.
 */

#ifndef _V1.Icon_H_
#define _V1.Icon_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents an icon.
 *
 *  \ingroup Models
 *
 */

class V1.Icon : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.Icon();
	V1.Icon(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.Icon();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the exchange ID associated with the icon.
	 */
	std::string getExchangeId();

	/*! \brief Set Gets or sets the exchange ID associated with the icon.
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get Gets or sets the asset ID associated with the icon.
	 */
	std::string getAssetId();

	/*! \brief Set Gets or sets the asset ID associated with the icon.
	 */
	void setAssetId(std::string  asset_id);
	/*! \brief Get Gets or sets the URL of the icon.
	 */
	std::string getUrl();

	/*! \brief Set Gets or sets the URL of the icon.
	 */
	void setUrl(std::string  url);

private:
	std::string exchange_id;
	std::string asset_id;
	std::string url;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.Icon_H_ */
