using System;
using System.Net.WebSockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using CoinApi.WEBSOCKET.V1.DataModels;
using Utf8Json;

namespace CoinApi.WEBSOCKET.V1
{
    public class CoinApiWsClient : ICoinApiWsClient, IDisposable
    {
        private const string SandboxUrl = "wss://ws-sandbox.coinapi.io/";
        private const string NoneSandboxUrl = "wss://ws.coinapi.io/";

        private bool _isSandbox;
        private string _apiKey;
        private string _url;
        private ClientWebSocket _client = null;
        private Hello? _helloMessage = null;
        private readonly CancellationTokenSource _cts = new CancellationTokenSource();
        private readonly QueueThread<MessageData> _queueThread = null;

        private readonly object _helloSync = new object();

        public CoinApiWsClient(bool isSandbox)
        {
            _isSandbox = isSandbox;
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

        private Hello? helloMessage
        {
            get
            {
                lock (_helloSync)
                {
                    return _helloMessage;
                }
            }

            set
            {
                lock (_helloSync)
                {
                    _helloMessage = value;
                }
            }
        }

        public WebsocketState GetWebsocketState => new WebsocketState
        {
            NotParsedCount = _queueThread.QueueSize
        };

        public void AcceptHelloMessage(Hello msg)
        {
            var startClient = !helloMessage.HasValue;

            helloMessage = msg;

            if(startClient)
            {
                Task.Run(() => Connect());
            }
        }

        public void StopConnection()
        {
            try
            {
                _client.CloseAsync(WebSocketCloseStatus.NormalClosure, "testClose", _cts.Token).Wait();
            }
            catch { }
        }

        private void _queueThread_ItemDequeuedEvent(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<dynamic>(item.Data);
            var type = data["type"] as string;

            Enum.TryParse(type, out MessageType messageType);

            switch(messageType)
            {
                case MessageType.book:
                    HandleBookItem(sender, item);
                    break;
                case MessageType.ohlcv:
                    HandleOHLCVItem(sender, item);
                    break;
                case MessageType.quote:
                    HandleQuoteItem(sender, item);
                    break;
                case MessageType.trade:
                    HandleTradeItem(sender, item);
                    break;
                case MessageType.volume:
                    HandleVolumeItem(sender, item);
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

        private async Task Connect()
        {
            while (!_cts.IsCancellationRequested)
            {
                await HandleConnection();
            }
        }

        private async Task HandleConnection()
        {
            using(_client = new ClientWebSocket())
            {
                await _client.ConnectAsync(new Uri(_url), _cts.Token);

                var helloMsg = new ArraySegment<byte>(JsonSerializer.Serialize(helloMessage.Value));

                await _client.SendAsync(helloMsg, WebSocketMessageType.Text, true, _cts.Token);

                while(_client.State == WebSocketState.Open && ! _cts.IsCancellationRequested)
                {
                    var messageData = await WSUtils.ReceiveMessage(_client);

                    if (messageData.MessageType == WebSocketMessageType.Close)
                    {
                        return;
                    }

                    _queueThread.Enqueue(messageData);
                }
            }
        }

        public void Dispose()
        {
            _queueThread.ItemDequeuedEvent -= _queueThread_ItemDequeuedEvent;
            _queueThread.Dispose();

            _cts.Cancel();
            _cts.Dispose();
        }

        public event OHLCVEventHandler OHLCVEvent;
        public event OrderBookEventHandler OrderBookEvent;
        public event QuoteEventHandler QuoteEvent;
        public event TradeEventHandler TradeEvent;
        public event VolumeEventHandler VolumeEvent;
    }
}
