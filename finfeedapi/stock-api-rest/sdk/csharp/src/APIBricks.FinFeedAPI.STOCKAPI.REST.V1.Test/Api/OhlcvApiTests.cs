/*
 * FinFeedAPI Stock REST API
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
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Api;
using APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model;


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


namespace APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Test.Api
{
    /// <summary>
    ///  Class for testing OhlcvApi
    /// </summary>
    public sealed class OhlcvApiTests : ApiTestsBase
    {
        private readonly IOhlcvApi _instance;

        public OhlcvApiTests(): base(Array.Empty<string>())
        {
            _instance = _host.Services.GetRequiredService<IOhlcvApi>();
        }

        /// <summary>
        /// Test V1OhlcvExchangeExchangeIdHistoryGet
        /// </summary>
        [Fact (Skip = "not implemented")]
        public async Task V1OhlcvExchangeExchangeIdHistoryGetAsyncTest()
        {
            string exchangeId = default!;
            string periodId = default!;
            string timeStart = default!;
            string timeEnd = default!;
            var response = await _instance.V1OhlcvExchangeExchangeIdHistoryGetAsync(exchangeId, periodId, timeStart, timeEnd);
            var model = response.Ok();
            Assert.IsType<List<OHLCVExchangeTimeseriesItem>>(model);
        }

        /// <summary>
        /// Test V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet
        /// </summary>
        [Fact (Skip = "not implemented")]
        public async Task V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetAsyncTest()
        {
            string exchangeId = default!;
            string symbolId = default!;
            string periodId = default!;
            Client.Option<string> timeStart = default!;
            Client.Option<string> timeEnd = default!;
            Client.Option<int> limit = default!;
            var response = await _instance.V1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGetAsync(exchangeId, symbolId, periodId, timeStart, timeEnd, limit);
            var model = response.Ok();
            Assert.IsType<List<OHLCVTimeseriesItem>>(model);
        }

        /// <summary>
        /// Test V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet
        /// </summary>
        [Fact (Skip = "not implemented")]
        public async Task V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetAsyncTest()
        {
            string exchangeId = default!;
            string symbolId = default!;
            string periodId = default!;
            Client.Option<int> limit = default!;
            var response = await _instance.V1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGetAsync(exchangeId, symbolId, periodId, limit);
            var model = response.Ok();
            Assert.IsType<List<OHLCVTimeseriesItem>>(model);
        }

        /// <summary>
        /// Test V1OhlcvPeriodsGet
        /// </summary>
        [Fact (Skip = "not implemented")]
        public async Task V1OhlcvPeriodsGetAsyncTest()
        {
            var response = await _instance.V1OhlcvPeriodsGetAsync();
            var model = response.Ok();
            Assert.IsType<List<OHLCVTimeseriesPeriod>>(model);
        }
    }
}
