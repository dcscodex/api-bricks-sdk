/*
 * Indexes.IndexDefinitionInputData.h
 *
 * 
 */

#ifndef _Indexes.IndexDefinitionInputData_H_
#define _Indexes.IndexDefinitionInputData_H_


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

class Indexes.IndexDefinitionInputData : public Object {
public:
	/*! \brief Constructor.
	 */
	Indexes.IndexDefinitionInputData();
	Indexes.IndexDefinitionInputData(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Indexes.IndexDefinitionInputData();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getExchangeId();

	/*! \brief Set 
	 */
	void setExchangeId(std::string  exchangeId);
	/*! \brief Get 
	 */
	std::string getExchangeSymbolId();

	/*! \brief Set 
	 */
	void setExchangeSymbolId(std::string  exchangeSymbolId);
	/*! \brief Get 
	 */
	std::string getBaseAssetId();

	/*! \brief Set 
	 */
	void setBaseAssetId(std::string  baseAssetId);
	/*! \brief Get 
	 */
	std::string getQuoteAssetId();

	/*! \brief Set 
	 */
	void setQuoteAssetId(std::string  quoteAssetId);
	/*! \brief Get 
	 */
	std::string getBeginDate();

	/*! \brief Set 
	 */
	void setBeginDate(std::string  beginDate);
	/*! \brief Get 
	 */
	std::string getEndDate();

	/*! \brief Set 
	 */
	void setEndDate(std::string  endDate);
	/*! \brief Get 
	 */
	std::string getStatus();

	/*! \brief Set 
	 */
	void setStatus(std::string  status);
	/*! \brief Get 
	 */
	std::string getStatusInfo();

	/*! \brief Set 
	 */
	void setStatusInfo(std::string  statusInfo);
	/*! \brief Get 
	 */
	std::string getLastModificationTime();

	/*! \brief Set 
	 */
	void setLastModificationTime(std::string  lastModificationTime);

private:
	std::string exchangeId;
	std::string exchangeSymbolId;
	std::string baseAssetId;
	std::string quoteAssetId;
	std::string beginDate;
	std::string endDate;
	std::string status;
	std::string statusInfo;
	std::string lastModificationTime;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Indexes.IndexDefinitionInputData_H_ */
