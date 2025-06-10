/*
 * V1.ExternalExchange.h
 *
 * Represents an exchange with external mapping for metrics.
 */

#ifndef _V1.ExternalExchange_H_
#define _V1.ExternalExchange_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents an exchange with external mapping for metrics.
 *
 *  \ingroup Models
 *
 */

class V1.ExternalExchange : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.ExternalExchange();
	V1.ExternalExchange(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.ExternalExchange();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the internal exchange identifier.
	 */
	std::string getExchangeId();

	/*! \brief Set Gets or sets the internal exchange identifier.
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get Gets or sets the external protocol name/slug.
	 */
	std::string getExternalName();

	/*! \brief Set Gets or sets the external protocol name/slug.
	 */
	void setExternalName(std::string  external_name);
	/*! \brief Get Gets or sets the description of the exchange.
	 */
	std::string getDescription();

	/*! \brief Set Gets or sets the description of the exchange.
	 */
	void setDescription(std::string  description);
	/*! \brief Get 
	 */
	std::string getSourceId();

	/*! \brief Set 
	 */
	void setSourceId(std::string  source_id);

private:
	std::string exchange_id;
	std::string external_name;
	std::string description;
	std::string source_id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.ExternalExchange_H_ */
