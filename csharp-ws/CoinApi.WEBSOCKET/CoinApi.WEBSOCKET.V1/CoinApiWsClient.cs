using System;
using System.Net.WebSockets;
using System.Threading;
using System.Threading.Tasks;
using CoinApi.WEBSOCKET.V1.DataModels;
using Utf8Json;

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
        private readonly QueueThread<MessageData> _queueThread = null;

        public CoinApiWsClient(bool isSandbox, string apiKey, bool useAllocation)
        {
            _isSandbox = isSandbox;
            _apiKey = apiKey;
            _useAllocation = useAllocation;
            _queueThread = new QueueThread<MessageData>();

            _queueThread.ItemDequeuedEvent += _queueThread_ItemDequeuedEvent;

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
            else
            {
                //reconnect
            }

            return Task.CompletedTask;
        }

        private void _queueThread_ItemDequeuedEvent(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<dynamic>(item.Data);
            var type = data["type"] as string;

            Enum.TryParse(type, out MessageType messageType);

            switch(messageType)
            {
                case MessageType.book:
                    break;
                case MessageType.ohlcv:
                    break;
                case MessageType.quote:
                    break;
                case MessageType.trade:
                    break;
                case MessageType.volume:
                    break;
            }
        }

        private void HandleBookItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<OrderBook>(item.Data);
            OrderBookEvent?.Invoke(sender, data);
        }

        private void HandleOHLCVItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<OHLCV>(item.Data);
            OHLCVEvent?.Invoke(sender, data);
        }

        private void HandleQuoteItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<Quote>(item.Data);
            QuoteEvent?.Invoke(sender, data);
        }

        private void HandleTradeItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<Trade>(item.Data);
            TradeEvent?.Invoke(sender, data);
        }

        private void HandleVolumeItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<Volume>(item.Data);
            VolumeEvent?.Invoke(sender, data);
        }

        private async Task Connect(Hello helloMessage)
        {
            while (!_cts.IsCancellationRequested)
            {
                await HandleConnection(helloMessage);
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
