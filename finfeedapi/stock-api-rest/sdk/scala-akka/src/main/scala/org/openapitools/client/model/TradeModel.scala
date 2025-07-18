/**
 * FinFeedAPI Stock REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.client.model

import java.time.OffsetDateTime
import org.openapitools.client.core.ApiModel

case class TradeModel (
  /* Indicates if this record represents a trade break (true) or a trade report (false). */
  isTradeBreak: Option[Boolean] = None,
  /* The stock symbol. */
  symbol: Option[String] = None,
  /* Original timestamp in nanoseconds since epoch. */
  timestampNanos: Option[Long] = None,
  /* Time when the event was recorded as DateTime (UTC). */
  timestamp: Option[OffsetDateTime] = None,
  /* Trade volume (or break volume) in number of shares. */
  size: Option[Int] = None,
  /* Trade price (or break price) as decimal. */
  price: Option[Double] = None,
  /* IEX trade identifier (same for report and its corresponding break). */
  tradeId: Option[Long] = None,
  /* Bit 7 (Mask 0x80): Intermarket Sweep Flag. True: Intermarket Sweep Order (\"ISO\"). False: Non-Intermarket Sweep Order. */
  isIntermarketSweep: Option[Boolean] = None,
  /* Bit 6 (Mask 0x40): Extended Hours Flag. True: Extended Hours Trade (i.e., Form T sale condition). False: Regular Market Session Trade. */
  isExtendedHoursTrade: Option[Boolean] = None,
  /* Bit 5 (Mask 0x20): Odd Lot Flag. True: Odd Lot Trade. False: Round or Mixed Lot Trade. */
  isOddLotTrade: Option[Boolean] = None,
  /* Bit 4 (Mask 0x10): Trade Through Exempt Flag. True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS. False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS. Applied when the taking order was an ISO that traded through a protected quotation, OR the NBBO was crossed at the time of the trade, OR the trade occurred through a self-helped venue's quotation, OR the trade was a single-price cross. */
  isTradeThroughExempt: Option[Boolean] = None,
  /* Bit 3 (Mask 0x08): Single-price Cross Trade Flag. True: Trade resulting from a single-price cross. False: Execution during continuous trading. */
  isSinglePriceCrossTrade: Option[Boolean] = None
) extends ApiModel

