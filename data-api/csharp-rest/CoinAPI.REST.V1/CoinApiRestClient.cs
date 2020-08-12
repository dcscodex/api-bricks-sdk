
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using CoinAPI.REST.V1.Exceptions;
using CoinAPI.REST.V1.DataModels;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace CoinAPI.REST.V1 
{
    public class CoinApiRestClient
    {
        private string apikey;
        private string dateFormat = "yyyy-MM-ddTHH:mm:ss.fff";
        private string WebUrl = "https://rest.coinapi.io";

        public CoinApiRestClient(string apikey, bool sandbox = false)
        {
            this.apikey = apikey;
			if (sandbox)
			{
				WebUrl = "https://rest-sandbox.coinapi.io";
			}
            this.WebUrl = WebUrl.TrimEnd('/');
        }

        public CoinApiRestClient(string apikey, string url)
        {
            this.apikey = apikey;
            this.WebUrl = url.TrimEnd('/');
        }

        private async Task<T> GetData<T>(string url)
        {
            try
            {
                using (var handler = new HttpClientHandler())
                {
                    handler.AutomaticDecompression = DecompressionMethods.GZip | DecompressionMethods.Deflate;
                    using (var client = new HttpClient(handler, false))
                    {
                        client.DefaultRequestHeaders.Add("X-CoinAPI-Key", apikey);

                        HttpResponseMessage response = await client.GetAsync(WebUrl + url);

                        if (!response.IsSuccessStatusCode) 
                            await RaiseError(response);

                        return await Deserialize<T>(response);
                    }
                }
            }
            catch (CoinApiException)
            {
                throw;
            }
            catch (Exception e)
            {
                throw new CoinApiException("Unexpected error", e);
            }
        }

        private static async Task RaiseError(HttpResponseMessage response)
        {
            var message = (await Deserialize<ErrorMessage>(response)).message;

            switch ((int) response.StatusCode)
            {
                case 400:
                    throw new BadRequestException(message);
                case 401:
                    throw new UnauthorizedException(message);
                case 403:
                    throw new ForbiddenException(message);
                case 429:
                    throw new TooManyRequestsException(message);
                case 550:
                    throw new NoDataException(message);
                default:
                    throw new CoinApiException(message);
            }
        }

        private static async Task<T> Deserialize<T>(HttpResponseMessage responseMessage)
        {
            var responseString = await responseMessage.Content.ReadAsStringAsync();
            var data = JsonConvert.DeserializeObject<T>(responseString);
            return data;
        }


        public Task<List<Exchange>> Metadata_list_exchangesAsync()
        {
            return GetData<List<Exchange>>("/v1/exchanges");
        }

        public Task<List<Asset>> Metadata_list_assetsAsync()
        {
            return GetData<List<Asset>>("/v1/assets");
        }

        public Task<List<Symbol>> Metadata_list_symbolsAsync()
        {
            return GetData<List<Symbol>>("/v1/symbols");
        }

        public Task<List<Symbol>> Metadata_list_symbols_exchangeAsync(string exchangeId)
        {
            return GetData<List<Symbol>>($"/v1/symbols/{exchangeId}");
        }

        public Task<List<Icon>> Metadata_list_assets_iconsAsync(int iconSize)
        {
            return GetData<List<Icon>>($"/v1/assets/icons/{iconSize}");
        }

        public Task<List<Icon>> Metadata_list_exchanges_iconsAsync(int iconSize)
        {
            return GetData<List<Icon>>($"/v1/exchanges/icons/{iconSize}");
        }

        public Task<List<SymbolMapping>> Metadata_symbol_mappingAsync(string idExchange)
        {
            var url = $"/v1/symbols/map/{idExchange}";
            return GetData<List<SymbolMapping>>(url);
        }

        public Task<Exchangerate> Exchange_rates_get_specific_rateAsync(string baseId, string quoteId, DateTime time)
        {
            var url = string.Format("/v1/exchangerate/{0}/{1}?time={2}", baseId, quoteId, time.ToString(dateFormat));
            return GetData<Exchangerate>(url);
        }
        public Task<Exchangerate> Exchange_rates_get_specific_rateAsync(string baseId, string quoteId)
        {
            var url = string.Format("/v1/exchangerate/{0}/{1}", baseId, quoteId);
            return GetData<Exchangerate>(url);
        }

        public Task<ExchangeCurrentrate> Exchange_rates_get_all_current_ratesAsync(string baseId, bool invert = false)
        {
            var url = string.Format("/v1/exchangerate/{0}?invert={1}", baseId, invert);
            return GetData<ExchangeCurrentrate>(url);
        }

        public Task<List<Period>> Ohlcv_list_all_periodsAsync()
        {
            var url = "/v1/ohlcv/periods";
            return GetData<List<Period>>(url);
        }


        public Task<List<OHLCV>> Ohlcv_latest_dataAsync(string symbolId, string periodId, int limit)
        {
            var url = string.Format("/v1/ohlcv/{0}/latest?period_id={1}&limit={2}", symbolId, periodId, limit);
            return GetData<List<OHLCV>>(url);
        }
        public Task<List<OHLCV>> Ohlcv_latest_dataAsync(string symbolId, string periodId)
        {
            var url = string.Format("/v1/ohlcv/{0}/latest?period_id={1}", symbolId, periodId);
            return GetData<List<OHLCV>>(url);
        }

        public Task<List<OHLCV>> Ohlcv_latest_asset_dataAsync(string assetBase, string assetQuote, string periodId)
        {
            var url = string.Format("/v1/ohlcv/{0}/{1}/latest?period_id={2}", assetBase, assetQuote, periodId);
            return GetData<List<OHLCV>>(url);
        }

        public Task<List<OHLCV>> Ohlcv_historical_dataAsync(string symbolId, string periodId, DateTime start, DateTime end, int limit)
        {
            var url = string.Format("/v1/ohlcv/{0}/history?period_id={1}&time_start={2}&time_end={3}&limit={4}", symbolId, periodId, start.ToString(dateFormat), end.ToString(dateFormat), limit);
            return GetData<List<OHLCV>>(url);
        }
        public Task<List<OHLCV>> Ohlcv_historical_dataAsync(string symbolId, string periodId, DateTime start, DateTime end)
        {
            var url = string.Format("/v1/ohlcv/{0}/history?period_id={1}&time_start={2}&time_end={3}", symbolId, periodId, start.ToString(dateFormat), end.ToString(dateFormat));
            return GetData<List<OHLCV>>(url);
        }
        public Task<List<OHLCV>> Ohlcv_historical_dataAsync(string symbolId, string periodId, DateTime start, int limit)
        {
            var url = string.Format("/v1/ohlcv/{0}/history?period_id={1}&time_start={2}&limit={3}", symbolId, periodId, start.ToString(dateFormat), limit);
            return GetData<List<OHLCV>>(url);
        }
        public Task<List<OHLCV>> Ohlcv_historical_dataAsync(string symbolId, string periodId, DateTime start)
        {
            var url = string.Format("/v1/ohlcv/{0}/history?period_id={1}&time_start={2}", symbolId, periodId, start.ToString(dateFormat));
            return GetData<List<OHLCV>>(url);
        }

        public Task<List<Trade>> Trades_latest_data_allAsync()
        {
            var url = "/v1/trades/latest";
            return GetData<List<Trade>>(url);
        }
        public Task<List<Trade>> Trades_latest_data_allAsync(int limit)
        {
            var url = string.Format("/v1/trades/latest?limit={0}", limit);
            return GetData<List<Trade>>(url);
        }


        public Task<List<Trade>> Trades_latest_data_symbolAsync(string symbolId)
        {
            var url = string.Format("/v1/trades/{0}/latest", symbolId);
            return GetData<List<Trade>>(url);
        }
        public Task<List<Trade>> Trades_latest_data_symbolAsync(string symbolId, int limit)
        {
            var url = string.Format("/v1/trades/{0}/latest?limit={1}", symbolId, limit);
            return GetData<List<Trade>>(url);
        }

        public Task<List<Trade>> Trades_historical_dataAsync(string symbolId, DateTime start, DateTime end, int limit)
        {
            var url = string.Format("/v1/trades/{0}/history?time_start={1}&time_end={2}&limit={3}", symbolId, start.ToString(dateFormat), end.ToString(dateFormat), limit);
            return GetData<List<Trade>>(url);
        }
        public Task<List<Trade>> Trades_historical_dataAsync(string symbolId, DateTime start)
        {
            var url = string.Format("/v1/trades/{0}/history?time_start={1}", symbolId, start.ToString(dateFormat));
            return GetData<List<Trade>>(url);
        }
        public Task<List<Trade>> Trades_historical_dataAsync(string symbolId, DateTime start, DateTime end)
        {
            var url = string.Format("/v1/trades/{0}/history?time_start={1}&time_end={2}", symbolId, start.ToString(dateFormat), end.ToString(dateFormat));
            return GetData<List<Trade>>(url);
        }
        public Task<List<Trade>> Trades_historical_dataAsync(string symbolId, DateTime start, int limit)
        {
            var url = string.Format("/v1/trades/{0}/history?time_start={1}&limit={2}", symbolId, start.ToString(dateFormat), limit);
            return GetData<List<Trade>>(url);
        }

        public Task<List<Quote>> Quotes_current_data_allAsync()
        {
            var url = "/v1/quotes/current";
            return GetData<List<Quote>>(url);
        }

        public Task<Quote> Quotes_current_data_symbolAsync(string symbolId)
        {
            var url = string.Format("/v1/quotes/{0}/current", symbolId);
            return GetData<Quote>(url);
        }

        public Task<List<Quote>> Quotes_latest_data_allAsync()
        {
            var url = "/v1/quotes/latest";
            return GetData<List<Quote>>(url);
        }
        public Task<List<Quote>> Quotes_latest_data_allAsync(int limit)
        {
            var url = string.Format("/v1/quotes/latest?limit={0}", limit);
            return GetData<List<Quote>>(url);
        }

        public Task<List<Quote>> Quotes_latest_data_symbolAsync(string symbolId)
        {
            var url = string.Format("/v1/quotes/{0}/latest", symbolId);
            return GetData<List<Quote>>(url);
        }
        public Task<List<Quote>> Quotes_latest_data_symbolAsync(string symbolId, int limit)
        {
            var url = string.Format("/v1/quotes/{0}/latest?limit={1}", symbolId, limit);
            return GetData<List<Quote>>(url);
        }

        public Task<List<Quote>> Quotes_historical_dataAsync(string symbolId, DateTime start, DateTime end, int limit)
        {
            var url = string.Format("/v1/quotes/{0}/history?time_start={1}&time_end={2}&limit={3}", symbolId, start.ToString(dateFormat), end.ToString(dateFormat), limit);
            return GetData<List<Quote>>(url);

        }
        public Task<List<Quote>> Quotes_historical_dataAsync(string symbolId, DateTime start)
        {
            var url = string.Format("/v1/quotes/{0}/history?time_start={1}", symbolId, start.ToString(dateFormat));
            return GetData<List<Quote>>(url);
        }
        public Task<List<Quote>> Quotes_historical_dataAsync(string symbolId, DateTime start, DateTime end)
        {
            var url = string.Format("/v1/quotes/{0}/history?time_start={1}&time_end={2}", symbolId, start.ToString(dateFormat), end.ToString(dateFormat));
            return GetData<List<Quote>>(url);
        }
        public Task<List<Quote>> Quotes_historical_dataAsync(string symbolId, DateTime start, int limit)
        {
            var url = string.Format("/v1/quotes/{0}/history?time_start={1}&limit={2}", symbolId, start.ToString(dateFormat), limit);
            return GetData<List<Quote>>(url);

        }
        public Task<List<Orderbook>> Orderbooks_current_data_all_filtered_bitstampAsync()
        {
            var url = "/v1/orderbooks/current?filter_symbol_id=BITSTAMP";
            return GetData<List<Orderbook>>(url);
        }

        public Task<Orderbook> Orderbooks_current_data_symbolAsync(string symbolId)
        {
            var url = string.Format("/v1/orderbooks/{0}/current", symbolId);
            return GetData<Orderbook>(url);
        }

        public Task<List<Orderbook>> Orderbooks_last_dataAsync(string symbolId, int limit)
        {
            var url = string.Format("/v1/orderbooks/{0}/latest?limit={1}", symbolId, limit);
            return GetData<List<Orderbook>>(url);
        }
        public Task<List<Orderbook>> Orderbooks_last_dataAsync(string symbolId)
        {
            var url = string.Format("/v1/orderbooks/{0}/latest", symbolId);
            return GetData<List<Orderbook>>(url);
        }

        public Task<List<Orderbook>> Orderbooks_historical_dataAsync(string symbolId, DateTime start, DateTime end, int limit)
        {
            var url = string.Format("/v1/orderbooks/{0}/history?time_start={1}&time_end={2}&limit={3}", symbolId, start.ToString(dateFormat), end.ToString(dateFormat), limit);
            return GetData<List<Orderbook>>(url);
        }
        public Task<List<Orderbook>> Orderbooks_historical_dataAsync(string symbolId, DateTime start)
        {
            var url = string.Format("/v1/orderbooks/{0}/history?time_start={1}", symbolId, start.ToString(dateFormat));
            return GetData<List<Orderbook>>(url);
        }
        public Task<List<Orderbook>> Orderbooks_historical_dataAsync(string symbolId, DateTime start, DateTime end)
        {
            var url = string.Format("/v1/orderbooks/{0}/history?time_start={1}&time_end={2}", symbolId, start.ToString(dateFormat), end.ToString(dateFormat));
            return GetData<List<Orderbook>>(url);
        }
        public Task<List<Orderbook>> Orderbooks_historical_dataAsync(string symbolId, DateTime start, int limit)
        {
            var url = string.Format("/v1/orderbooks/{0}/history?time_start={1}&limit={2}", symbolId, start.ToString(dateFormat), limit);
            return GetData<List<Orderbook>>(url);
        }
    }

}
