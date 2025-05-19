/*
 * Indexes.IndexTimeseriesItem.h
 *
 * Represents a timeseries item with value information.
 */

#ifndef _Indexes.IndexTimeseriesItem_H_
#define _Indexes.IndexTimeseriesItem_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents a timeseries item with value information.
 *
 *  \ingroup Models
 *
 */

class Indexes.IndexTimeseriesItem : public Object {
public:
	/*! \brief Constructor.
	 */
	Indexes.IndexTimeseriesItem();
	Indexes.IndexTimeseriesItem(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Indexes.IndexTimeseriesItem();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the start time of the time period.
	 */
	std::string getTimePeriodStart();

	/*! \brief Set Gets or sets the start time of the time period.
	 */
	void setTimePeriodStart(std::string  time_period_start);
	/*! \brief Get Gets or sets the end time of the time period.
	 */
	std::string getTimePeriodEnd();

	/*! \brief Set Gets or sets the end time of the time period.
	 */
	void setTimePeriodEnd(std::string  time_period_end);
	/*! \brief Get Gets or sets the time when the value opened.
	 */
	std::string getTimeOpen();

	/*! \brief Set Gets or sets the time when the value opened.
	 */
	void setTimeOpen(std::string  time_open);
	/*! \brief Get Gets or sets the time when the value closed.
	 */
	std::string getTimeClose();

	/*! \brief Set Gets or sets the time when the value closed.
	 */
	void setTimeClose(std::string  time_close);
	/*! \brief Get Gets or sets the opening value.
	 */
	double getValueOpen();

	/*! \brief Set Gets or sets the opening value.
	 */
	void setValueOpen(double  value_open);
	/*! \brief Get Gets or sets the highest value during the time period.
	 */
	double getValueHigh();

	/*! \brief Set Gets or sets the highest value during the time period.
	 */
	void setValueHigh(double  value_high);
	/*! \brief Get Gets or sets the lowest value during the time period.
	 */
	double getValueLow();

	/*! \brief Set Gets or sets the lowest value during the time period.
	 */
	void setValueLow(double  value_low);
	/*! \brief Get Gets or sets the closing value.
	 */
	double getValueClose();

	/*! \brief Set Gets or sets the closing value.
	 */
	void setValueClose(double  value_close);
	/*! \brief Get Gets or sets the number of values during the time period.
	 */
	long long getValueCount();

	/*! \brief Set Gets or sets the number of values during the time period.
	 */
	void setValueCount(long long  value_count);

private:
	std::string time_period_start;
	std::string time_period_end;
	std::string time_open;
	std::string time_close;
	double value_open;
	double value_high;
	double value_low;
	double value_close;
	long long value_count;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Indexes.IndexTimeseriesItem_H_ */
