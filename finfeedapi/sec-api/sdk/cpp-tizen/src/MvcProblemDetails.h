/*
 * Mvc.ProblemDetails.h
 *
 * 
 */

#ifndef _Mvc.ProblemDetails_H_
#define _Mvc.ProblemDetails_H_


#include <string>
#include "AnyType.h"
#include <map>
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

class Mvc.ProblemDetails : public Object {
public:
	/*! \brief Constructor.
	 */
	Mvc.ProblemDetails();
	Mvc.ProblemDetails(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Mvc.ProblemDetails();

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
	int getStatus();

	/*! \brief Set 
	 */
	void setStatus(int  status);
	/*! \brief Get 
	 */
	std::string getDetail();

	/*! \brief Set 
	 */
	void setDetail(std::string  detail);
	/*! \brief Get 
	 */
	std::string getInstance();

	/*! \brief Set 
	 */
	void setInstance(std::string  instance);

private:
	std::string type;
	std::string title;
	int status;
	std::string detail;
	std::string instance;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Mvc.ProblemDetails_H_ */
