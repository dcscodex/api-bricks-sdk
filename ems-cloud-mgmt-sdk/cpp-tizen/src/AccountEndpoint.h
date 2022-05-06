/*
 * AccountEndpoint.h
 *
 * 
 */

#ifndef _AccountEndpoint_H_
#define _AccountEndpoint_H_


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

class AccountEndpoint : public Object {
public:
	/*! \brief Constructor.
	 */
	AccountEndpoint();
	AccountEndpoint(char* str);

	/*! \brief Destructor.
	 */
	virtual ~AccountEndpoint();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code> 
	 */
	std::string getExchangeId();

	/*! \brief Set Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code> 
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get Location identifier
	 */
	std::string getLocationId();

	/*! \brief Set Location identifier
	 */
	void setLocationId(std::string  location_id);
	/*! \brief Get Endpoint schema
	 */
	std::string getEndpointSchema();

	/*! \brief Set Endpoint schema
	 */
	void setEndpointSchema(std::string  endpoint_schema);
	/*! \brief Get Endpoint host
	 */
	std::string getEndpointHost();

	/*! \brief Set Endpoint host
	 */
	void setEndpointHost(std::string  endpoint_host);
	/*! \brief Get Endpoint URL
	 */
	std::string getEndpointUrl();

	/*! \brief Set Endpoint URL
	 */
	void setEndpointUrl(std::string  endpoint_url);

private:
	std::string exchange_id;
	std::string location_id;
	std::string endpoint_schema;
	std::string endpoint_host;
	std::string endpoint_url;
	void __init();
	void __cleanup();

};
}
}

#endif /* _AccountEndpoint_H_ */
