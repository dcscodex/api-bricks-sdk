/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.apis

import java.io.IOException
import okhttp3.Call
import okhttp3.HttpUrl

import org.openapitools.client.models.OptionsOptionExchangeGroup

import com.squareup.moshi.Json

import org.openapitools.client.infrastructure.ApiClient
import org.openapitools.client.infrastructure.ApiResponse
import org.openapitools.client.infrastructure.ClientException
import org.openapitools.client.infrastructure.ClientError
import org.openapitools.client.infrastructure.ServerException
import org.openapitools.client.infrastructure.ServerError
import org.openapitools.client.infrastructure.MultiValueMap
import org.openapitools.client.infrastructure.PartConfig
import org.openapitools.client.infrastructure.RequestConfig
import org.openapitools.client.infrastructure.RequestMethod
import org.openapitools.client.infrastructure.ResponseType
import org.openapitools.client.infrastructure.Success
import org.openapitools.client.infrastructure.toMultiValue

class OptionsApi(basePath: kotlin.String = defaultBasePath, client: Call.Factory = ApiClient.defaultClient) : ApiClient(basePath, client) {
    companion object {
        @JvmStatic
        val defaultBasePath: String by lazy {
            System.getProperties().getProperty(ApiClient.baseUrlKey, "https://rest.coinapi.io")
        }
    }

    /**
     * GET /v1/options/{exchange_id}/current
     * Current data by Exchange
     * Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.
     * @param exchangeId Exchange identifier (from the Metadata -&gt; Exchanges)
     * @return kotlin.collections.List<OptionsOptionExchangeGroup>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun v1OptionsExchangeIdCurrentGet(exchangeId: kotlin.String) : kotlin.collections.List<OptionsOptionExchangeGroup> {
        val localVarResponse = v1OptionsExchangeIdCurrentGetWithHttpInfo(exchangeId = exchangeId)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.collections.List<OptionsOptionExchangeGroup>
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()} ${localVarError.body}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * GET /v1/options/{exchange_id}/current
     * Current data by Exchange
     * Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.
     * @param exchangeId Exchange identifier (from the Metadata -&gt; Exchanges)
     * @return ApiResponse<kotlin.collections.List<OptionsOptionExchangeGroup>?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun v1OptionsExchangeIdCurrentGetWithHttpInfo(exchangeId: kotlin.String) : ApiResponse<kotlin.collections.List<OptionsOptionExchangeGroup>?> {
        val localVariableConfig = v1OptionsExchangeIdCurrentGetRequestConfig(exchangeId = exchangeId)

        return request<Unit, kotlin.collections.List<OptionsOptionExchangeGroup>>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation v1OptionsExchangeIdCurrentGet
     *
     * @param exchangeId Exchange identifier (from the Metadata -&gt; Exchanges)
     * @return RequestConfig
     */
    fun v1OptionsExchangeIdCurrentGetRequestConfig(exchangeId: kotlin.String) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "text/plain, application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/v1/options/{exchange_id}/current".replace("{"+"exchange_id"+"}", encodeURIComponent(exchangeId.toString())),
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = true,
            body = localVariableBody
        )
    }


    private fun encodeURIComponent(uriComponent: kotlin.String): kotlin.String =
        HttpUrl.Builder().scheme("http").host("localhost").addPathSegment(uriComponent).build().encodedPathSegments[0]
}
