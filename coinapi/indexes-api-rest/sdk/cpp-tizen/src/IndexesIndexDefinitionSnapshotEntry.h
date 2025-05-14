/*
 * Indexes.IndexDefinitionSnapshotEntry.h
 *
 * 
 */

#ifndef _Indexes.IndexDefinitionSnapshotEntry_H_
#define _Indexes.IndexDefinitionSnapshotEntry_H_


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

class Indexes.IndexDefinitionSnapshotEntry : public Object {
public:
	/*! \brief Constructor.
	 */
	Indexes.IndexDefinitionSnapshotEntry();
	Indexes.IndexDefinitionSnapshotEntry(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Indexes.IndexDefinitionSnapshotEntry();

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
	void setIndexId(std::string  index_id);
	/*! \brief Get 
	 */
	std::string getTimestamp();

	/*! \brief Set 
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get 
	 */
	double getValue();

	/*! \brief Set 
	 */
	void setValue(double  value);

private:
	std::string index_id;
	std::string timestamp;
	double value;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Indexes.IndexDefinitionSnapshotEntry_H_ */
