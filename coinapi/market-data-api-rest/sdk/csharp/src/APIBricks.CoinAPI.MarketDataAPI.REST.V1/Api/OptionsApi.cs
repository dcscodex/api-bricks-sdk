// <auto-generated>
/*
 * CoinAPI Market Data REST API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

#nullable enable

using System;
using System.Collections.Generic;
using System.Net;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text.Json;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;
using System.Diagnostics.CodeAnalysis;

namespace APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// This class is registered as transient.
    /// </summary>
    public interface IOptionsApi : IApi
    {
        /// <summary>
        /// The class containing the events
        /// </summary>
        OptionsApiEvents Events { get; }

        /// <summary>
        /// Current data by Exchange
        /// </summary>
        /// <remarks>
        /// Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.
        /// </remarks>
        /// <exception cref="ApiException">Thrown when fails to make API call</exception>
        /// <param name="exchangeId">Exchange identifier (from the Metadata -&gt; Exchanges)</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns><see cref="Task"/>&lt;<see cref="IV1OptionsExchangeIdCurrentGetApiResponse"/>&gt;</returns>
        Task<IV1OptionsExchangeIdCurrentGetApiResponse> V1OptionsExchangeIdCurrentGetAsync(string exchangeId, System.Threading.CancellationToken cancellationToken = default);

        /// <summary>
        /// Current data by Exchange
        /// </summary>
        /// <remarks>
        /// Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.
        /// </remarks>
        /// <param name="exchangeId">Exchange identifier (from the Metadata -&gt; Exchanges)</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns><see cref="Task"/>&lt;<see cref="IV1OptionsExchangeIdCurrentGetApiResponse"/>?&gt;</returns>
        Task<IV1OptionsExchangeIdCurrentGetApiResponse?> V1OptionsExchangeIdCurrentGetOrDefaultAsync(string exchangeId, System.Threading.CancellationToken cancellationToken = default);
    }

    /// <summary>
    /// The <see cref="IV1OptionsExchangeIdCurrentGetApiResponse"/>
    /// </summary>
    public interface IV1OptionsExchangeIdCurrentGetApiResponse : APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client.IApiResponse, IOk<List<OptionsOptionExchangeGroup>?>
    {
        /// <summary>
        /// Returns true if the response is 200 Ok
        /// </summary>
        /// <returns></returns>
        bool IsOk { get; }
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class OptionsApiEvents
    {
        /// <summary>
        /// The event raised after the server response
        /// </summary>
        public event EventHandler<ApiResponseEventArgs>? OnV1OptionsExchangeIdCurrentGet;

        /// <summary>
        /// The event raised after an error querying the server
        /// </summary>
        public event EventHandler<ExceptionEventArgs>? OnErrorV1OptionsExchangeIdCurrentGet;

        internal void ExecuteOnV1OptionsExchangeIdCurrentGet(OptionsApi.V1OptionsExchangeIdCurrentGetApiResponse apiResponse)
        {
            OnV1OptionsExchangeIdCurrentGet?.Invoke(this, new ApiResponseEventArgs(apiResponse));
        }

        internal void ExecuteOnErrorV1OptionsExchangeIdCurrentGet(Exception exception)
        {
            OnErrorV1OptionsExchangeIdCurrentGet?.Invoke(this, new ExceptionEventArgs(exception));
        }
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public sealed partial class OptionsApi : IOptionsApi
    {
        private JsonSerializerOptions _jsonSerializerOptions;

        /// <summary>
        /// The logger factory
        /// </summary>
        public ILoggerFactory LoggerFactory { get; }

        /// <summary>
        /// The logger
        /// </summary>
        public ILogger<OptionsApi> Logger { get; }

        /// <summary>
        /// The HttpClient
        /// </summary>
        public HttpClient HttpClient { get; }

        /// <summary>
        /// The class containing the events
        /// </summary>
        public OptionsApiEvents Events { get; }

        /// <summary>
        /// A token provider of type <see cref="ApiKeyProvider"/>
        /// </summary>
        public TokenProvider<ApiKeyToken> ApiKeyProvider { get; }

        /// <summary>
        /// A token provider of type <see cref="BearerToken"/>
        /// </summary>
        public TokenProvider<BearerToken> BearerTokenProvider { get; }

        /// <summary>
        /// Initializes a new instance of the <see cref="OptionsApi"/> class.
        /// </summary>
        /// <returns></returns>
        public OptionsApi(ILogger<OptionsApi> logger, ILoggerFactory loggerFactory, HttpClient httpClient, JsonSerializerOptionsProvider jsonSerializerOptionsProvider, OptionsApiEvents optionsApiEvents,
            TokenProvider<ApiKeyToken> apiKeyProvider,
            TokenProvider<BearerToken> bearerTokenProvider)
        {
            _jsonSerializerOptions = jsonSerializerOptionsProvider.Options;
            LoggerFactory = loggerFactory;
            Logger = LoggerFactory.CreateLogger<OptionsApi>();
            HttpClient = httpClient;
            Events = optionsApiEvents;
            ApiKeyProvider = apiKeyProvider;
            BearerTokenProvider = bearerTokenProvider;
        }

        partial void FormatV1OptionsExchangeIdCurrentGet(ref string exchangeId);

        /// <summary>
        /// Validates the request parameters
        /// </summary>
        /// <param name="exchangeId"></param>
        /// <returns></returns>
        private void ValidateV1OptionsExchangeIdCurrentGet(string exchangeId)
        {
            if (exchangeId == null)
                throw new ArgumentNullException(nameof(exchangeId));
        }

        /// <summary>
        /// Processes the server response
        /// </summary>
        /// <param name="apiResponseLocalVar"></param>
        /// <param name="exchangeId"></param>
        private void AfterV1OptionsExchangeIdCurrentGetDefaultImplementation(IV1OptionsExchangeIdCurrentGetApiResponse apiResponseLocalVar, string exchangeId)
        {
            bool suppressDefaultLog = false;
            AfterV1OptionsExchangeIdCurrentGet(ref suppressDefaultLog, apiResponseLocalVar, exchangeId);
            if (!suppressDefaultLog)
                Logger.LogInformation("{0,-9} | {1} | {3}", (apiResponseLocalVar.DownloadedAt - apiResponseLocalVar.RequestedAt).TotalSeconds, apiResponseLocalVar.StatusCode, apiResponseLocalVar.Path);
        }

        /// <summary>
        /// Processes the server response
        /// </summary>
        /// <param name="suppressDefaultLog"></param>
        /// <param name="apiResponseLocalVar"></param>
        /// <param name="exchangeId"></param>
        partial void AfterV1OptionsExchangeIdCurrentGet(ref bool suppressDefaultLog, IV1OptionsExchangeIdCurrentGetApiResponse apiResponseLocalVar, string exchangeId);

        /// <summary>
        /// Logs exceptions that occur while retrieving the server response
        /// </summary>
        /// <param name="exceptionLocalVar"></param>
        /// <param name="pathFormatLocalVar"></param>
        /// <param name="pathLocalVar"></param>
        /// <param name="exchangeId"></param>
        private void OnErrorV1OptionsExchangeIdCurrentGetDefaultImplementation(Exception exceptionLocalVar, string pathFormatLocalVar, string pathLocalVar, string exchangeId)
        {
            bool suppressDefaultLogLocalVar = false;
            OnErrorV1OptionsExchangeIdCurrentGet(ref suppressDefaultLogLocalVar, exceptionLocalVar, pathFormatLocalVar, pathLocalVar, exchangeId);
            if (!suppressDefaultLogLocalVar)
                Logger.LogError(exceptionLocalVar, "An error occurred while sending the request to the server.");
        }

        /// <summary>
        /// A partial method that gives developers a way to provide customized exception handling
        /// </summary>
        /// <param name="suppressDefaultLogLocalVar"></param>
        /// <param name="exceptionLocalVar"></param>
        /// <param name="pathFormatLocalVar"></param>
        /// <param name="pathLocalVar"></param>
        /// <param name="exchangeId"></param>
        partial void OnErrorV1OptionsExchangeIdCurrentGet(ref bool suppressDefaultLogLocalVar, Exception exceptionLocalVar, string pathFormatLocalVar, string pathLocalVar, string exchangeId);

        /// <summary>
        /// Current data by Exchange Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.
        /// </summary>
        /// <param name="exchangeId">Exchange identifier (from the Metadata -&gt; Exchanges)</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns><see cref="Task"/>&lt;<see cref="IV1OptionsExchangeIdCurrentGetApiResponse"/>&gt;</returns>
        public async Task<IV1OptionsExchangeIdCurrentGetApiResponse?> V1OptionsExchangeIdCurrentGetOrDefaultAsync(string exchangeId, System.Threading.CancellationToken cancellationToken = default)
        {
            try
            {
                return await V1OptionsExchangeIdCurrentGetAsync(exchangeId, cancellationToken).ConfigureAwait(false);
            }
            catch (Exception)
            {
                return null;
            }
        }

        /// <summary>
        /// Current data by Exchange Get current options data for a specific exchange.  Returns option data grouped by underlying asset, quote currency, and expiration time, with quotes for both calls and puts at each strike price.
        /// </summary>
        /// <exception cref="ApiException">Thrown when fails to make API call</exception>
        /// <param name="exchangeId">Exchange identifier (from the Metadata -&gt; Exchanges)</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns><see cref="Task"/>&lt;<see cref="IV1OptionsExchangeIdCurrentGetApiResponse"/>&gt;</returns>
        public async Task<IV1OptionsExchangeIdCurrentGetApiResponse> V1OptionsExchangeIdCurrentGetAsync(string exchangeId, System.Threading.CancellationToken cancellationToken = default)
        {
            UriBuilder uriBuilderLocalVar = new UriBuilder();

            try
            {
                ValidateV1OptionsExchangeIdCurrentGet(exchangeId);

                FormatV1OptionsExchangeIdCurrentGet(ref exchangeId);

                using (HttpRequestMessage httpRequestMessageLocalVar = new HttpRequestMessage())
                {
                    uriBuilderLocalVar.Host = HttpClient.BaseAddress!.Host;
                    uriBuilderLocalVar.Port = HttpClient.BaseAddress.Port;
                    uriBuilderLocalVar.Scheme = HttpClient.BaseAddress.Scheme;
                    uriBuilderLocalVar.Path = HttpClient.BaseAddress.AbsolutePath == "/"
                        ? "/v1/options/{exchange_id}/current"
                        : string.Concat(HttpClient.BaseAddress.AbsolutePath, "/v1/options/{exchange_id}/current");
                    uriBuilderLocalVar.Path = uriBuilderLocalVar.Path.Replace("%7Bexchange_id%7D", Uri.EscapeDataString(exchangeId.ToString()));

                    List<TokenBase> tokenBaseLocalVars = new List<TokenBase>();
                    ApiKeyToken apiKeyTokenLocalVar1 = (ApiKeyToken) await ApiKeyProvider.GetAsync("Authorization", cancellationToken).ConfigureAwait(false);
                    tokenBaseLocalVars.Add(apiKeyTokenLocalVar1);
                    apiKeyTokenLocalVar1.UseInHeader(httpRequestMessageLocalVar);

                    httpRequestMessageLocalVar.RequestUri = uriBuilderLocalVar.Uri;

                    BearerToken bearerTokenLocalVar2 = (BearerToken) await BearerTokenProvider.GetAsync(cancellation: cancellationToken).ConfigureAwait(false);

                    tokenBaseLocalVars.Add(bearerTokenLocalVar2);

                    bearerTokenLocalVar2.UseInHeader(httpRequestMessageLocalVar, "");

                    string[] acceptLocalVars = new string[] {
                        "text/plain",
                        "application/json",
                        "text/json",
                        "application/x-msgpack"
                    };

                    string? acceptLocalVar = ClientUtils.SelectHeaderAccept(acceptLocalVars);

                    if (acceptLocalVar != null)
                        httpRequestMessageLocalVar.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue(acceptLocalVar));

                    httpRequestMessageLocalVar.Method = HttpMethod.Get;

                    DateTime requestedAtLocalVar = DateTime.UtcNow;

                    using (HttpResponseMessage httpResponseMessageLocalVar = await HttpClient.SendAsync(httpRequestMessageLocalVar, cancellationToken).ConfigureAwait(false))
                    {
                        string responseContentLocalVar = await httpResponseMessageLocalVar.Content.ReadAsStringAsync(cancellationToken).ConfigureAwait(false);

                        ILogger<V1OptionsExchangeIdCurrentGetApiResponse> apiResponseLoggerLocalVar = LoggerFactory.CreateLogger<V1OptionsExchangeIdCurrentGetApiResponse>();

                        V1OptionsExchangeIdCurrentGetApiResponse apiResponseLocalVar = new(apiResponseLoggerLocalVar, httpRequestMessageLocalVar, httpResponseMessageLocalVar, responseContentLocalVar, "/v1/options/{exchange_id}/current", requestedAtLocalVar, _jsonSerializerOptions);

                        AfterV1OptionsExchangeIdCurrentGetDefaultImplementation(apiResponseLocalVar, exchangeId);

                        Events.ExecuteOnV1OptionsExchangeIdCurrentGet(apiResponseLocalVar);

                        if (apiResponseLocalVar.StatusCode == (HttpStatusCode) 429)
                            foreach(TokenBase tokenBaseLocalVar in tokenBaseLocalVars)
                                tokenBaseLocalVar.BeginRateLimit();

                        return apiResponseLocalVar;
                    }
                }
            }
            catch(Exception e)
            {
                OnErrorV1OptionsExchangeIdCurrentGetDefaultImplementation(e, "/v1/options/{exchange_id}/current", uriBuilderLocalVar.Path, exchangeId);
                Events.ExecuteOnErrorV1OptionsExchangeIdCurrentGet(e);
                throw;
            }
        }

        /// <summary>
        /// The <see cref="V1OptionsExchangeIdCurrentGetApiResponse"/>
        /// </summary>
        public partial class V1OptionsExchangeIdCurrentGetApiResponse : APIBricks.CoinAPI.MarketDataAPI.REST.V1.Client.ApiResponse, IV1OptionsExchangeIdCurrentGetApiResponse
        {
            /// <summary>
            /// The logger
            /// </summary>
            public ILogger<V1OptionsExchangeIdCurrentGetApiResponse> Logger { get; }

            /// <summary>
            /// The <see cref="V1OptionsExchangeIdCurrentGetApiResponse"/>
            /// </summary>
            /// <param name="logger"></param>
            /// <param name="httpRequestMessage"></param>
            /// <param name="httpResponseMessage"></param>
            /// <param name="rawContent"></param>
            /// <param name="path"></param>
            /// <param name="requestedAt"></param>
            /// <param name="jsonSerializerOptions"></param>
            public V1OptionsExchangeIdCurrentGetApiResponse(ILogger<V1OptionsExchangeIdCurrentGetApiResponse> logger, System.Net.Http.HttpRequestMessage httpRequestMessage, System.Net.Http.HttpResponseMessage httpResponseMessage, string rawContent, string path, DateTime requestedAt, System.Text.Json.JsonSerializerOptions jsonSerializerOptions) : base(httpRequestMessage, httpResponseMessage, rawContent, path, requestedAt, jsonSerializerOptions)
            {
                Logger = logger;
                OnCreated(httpRequestMessage, httpResponseMessage);
            }

            partial void OnCreated(global::System.Net.Http.HttpRequestMessage httpRequestMessage, System.Net.Http.HttpResponseMessage httpResponseMessage);

            /// <summary>
            /// Returns true if the response is 200 Ok
            /// </summary>
            /// <returns></returns>
            public bool IsOk => 200 == (int)StatusCode;

            /// <summary>
            /// Deserializes the response if the response is 200 Ok
            /// </summary>
            /// <returns></returns>
            public List<OptionsOptionExchangeGroup>? Ok()
            {
                // This logic may be modified with the AsModel.mustache template
                return IsOk
                    ? System.Text.Json.JsonSerializer.Deserialize<List<OptionsOptionExchangeGroup>>(RawContent, _jsonSerializerOptions)
                    : null;
            }

            /// <summary>
            /// Returns true if the response is 200 Ok and the deserialized response is not null
            /// </summary>
            /// <param name="result"></param>
            /// <returns></returns>
            public bool TryOk([NotNullWhen(true)]out List<OptionsOptionExchangeGroup>? result)
            {
                result = null;

                try
                {
                    result = Ok();
                } catch (Exception e)
                {
                    OnDeserializationErrorDefaultImplementation(e, (HttpStatusCode)200);
                }

                return result != null;
            }

            private void OnDeserializationErrorDefaultImplementation(Exception exception, HttpStatusCode httpStatusCode)
            {
                bool suppressDefaultLog = false;
                OnDeserializationError(ref suppressDefaultLog, exception, httpStatusCode);
                if (!suppressDefaultLog)
                    Logger.LogError(exception, "An error occurred while deserializing the {code} response.", httpStatusCode);
            }

            partial void OnDeserializationError(ref bool suppressDefaultLog, Exception exception, HttpStatusCode httpStatusCode);
        }
    }
}
