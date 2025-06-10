/*
 * V1.Chain.h
 *
 * Represents a blockchain chain.
 */

#ifndef _V1.Chain_H_
#define _V1.Chain_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents a blockchain chain.
 *
 *  \ingroup Models
 *
 */

class V1.Chain : public Object {
public:
	/*! \brief Constructor.
	 */
	V1.Chain();
	V1.Chain(char* str);

	/*! \brief Destructor.
	 */
	virtual ~V1.Chain();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Gets or sets the chain identifier.
	 */
	std::string getChainId();

	/*! \brief Set Gets or sets the chain identifier.
	 */
	void setChainId(std::string  chain_id);
	/*! \brief Get Gets or sets the name of the chain.
	 */
	std::string getName();

	/*! \brief Set Gets or sets the name of the chain.
	 */
	void setName(std::string  name);

private:
	std::string chain_id;
	std::string name;
	void __init();
	void __cleanup();

};
}
}

#endif /* _V1.Chain_H_ */
