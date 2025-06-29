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

import org.openapitools.client.core.ApiModel

case class TimeseriesPeriod (
  /* The period ID. */
  periodId: Option[String] = None,
  /* The length of the period in seconds. */
  lengthSeconds: Option[Int] = None,
  /* The length of the period in months. */
  lengthMonths: Option[Int] = None,
  /* The unit count. */
  unitCount: Option[Int] = None,
  /* The unit name. */
  unitName: Option[String] = None,
  /* The display name of the timeseries period. */
  displayName: Option[String] = None
) extends ApiModel

