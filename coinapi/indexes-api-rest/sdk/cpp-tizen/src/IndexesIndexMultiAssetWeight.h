/*
 * Indexes.IndexMultiAssetWeight.h
 *
 * 
 */

#ifndef _Indexes.IndexMultiAssetWeight_H_
#define _Indexes.IndexMultiAssetWeight_H_


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

class Indexes.IndexMultiAssetWeight : public Object {
public:
	/*! \brief Constructor.
	 */
	Indexes.IndexMultiAssetWeight();
	Indexes.IndexMultiAssetWeight(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Indexes.IndexMultiAssetWeight();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getIndexId();

	/*! \brief Set 
	 */
	void setIndexId(std::string  indexId);
	/*! \brief Get 
	 */
	std::string getAssetId();

	/*! \brief Set 
	 */
	void setAssetId(std::string  assetId);
	/*! \brief Get 
	 */
	double getWeight();

	/*! \brief Set 
	 */
	void setWeight(double  weight);

private:
	std::string indexId;
	std::string assetId;
	double weight;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Indexes.IndexMultiAssetWeight_H_ */
