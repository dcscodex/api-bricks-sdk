/*
 * V1.ChainNetworkAddress.h
 *
 * Contains information about assets&#39; chain network addresses
 */

#ifndef _V1.ChainNetworkAddress_H_
#define _V1.ChainNetworkAddress_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Contains information about assets' chain network addresses
 *
 *  \ingroup Models
 *
 */

class V1.ChainNetworkAddress : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.ChainNetworkAddress();
	V1.ChainNetworkAddress(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.ChainNetworkAddress();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets chain id
	 */
	std::string getChainId();

	/*! \brief Set Gets or sets chain id
	 */
	void setChainId(std::string  chain_id);
	/*! \brief Get Gets or sets network id
	 */
	std::string getNetworkId();

	/*! \brief Set Gets or sets network id
	 */
	void setNetworkId(std::string  network_id);
	/*! \brief Get Gets or sets chain address
	 */
	std::string getAddress();

	/*! \brief Set Gets or sets chain address
	 */
	void setAddress(std::string  address);

private:
	std::string chain_id;
	std::string network_id;
	std::string address;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.ChainNetworkAddress_H_ */
