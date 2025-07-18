/**
 * CoinAPI Market Data REST API
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

case class Exchange (
  /* Gets or sets the exchange ID. */
  exchangeId: Option[String] = None,
  /* Gets or sets the website URL of the exchange. */
  website: Option[String] = None,
  /* Gets or sets the name of the exchange. */
  name: Option[String] = None,
  dataStart: Option[String] = None,
  dataEnd: Option[String] = None,
  /* Gets or sets the start date of quote data. */
  dataQuoteStart: Option[OffsetDateTime] = None,
  /* Gets or sets the end date of quote data. */
  dataQuoteEnd: Option[OffsetDateTime] = None,
  /* Gets or sets the start date of order book data. */
  dataOrderbookStart: Option[OffsetDateTime] = None,
  /* Gets or sets the end date of order book data. */
  dataOrderbookEnd: Option[OffsetDateTime] = None,
  /* Gets or sets the start date of trade data. */
  dataTradeStart: Option[OffsetDateTime] = None,
  /* Gets or sets the end date of trade data. */
  dataTradeEnd: Option[OffsetDateTime] = None,
  /* Gets or sets the number of trades. */
  dataTradeCount: Option[Long] = None,
  /* Gets or sets the number of symbols. */
  dataSymbolsCount: Option[Long] = None,
  /* Gets or sets the USD volume in the last 1 hour. */
  volume1hrsUsd: Option[Double] = None,
  /* Gets or sets the USD volume in the last 1 day. */
  volume1dayUsd: Option[Double] = None,
  /* Gets or sets the USD volume in the last 1 month. */
  volume1mthUsd: Option[Double] = None,
  /* Gets or sets the list of metric IDs. */
  metricId: Option[Seq[String]] = None,
  /* Gets or sets the list of icons for the exchange. */
  icons: Option[Seq[Icon]] = None,
  /* Rank of the exchange. */
  rank: Option[Double] = None,
  /* Status of the integration */
  integrationStatus: Option[String] = None
) extends ApiModel

