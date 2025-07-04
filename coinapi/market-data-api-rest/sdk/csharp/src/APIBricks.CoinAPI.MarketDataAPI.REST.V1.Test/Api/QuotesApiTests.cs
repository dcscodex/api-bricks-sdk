/*
 * CoinAPI Market Data REST API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Xunit;
using Microsoft.Extensions.DependencyInjection;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Api;
using APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model;


/* *********************************************************************************
*              Follow these manual steps to construct tests.
*              This file will not be overwritten.
*  *********************************************************************************
* 1. Navigate to ApiTests.Base.cs and ensure any tokens are being created correctly.
*    Take care not to commit credentials to any repository.
*
* 2. Mocking is coordinated by ApiTestsBase#AddApiHttpClients.
*    To mock the client, use the generic AddApiHttpClients.
*    To mock the server, change the client's BaseAddress.
*
* 3. Locate the test you want below
*      - remove the skip property from the Fact attribute
*      - set the value of any variables if necessary
*
* 4. Run the tests and ensure they work.
*
*/


namespace APIBricks.CoinAPI.MarketDataAPI.REST.V1.Test.Api
{
    /// <summary>
    ///  Class for testing QuotesApi
    /// </summary>
    public sealed class QuotesApiTests : ApiTestsBase
    {
        private readonly IQuotesApi _instance;

        public QuotesApiTests(): base(Array.Empty<string>())
        {
            _instance = _host.Services.GetRequiredService<IQuotesApi>();
        }

        /// <summary>
        /// Test V1QuotesCurrentGet
        /// </summary>
        [Fact (Skip = "not implemented")]
        public async Task V1QuotesCurrentGetAsyncTest()
        {
            Client.Option<string> filterSymbolId = default!;
            var response = await _instance.V1QuotesCurrentGetAsync(filterSymbolId);
            var model = response.Ok();
            Assert.IsType<List<V1QuoteTrade>>(model);
        }

        /// <summary>
        /// Test V1QuotesLatestGet
        /// </summary>
        [Fact (Skip = "not implemented")]
        public async Task V1QuotesLatestGetAsyncTest()
        {
            Client.Option<string> filterSymbolId = default!;
            Client.Option<int> limit = default!;
            var response = await _instance.V1QuotesLatestGetAsync(filterSymbolId, limit);
            var model = response.Ok();
            Assert.IsType<List<V1Quote>>(model);
        }

        /// <summary>
        /// Test V1QuotesSymbolIdCurrentGet
        /// </summary>
        [Fact (Skip = "not implemented")]
        public async Task V1QuotesSymbolIdCurrentGetAsyncTest()
        {
            string symbolId = default!;
            var response = await _instance.V1QuotesSymbolIdCurrentGetAsync(symbolId);
            var model = response.Ok();
            Assert.IsType<V1QuoteTrade>(model);
        }

        /// <summary>
        /// Test V1QuotesSymbolIdHistoryGet
        /// </summary>
        [Fact (Skip = "not implemented")]
        public async Task V1QuotesSymbolIdHistoryGetAsyncTest()
        {
            string symbolId = default!;
            Client.Option<string> date = default!;
            Client.Option<string> timeStart = default!;
            Client.Option<string> timeEnd = default!;
            Client.Option<int> limit = default!;
            var response = await _instance.V1QuotesSymbolIdHistoryGetAsync(symbolId, date, timeStart, timeEnd, limit);
            var model = response.Ok();
            Assert.IsType<List<V1Quote>>(model);
        }

        /// <summary>
        /// Test V1QuotesSymbolIdLatestGet
        /// </summary>
        [Fact (Skip = "not implemented")]
        public async Task V1QuotesSymbolIdLatestGetAsyncTest()
        {
            string symbolId = default!;
            Client.Option<int> limit = default!;
            var response = await _instance.V1QuotesSymbolIdLatestGetAsync(symbolId, limit);
            var model = response.Ok();
            Assert.IsType<List<V1Quote>>(model);
        }
    }
}
