using System;
using System.Net.WebSockets;
using System.Threading;
using System.Threading.Tasks;
using CoinApi.WEBSOCKET.V1.DataModels;

namespace CoinApi.WEBSOCKET.V1
{
    internal class CoinApiWsClient : ICoinApiWsClient, IDisposable
    {
        private const string SandboxUrl = "wss://ws-sandbox.coinapi.io/";
        private const string NoneSandboxUrl = "wss://ws.coinapi.io/";

        private bool _isSandbox;
        private string _apiKey;
        private string _url;
        private bool _useAllocation;
        private readonly ClientWebSocket _client = null;
        private readonly CancellationTokenSource _cts = new CancellationTokenSource();
        private readonly QueueThread

        public CoinApiWsClient(bool isSandbox, string apiKey, bool useAllocation)
        {
            _isSandbox = isSandbox;
            _apiKey = apiKey;
            _useAllocation = useAllocation;

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

        public Task AcceptHelloMessage(Hello helloMessage)
        {
            if(_client == null)
            {
                return Task.Run(() => Connect(helloMessage));
            }
            //else dorobic reconnect

            return Task.CompletedTask;
        }

        private async Task Connect(Hello helloMessage)
        {
            while (!_cts.IsCancellationRequested)
            {
                await HandleConnection();
            }
        }

        private async Task ReConnect(Hello helloMessage)
        {
            _cts.Cancel();
        }

        private async Task HandleConnection(Hello helloMessage)
        {
            await _client.ConnectAsync(new Uri(_url), _cts.Token);
            Task.Run(() => DataHandler());

            //send hello message
        }

        private void DataHandler()
        {
            while(!_cts.IsCancellationRequested)
            {

            }
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
