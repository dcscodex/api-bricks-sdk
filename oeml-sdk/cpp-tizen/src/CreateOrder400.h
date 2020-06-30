/*
 * CreateOrder400.h
 *
 * 
 */

#ifndef _CreateOrder400_H_
#define _CreateOrder400_H_


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

class CreateOrder400 : public Object {
public:
	/*! \brief Constructor.
	 */
	CreateOrder400();
	CreateOrder400(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CreateOrder400();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getType();

	/*! \brief Set 
	 */
	void setType(std::string  type);
	/*! \brief Get 
	 */
	std::string getTitle();

	/*! \brief Set 
	 */
	void setTitle(std::string  title);
	/*! \brief Get 
	 */
	long long getStatus();

	/*! \brief Set 
	 */
	void setStatus(long long  status);
	/*! \brief Get 
	 */
	std::string getTraceId();

	/*! \brief Set 
	 */
	void setTraceId(std::string  traceId);
	/*! \brief Get 
	 */
	std::string getErrors();

	/*! \brief Set 
	 */
	void setErrors(std::string  errors);

private:
	std::string type;
	std::string title;
	long long status;
	std::string traceId;
	std::string errors;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CreateOrder400_H_ */
