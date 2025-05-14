/*
 * Metadata.Exchange.h
 *
 * Represents an exchange.
 */

#ifndef _Metadata.Exchange_H_
#define _Metadata.Exchange_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents an exchange.
 *
 *  \ingroup Models
 *
 */

class Metadata.Exchange : public Object {
public:
	/*! \brief Constructor.
	 */
	Metadata.Exchange();
	Metadata.Exchange(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Metadata.Exchange();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the exchange ID.
	 */
	std::string getExchangeId();

	/*! \brief Set Gets or sets the exchange ID.
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get Gets or sets the website URL of the exchange.
	 */
	std::string getWebsite();

	/*! \brief Set Gets or sets the website URL of the exchange.
	 */
	void setWebsite(std::string  website);
	/*! \brief Get Gets or sets the name of the exchange.
	 */
	std::string getName();

	/*! \brief Set Gets or sets the name of the exchange.
	 */
	void setName(std::string  name);

private:
	std::string exchange_id;
	std::string website;
	std::string name;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Metadata.Exchange_H_ */
