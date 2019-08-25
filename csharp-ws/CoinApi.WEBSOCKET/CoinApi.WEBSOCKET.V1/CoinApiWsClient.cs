using System;
using CoinApi.WEBSOCKET.V1.DataModels;

namespace CoinApi.WEBSOCKET.V1
{
    internal class CoinApiWsClient : ICoinApiWsClient, IDisposable
    {
        private bool _isSandbox;
        private string _apiKey;
        private string _url;

        private const string SandboxUrl = "wss://ws-sandbox.coinapi.io/";
        private const string NoneSandboxUrl = "wss://ws.coinapi.io/";

        public CoinApiWsClient(bool isSandbox, string apiKey)
        {
            _isSandbox = isSandbox;
            _apiKey = apiKey;

            if(_isSandbox)
            {
                _url = SandboxUrl;
            }
            else
            {
                _url = NoneSandboxUrl;
            }
        }

        public WebsocketState GetWebsocketState => throw new NotImplementedException();

        public void AcceptHelloMessage(Hello helloMessage)
        {
        }

        public void Dispose()
        {
        }

        public event OHLCVEventHandler OHLCVEvent;
        public event OrderBookEventHandler OrderBookEvent;
        public event QuoteEventHandler QuoteEvent;
        public event TradeEventHandler TradeEvent;
        public event VolumeEventHandler VolumeEvent;
    }
}
