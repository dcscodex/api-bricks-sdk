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

case class ClearBookModel (
  /* The stock symbol */
  symbol: Option[String] = None,
  /* Original timestamp in nanoseconds since epoch */
  timestampNanos: Option[Long] = None,
  /* Time when the book was cleared as DateTime */
  timestamp: Option[OffsetDateTime] = None
) extends ApiModel

