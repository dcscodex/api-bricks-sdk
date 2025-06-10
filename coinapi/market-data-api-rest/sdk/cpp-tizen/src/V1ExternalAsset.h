/*
 * V1.ExternalAsset.h
 *
 * Represents an external asset with description.
 */

#ifndef _V1.ExternalAsset_H_
#define _V1.ExternalAsset_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents an external asset with description.
 *
 *  \ingroup Models
 *
 */

class V1.ExternalAsset : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.ExternalAsset();
	V1.ExternalAsset(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.ExternalAsset();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the asset identifier.
	 */
	std::string getAssetId();

	/*! \brief Set Gets or sets the asset identifier.
	 */
	void setAssetId(std::string  asset_id);
	/*! \brief Get Gets or sets the description of the asset.
	 */
	std::string getDescription();

	/*! \brief Set Gets or sets the description of the asset.
	 */
	void setDescription(std::string  description);
	/*! \brief Get Gets or sets the type/category of the asset.
	 */
	std::string getAssetType();

	/*! \brief Set Gets or sets the type/category of the asset.
	 */
	void setAssetType(std::string  asset_type);

private:
	std::string asset_id;
	std::string description;
	std::string asset_type;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.ExternalAsset_H_ */
