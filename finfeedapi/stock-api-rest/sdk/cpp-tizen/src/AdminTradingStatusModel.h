/*
 * Admin.TradingStatusModel.h
 *
 * Represents the response DTO for trading status information
 */

#ifndef _Admin.TradingStatusModel_H_
#define _Admin.TradingStatusModel_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Represents the response DTO for trading status information
 *
 *  \ingroup Models
 *
 */

class Admin.TradingStatusModel : public Object {
public:
	/*! \brief Constructor.
	 */
	Admin.TradingStatusModel();
	Admin.TradingStatusModel(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Admin.TradingStatusModel();

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
	/*! \brief Get Time when the trading status was recorded as DateTime
	 */
	std::string getTimestamp();

	/*! \brief Set Time when the trading status was recorded as DateTime
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Gets whether the security is currently trading on IEX
	 */
	bool getIsTradingLive();

	/*! \brief Set Gets whether the security is currently trading on IEX
	 */
	void setIsTradingLive(bool  is_trading_live);
	/*! \brief Get Gets whether the security is halted across all US equity markets
	 */
	bool getIsTradingHalted();

	/*! \brief Set Gets whether the security is halted across all US equity markets
	 */
	void setIsTradingHalted(bool  is_trading_halted);
	/*! \brief Get Gets whether the security is in Order Acceptance Period on IEX
	 */
	bool getIsTradingInOrderAcceptancePeriod();

	/*! \brief Set Gets whether the security is in Order Acceptance Period on IEX
	 */
	void setIsTradingInOrderAcceptancePeriod(bool  is_trading_in_order_acceptance_period);
	/*! \brief Get Gets whether the security is paused and in Order Acceptance Period on IEX
	 */
	bool getIsTradingPaused();

	/*! \brief Set Gets whether the security is paused and in Order Acceptance Period on IEX
	 */
	void setIsTradingPaused(bool  is_trading_paused);
	/*! \brief Get Gets whether the halt reason is News Pending
	 */
	bool getIsReasonHaltNewsPending();

	/*! \brief Set Gets whether the halt reason is News Pending
	 */
	void setIsReasonHaltNewsPending(bool  is_reason_halt_news_pending);
	/*! \brief Get Gets whether the halt reason is IPO Not Yet Trading
	 */
	bool getIsReasonIpoNotYetTrading();

	/*! \brief Set Gets whether the halt reason is IPO Not Yet Trading
	 */
	void setIsReasonIpoNotYetTrading(bool  is_reason_ipo_not_yet_trading);
	/*! \brief Get Gets whether the halt reason is IPO Deferred
	 */
	bool getIsReasonIpoDeferred();

	/*! \brief Set Gets whether the halt reason is IPO Deferred
	 */
	void setIsReasonIpoDeferred(bool  is_reason_ipo_deferred);
	/*! \brief Get Gets whether the order acceptance period reason is Halt News Dissemination
	 */
	bool getIsReasonHaltNewsDissemination();

	/*! \brief Set Gets whether the order acceptance period reason is Halt News Dissemination
	 */
	void setIsReasonHaltNewsDissemination(bool  is_reason_halt_news_dissemination);
	/*! \brief Get Gets whether the order acceptance period reason is IPO Order Acceptance Period
	 */
	bool getIsReasonIpoOrderAcceptancePeriod();

	/*! \brief Set Gets whether the order acceptance period reason is IPO Order Acceptance Period
	 */
	void setIsReasonIpoOrderAcceptancePeriod(bool  is_reason_ipo_order_acceptance_period);
	/*! \brief Get Gets whether the order acceptance period reason is IPO Pre-Launch Period
	 */
	bool getIsReasonIpoPreLaunchPeriod();

	/*! \brief Set Gets whether the order acceptance period reason is IPO Pre-Launch Period
	 */
	void setIsReasonIpoPreLaunchPeriod(bool  is_reason_ipo_pre_launch_period);
	/*! \brief Get Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached
	 */
	bool getIsReasonMarketWideCircuitBreakerLevel1();

	/*! \brief Set Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached
	 */
	void setIsReasonMarketWideCircuitBreakerLevel1(bool  is_reason_market_wide_circuit_breaker_level1);
	/*! \brief Get Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached
	 */
	bool getIsReasonMarketWideCircuitBreakerLevel2();

	/*! \brief Set Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached
	 */
	void setIsReasonMarketWideCircuitBreakerLevel2(bool  is_reason_market_wide_circuit_breaker_level2);
	/*! \brief Get Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached
	 */
	bool getIsReasonMarketWideCircuitBreakerLevel3();

	/*! \brief Set Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached
	 */
	void setIsReasonMarketWideCircuitBreakerLevel3(bool  is_reason_market_wide_circuit_breaker_level3);
	/*! \brief Get Gets whether the reason is Not Applicable
	 */
	bool getIsReasonNotApplicable();

	/*! \brief Set Gets whether the reason is Not Applicable
	 */
	void setIsReasonNotApplicable(bool  is_reason_not_applicable);
	/*! \brief Get Gets whether the halt reason is Not Available
	 */
	bool getIsReasonNotAvailable();

	/*! \brief Set Gets whether the halt reason is Not Available
	 */
	void setIsReasonNotAvailable(bool  is_reason_not_available);

private:
	std::string symbol;
	long long timestamp_nanos;
	std::string timestamp;
	bool is_trading_live;
	bool is_trading_halted;
	bool is_trading_in_order_acceptance_period;
	bool is_trading_paused;
	bool is_reason_halt_news_pending;
	bool is_reason_ipo_not_yet_trading;
	bool is_reason_ipo_deferred;
	bool is_reason_halt_news_dissemination;
	bool is_reason_ipo_order_acceptance_period;
	bool is_reason_ipo_pre_launch_period;
	bool is_reason_market_wide_circuit_breaker_level1;
	bool is_reason_market_wide_circuit_breaker_level2;
	bool is_reason_market_wide_circuit_breaker_level3;
	bool is_reason_not_applicable;
	bool is_reason_not_available;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Admin.TradingStatusModel_H_ */
