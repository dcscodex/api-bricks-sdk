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

case class ExchangeModel (
  exchangeId: Option[String] = None,
  lastDatapointDate: Option[String] = None,
  mic: Option[String] = None,
  operatingMic: Option[String] = None,
  oprtSgmt: Option[String] = None,
  marketNameInstitutionDescription: Option[String] = None,
  legalEntityName: Option[String] = None,
  lei: Option[String] = None,
  marketCategoryCode: Option[String] = None,
  acronym: Option[String] = None,
  isoCountryCode: Option[String] = None,
  city: Option[String] = None,
  website: Option[String] = None,
  status: Option[String] = None,
  creationDate: Option[OffsetDateTime] = None,
  lastUpdateDate: Option[OffsetDateTime] = None,
  lastValidationDate: Option[OffsetDateTime] = None,
  expiryDate: Option[OffsetDateTime] = None,
  comments: Option[String] = None
) extends ApiModel

