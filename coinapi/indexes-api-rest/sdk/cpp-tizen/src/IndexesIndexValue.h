/*
 * Indexes.IndexValue.h
 *
 * 
 */

#ifndef _Indexes.IndexValue_H_
#define _Indexes.IndexValue_H_


#include <string>
#include "Indexes.IndexValueComponent.h"
#include <list>
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

class Indexes.IndexValue : public Object {
public:
	/*! \brief Constructor.
	 */
	Indexes.IndexValue();
	Indexes.IndexValue(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Indexes.IndexValue();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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
	/*! \brief Get 
	 */
	std::list<Indexes.IndexValueComponent> getComposition();

	/*! \brief Set 
	 */
	void setComposition(std::list <Indexes.IndexValueComponent> composition);

private:
	std::string timestamp;
	double value;
	std::list <Indexes.IndexValueComponent>composition;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Indexes.IndexValue_H_ */
