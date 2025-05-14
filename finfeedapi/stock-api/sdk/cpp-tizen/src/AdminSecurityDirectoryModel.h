/*
 * Admin.SecurityDirectoryModel.h
 *
 * Represents the response DTO for security directory information
 */

#ifndef _Admin.SecurityDirectoryModel_H_
#define _Admin.SecurityDirectoryModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for security directory information
 *
 *  \ingroup Models
 *
 */

class Admin.SecurityDirectoryModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Admin.SecurityDirectoryModel();
	Admin.SecurityDirectoryModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Admin.SecurityDirectoryModel();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The stock symbol
	 */
	std::string getSymbol();

	/*! \brief Set The stock symbol
	 */
	void setSymbol(std::string  symbol);
	/*! \brief Get Original timestamp in nanoseconds since epoch
	 */
	long long getTimestampNanos();

	/*! \brief Set Original timestamp in nanoseconds since epoch
	 */
	void setTimestampNanos(long long  timestamp_nanos);
	/*! \brief Get Time when the security directory information was recorded as DateTime
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the security directory information was recorded as DateTime
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Flags for the security
	 */
	int getFlags();

	/*! \brief Set Flags for the security
	 */
	void setFlags(int  flags);
	/*! \brief Get Number of shares that represent a round lot
	 */
	int getRoundLotSize();

	/*! \brief Set Number of shares that represent a round lot
	 */
	void setRoundLotSize(int  round_lot_size);
	/*! \brief Get Adjusted previous official closing price as decimal
	 */
	double getAdjustedPocPrice();

	/*! \brief Set Adjusted previous official closing price as decimal
	 */
	void setAdjustedPocPrice(double  adjusted_poc_price);
	/*! \brief Get LULD tier as byte value
	 */
	int getLuldTier();

	/*! \brief Set LULD tier as byte value
	 */
	void setLuldTier(int  luld_tier);
	/*! \brief Get LULD tier as numeric string
	 */
	std::string getLuldTierCode();

	/*! \brief Set LULD tier as numeric string
	 */
	void setLuldTierCode(std::string  luld_tier_code);
	/*! \brief Get Human-readable description of the LULD tier
	 */
	std::string getLuldTierText();

	/*! \brief Set Human-readable description of the LULD tier
	 */
	void setLuldTierText(std::string  luld_tier_text);
	/*! \brief Get Indicates if LULD Tier is 'Not applicable' (0x0).
	 */
	bool getIsLuldTierNotApplicable();

	/*! \brief Set Indicates if LULD Tier is 'Not applicable' (0x0).
	 */
	void setIsLuldTierNotApplicable(bool  is_luld_tier_not_applicable);
	/*! \brief Get Indicates if LULD Tier is 'Tier 1 NMS Stock' (0x1).
	 */
	bool getIsLuldTier1();

	/*! \brief Set Indicates if LULD Tier is 'Tier 1 NMS Stock' (0x1).
	 */
	void setIsLuldTier1(bool  is_luld_tier1);
	/*! \brief Get Indicates if LULD Tier is 'Tier 2 NMS Stock' (0x2).
	 */
	bool getIsLuldTier2();

	/*! \brief Set Indicates if LULD Tier is 'Tier 2 NMS Stock' (0x2).
	 */
	void setIsLuldTier2(bool  is_luld_tier2);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	int flags;
	int round_lot_size;
	double adjusted_poc_price;
	int luld_tier;
	std::string luld_tier_code;
	std::string luld_tier_text;
	bool is_luld_tier_not_applicable;
	bool is_luld_tier1;
	bool is_luld_tier2;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Admin.SecurityDirectoryModel_H_ */
