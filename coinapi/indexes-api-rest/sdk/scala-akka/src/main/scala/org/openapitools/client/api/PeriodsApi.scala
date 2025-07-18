/**
 * CoinAPI Indexes REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.client.api

import org.openapitools.client.model.TimeseriesPeriod
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

object PeriodsApi {

  def apply(baseUrl: String = "https://rest-api.indexes.coinapi.io") = new PeriodsApi(baseUrl)
}

class PeriodsApi(baseUrl: String) {

  /**
   * Get full list of supported time periods              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::
   * 
   * Expected answers:
   *   code 200 : Seq[TimeseriesPeriod] (successful operation)
   * 
   * Available security schemes:
   *   APIKey (apiKey)
   *   JWT (apiKey)
   */
  def v1MetadataPeriodsGet()(implicit apiKey: ApiKeyValue, apiKey: ApiKeyValue): ApiRequest[Seq[TimeseriesPeriod]] =
    ApiRequest[Seq[TimeseriesPeriod]](ApiMethods.GET, baseUrl, "/v1/metadata/periods", "application/json")
      .withApiKey(apiKey, "Authorization", HEADER)
      .withApiKey(apiKey, "Authorization", HEADER)
      .withSuccessResponse[Seq[TimeseriesPeriod]](200)
      



}

