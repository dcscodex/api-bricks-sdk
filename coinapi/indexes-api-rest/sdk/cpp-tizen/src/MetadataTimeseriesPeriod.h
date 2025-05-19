/*
 * Metadata.TimeseriesPeriod.h
 *
 * Represents a timeseries period used in exchange rate data.
 */

#ifndef _Metadata.TimeseriesPeriod_H_
#define _Metadata.TimeseriesPeriod_H_


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

class Metadata.TimeseriesPeriod : public Object {
public:
	/*! \brief Constructor.
	 */
	Metadata.TimeseriesPeriod();
	Metadata.TimeseriesPeriod(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Metadata.TimeseriesPeriod();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the period ID.
	 */
	std::string getPeriodId();

	/*! \brief Set Gets or sets the period ID.
	 */
	void setPeriodId(std::string  period_id);
	/*! \brief Get Gets or sets the length of the period in seconds.
	 */
	int getLengthSeconds();

	/*! \brief Set Gets or sets the length of the period in seconds.
	 */
	void setLengthSeconds(int  length_seconds);
	/*! \brief Get Gets or sets the length of the period in months.
	 */
	int getLengthMonths();

	/*! \brief Set Gets or sets the length of the period in months.
	 */
	void setLengthMonths(int  length_months);
	/*! \brief Get Gets or sets the unit count.
	 */
	int getUnitCount();

	/*! \brief Set Gets or sets the unit count.
	 */
	void setUnitCount(int  unit_count);
	/*! \brief Get Gets or sets the unit name.
	 */
	std::string getUnitName();

	/*! \brief Set Gets or sets the unit name.
	 */
	void setUnitName(std::string  unit_name);
	/*! \brief Get Gets or sets the display name of the timeseries period.
	 */
	std::string getDisplayName();

	/*! \brief Set Gets or sets the display name of the timeseries period.
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

#endif /* _Metadata.TimeseriesPeriod_H_ */
