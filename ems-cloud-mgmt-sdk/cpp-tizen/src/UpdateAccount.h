/*
 * UpdateAccount.h
 *
 * 
 */

#ifndef _UpdateAccount_H_
#define _UpdateAccount_H_


#include <string>
#include "KeyValue.h"
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

class UpdateAccount : public Object {
public:
	/*! \brief Constructor.
	 */
	UpdateAccount();
	UpdateAccount(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UpdateAccount();

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
	/*! \brief Get Parameters required to log into the exchange
	 */
	std::list<KeyValue> getParameters();

	/*! \brief Set Parameters required to log into the exchange
	 */
	void setParameters(std::list <KeyValue> parameters);

private:
	std::string exchange_id;
	std::list <KeyValue>parameters;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UpdateAccount_H_ */
