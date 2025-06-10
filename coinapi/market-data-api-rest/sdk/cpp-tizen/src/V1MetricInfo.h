/*
 * V1.MetricInfo.h
 *
 * Represents a metric information.
 */

#ifndef _V1.MetricInfo_H_
#define _V1.MetricInfo_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents a metric information.
 *
 *  \ingroup Models
 *
 */

class V1.MetricInfo : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.MetricInfo();
	V1.MetricInfo(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.MetricInfo();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the metric identifier.
	 */
	std::string getMetricId();

	/*! \brief Set Gets or sets the metric identifier.
	 */
	void setMetricId(std::string  metric_id);
	/*! \brief Get Gets or sets the description of the metric.
	 */
	std::string getDescription();

	/*! \brief Set Gets or sets the description of the metric.
	 */
	void setDescription(std::string  description);
	/*! \brief Get Gets or sets the source identifier of the metric.
	 */
	std::string getSourceId();

	/*! \brief Set Gets or sets the source identifier of the metric.
	 */
	void setSourceId(std::string  source_id);

private:
	std::string metric_id;
	std::string description;
	std::string source_id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.MetricInfo_H_ */
