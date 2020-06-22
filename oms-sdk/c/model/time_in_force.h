/*
 * time_in_force.h
 *
 * Time in force is a special instruction used when placing a trade to indicate how long an order will remain active before it is executed or expires. These options are especially important for active traders and allow them to be more specific about the time parameters.  | Parameter | Description | |-----------|--------| | &#x60;GOOD_TILL_CANCEL&#x60; | A Good-Til-Cancelled (GTC) order is an order to buy or sell a stock that lasts until the order is completed or canceled. Brokerage firms typically limit the length of time an investor can leave a GTC order open.  This time frame may vary from broker to broker.  Investors should contact their brokerage firms to determine what time limit would apply to GTC orders. | | &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; | The GTTE (Good-til-Date/Time) time in force lets you select an expiration date and time up until which an order will continue to work. Setting this attribute requires both a time in force selection of GTD, a date entry in the Expiration Date field, and a time entry in the Expiration Time field if that level of detail is required. Note that if you only enter a good-till date, the unfilled order will cancel at the close of the market on the specified day. | | &#x60;GOOD_TILL_TIME_OMS&#x60; | The GTT (GTTO) supported by OMS. | | &#x60;FILL_OR_KILL&#x60; | Fill or kill (FOK) is a type of time-in-force designation used in securities trading that instructs a brokerage to execute a transaction immediately and completely or not at all. This type of order is most often used by active traders and is usually for a large quantity of stock. The order must be filled in its entirety or canceled (killed). | | &#x60;IMMEDIATE_OR_CANCEL&#x60; | An immediate or cancel order (IOC) is an order to buy or sell a security that executes all or part immediately and cancels any unfilled portion of the order. An IOC order is one of several \&quot;duration orders\&quot; that investors can use to specify how long the order remains active in the market and under what conditions the order is canceled. Other commonly used duration order types include fill or kill (FOK), all or none (AON) and good ‘till canceled (GTC). Most online trading platforms allow IOC orders to be placed manually or programmed into automated trading strategies. | | &#x60;AUCTION_ONLY&#x60; | This order will be added to the auction-only (AO) book for the next auction for this symbol. | | &#x60;INDICATION_OF_INTEREST&#x60; | An indication of interest (IOI) is an underwriting expression showing a conditional, non-binding interest in buying a security that is currently in registration—awaiting approval by the Securities and Exchange Commission (SEC). The investor&#39;s broker is required to provide the investor with a preliminary prospectus. However, IOIs in the mergers and acquisitions world has similar intent but is done differently. |  ##### Time in force options  | Exchange | GTC | GTTE | GTTO | FOK | IOC | AO | IOI | | --- | --- | --- | ---- | --- | --- | --- | --- | | BINANCE | X | X |  | X | X |  |  | | BITFINEX | X | X |  | X | X |  |  | | BITMEX | X | X |  |  | X |  |  | | BLOCKCHAINEXCHANGE | X | X |  |  | X |  |  | | BITSTAMP | X | X |  |  | X |  |  | | COINBASE | X |  | X | X | X |  |  | | GEMINI | X | X |  | X | X | X | X | | KRAKEN | X |  | X |  |  |  |  | | POLONIEX | X | X |  | X | X |  |  | | HITBTC | X | X |  | X | X |  |  | | KRAKENFTS | X | X |  |  | X |  |  | 
 */

#ifndef _time_in_force_H_
#define _time_in_force_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct time_in_force_t time_in_force_t;


// Enum  for time_in_force

typedef enum { oms___rest_api_time_in_force__NULL = 0, oms___rest_api_time_in_force__GOOD_TILL_CANCEL, oms___rest_api_time_in_force__GOOD_TILL_TIME_EXCHANGE, oms___rest_api_time_in_force__GOOD_TILL_TIME_OMS, oms___rest_api_time_in_force__FILL_OR_KILL, oms___rest_api_time_in_force__IMMEDIATE_OR_CANCEL, oms___rest_api_time_in_force__AUCTION_ONLY, oms___rest_api_time_in_force__INDICATION_OF_INTEREST } oms___rest_api_time_in_force__e;

char* time_in_force_time_in_force_ToString(oms___rest_api_time_in_force__e time_in_force);

oms___rest_api_time_in_force__e time_in_force_time_in_force_FromString(char* time_in_force);

//cJSON *time_in_force_time_in_force_convertToJSON(oms___rest_api_time_in_force__e time_in_force);

//oms___rest_api_time_in_force__e time_in_force_time_in_force_parseFromJSON(cJSON *time_in_forceJSON);

#endif /* _time_in_force_H_ */

