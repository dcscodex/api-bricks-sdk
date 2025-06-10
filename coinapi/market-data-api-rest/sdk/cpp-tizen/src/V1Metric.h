/*
 * V1.Metric.h
 *
 * Represents a metric.
 */

#ifndef _V1.Metric_H_
#define _V1.Metric_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents a metric.
 *
 *  \ingroup Models
 *
 */

class V1.Metric : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.Metric();
	V1.Metric(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.Metric();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the metric ID.
	 */
	std::string getMetricId();

	/*! \brief Set Gets or sets the metric ID.
	 */
	void setMetricId(std::string  metric_id);
	/*! \brief Get Gets or sets the metric description.
	 */
	std::string getDescription();

	/*! \brief Set Gets or sets the metric description.
	 */
	void setDescription(std::string  description);

private:
	std::string metric_id;
	std::string description;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.Metric_H_ */
