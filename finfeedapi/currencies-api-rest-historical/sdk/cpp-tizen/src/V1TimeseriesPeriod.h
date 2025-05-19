/*
 * V1.TimeseriesPeriod.h
 *
 * Represents a timeseries period used in exchange rate data.
 */

#ifndef _V1.TimeseriesPeriod_H_
#define _V1.TimeseriesPeriod_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents a timeseries period used in exchange rate data.
 *
 *  \ingroup Models
 *
 */

class V1.TimeseriesPeriod : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.TimeseriesPeriod();
	V1.TimeseriesPeriod(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.TimeseriesPeriod();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The period ID.
	 */
	std::string getPeriodId();

	/*! \brief Set The period ID.
	 */
	void setPeriodId(std::string  period_id);
	/*! \brief Get The length of the period in seconds.
	 */
	int getLengthSeconds();

	/*! \brief Set The length of the period in seconds.
	 */
	void setLengthSeconds(int  length_seconds);
	/*! \brief Get The length of the period in months.
	 */
	int getLengthMonths();

	/*! \brief Set The length of the period in months.
	 */
	void setLengthMonths(int  length_months);
	/*! \brief Get The unit count.
	 */
	int getUnitCount();

	/*! \brief Set The unit count.
	 */
	void setUnitCount(int  unit_count);
	/*! \brief Get The unit name.
	 */
	std::string getUnitName();

	/*! \brief Set The unit name.
	 */
	void setUnitName(std::string  unit_name);
	/*! \brief Get The display name of the timeseries period.
	 */
	std::string getDisplayName();

	/*! \brief Set The display name of the timeseries period.
	 */
	void setDisplayName(std::string  display_name);

private:
	std::string period_id;
	int length_seconds;
	int length_months;
	int unit_count;
	std::string unit_name;
	std::string display_name;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.TimeseriesPeriod_H_ */
