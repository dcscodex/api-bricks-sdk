using System;
using System.Diagnostics;
using System.Net.WebSockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using CoinAPI.WebSocket.V1.DataModels;
using Utf8Json;

namespace CoinAPI.WebSocket.V1
{
    public class CoinApiWsClient : ICoinApiWsClient, IDisposable
    {
        private readonly Stopwatch _waitStopwatch = new Stopwatch();
        private readonly Stopwatch _parseStopwatch = new Stopwatch();
        private readonly Stopwatch _handleStopwatch = new Stopwatch();

        private static readonly int ReceiveBufferSize = 8192;
        private const string UrlProduction = "wss://ws.coinapi.io/";

        private readonly string _url = UrlProduction;
        
        private readonly CancellationTokenSource _cts = new CancellationTokenSource();
        private readonly QueueThread<MessageData> _queueThread = null;

        private readonly TimeSpan _hbTimeout = TimeSpan.FromSeconds(10);
        private readonly TimeSpan _hbTimeoutCheckInterval = TimeSpan.FromSeconds(1);
        private readonly TimeSpan _reconnectInterval = TimeSpan.FromSeconds(1);
        private int _hbLastAction;
        private int _hbLastActionMaxCount;
        private Hello HelloMessage { get; set; }

        // client reference is leaked here only for testing purposes (forcing reconnects)
#pragma warning disable IDE0069 // Disposable fields should be disposed
        protected ClientWebSocket _client = null;
#pragma warning restore IDE0069 // Disposable fields should be disposed

        protected bool? ForceOverrideHeartbeat { get; set; } = true;
        public long UnprocessedMessagesQueueSize => _queueThread.QueueSize;
        public event EventHandler<Exception> Error;
        public AutoResetEvent ConnectedEvent { get; } = new AutoResetEvent(false);
        public bool IsConnected => _client?.State == WebSocketState.Open;   
        public DateTime? ConnectedTime { get; private set; }
        public ulong TotalBytesReceived { get; private set; }
        public TimeSpan TotalWaitTime => _waitStopwatch.Elapsed;
        public TimeSpan TotalParseTime => _parseStopwatch.Elapsed;
        public TimeSpan TotalHandleTime => _handleStopwatch.Elapsed;
        public CoinApiWsClient(double hbTimeoutSecs, double reconnectIntervalSecs) : this(UrlProduction)
        {
            _hbTimeout = TimeSpan.FromSeconds(hbTimeoutSecs);
            _reconnectInterval = TimeSpan.FromSeconds(reconnectIntervalSecs);
        }

        public CoinApiWsClient() : this(UrlProduction)
        {
        }

        public CoinApiWsClient(string url)
        {
            _queueThread = new QueueThread<MessageData>();
            _queueThread.ItemDequeuedEvent += _queueThread_ItemDequeuedEvent;
            _url = url;
        }

        public void SupressHeartbeat(bool supress)
        {
            ForceOverrideHeartbeat = !supress;
        }

        public void SendHelloMessage(Hello msg)
        {
            if (msg == null)
            {
                throw new ArgumentNullException(nameof(msg));
            }

            var startClient = HelloMessage == null;

            if (ForceOverrideHeartbeat.HasValue)
            {
                msg.heartbeat = ForceOverrideHeartbeat.Value;
            }
            HelloMessage = msg;

            if (startClient)
            {
                Task.Run(() => Connect());
            }
        }

        private void _queueThread_ItemDequeuedEvent(object sender, MessageData item)
        {
            _parseStopwatch.Start();
            var data = JsonSerializer.Deserialize<MessageBase>(item.Data);
            _parseStopwatch.Stop();
            if (!data.type.TryParse(out var messageType))
            {
                // unknown type
                return;
            }

            switch(messageType)
            {
                case MessageType.book:
                    HandleBookItem(sender, item);
                    break;
                case MessageType.book5:
                    HandleBook5Item(sender, item);
                    break;
                case MessageType.book20:
                    HandleBook20Item(sender, item);
                    break;
                case MessageType.book50:
                    HandleBook50Item(sender, item);
                    break;
                case MessageType.book_l3:
                    HandleBookL3Item(sender, item);
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
                case MessageType.exrate:
                    HandleExchangeRateItem(sender, item);
                    break;
                case MessageType.ticker:
                    HandleTickerItem(sender, item);
                    break;
                case MessageType.error:
                    HandleErrorItem(sender, item);
                    break;
            }
        }

        private void HandleBookItem(object sender, MessageData item)
        {
            _parseStopwatch.Start();
            var data = JsonSerializer.Deserialize<OrderBook>(item.Data);
            _parseStopwatch.Stop();
            _handleStopwatch.Start();
            OrderBookEvent?.Invoke(sender, data);
            _handleStopwatch.Stop();
        }
        private void HandleBook5Item(object sender, MessageData item)
        {
            _parseStopwatch.Start();
            var data = JsonSerializer.Deserialize<OrderBook>(item.Data);
            _parseStopwatch.Stop();
            _handleStopwatch.Start();
            OrderBook5Event?.Invoke(sender, data);
            _handleStopwatch.Stop();
        }
        private void HandleBook20Item(object sender, MessageData item)
        {
            _parseStopwatch.Start();
            var data = JsonSerializer.Deserialize<OrderBook>(item.Data);
            _parseStopwatch.Stop();
            _handleStopwatch.Start();
            OrderBook20Event?.Invoke(sender, data);
            _handleStopwatch.Stop();
        }
        private void HandleBook50Item(object sender, MessageData item)
        {
            _parseStopwatch.Start();
            var data = JsonSerializer.Deserialize<OrderBook>(item.Data);
            _parseStopwatch.Stop();
            _handleStopwatch.Start();
            OrderBook50Event?.Invoke(sender, data);
            _handleStopwatch.Stop();
        }
        private void HandleBookL3Item(object sender, MessageData item)
        {
            _parseStopwatch.Start();
            var data = JsonSerializer.Deserialize<OrderBookL3>(item.Data);
            _parseStopwatch.Stop();
            _handleStopwatch.Start();
            OrderBookL3Event?.Invoke(sender, data);
            _handleStopwatch.Stop();
        }

        private void HandleOHLCVItem(object sender, MessageData item)
        {
            _parseStopwatch.Start();
            var data = JsonSerializer.Deserialize<OHLCV>(item.Data);
            _parseStopwatch.Stop();
            _handleStopwatch.Start();
            OHLCVEvent?.Invoke(sender, data);
            _handleStopwatch.Stop();
        }

        private void HandleQuoteItem(object sender, MessageData item)
        {
            _parseStopwatch.Start();
            var data = JsonSerializer.Deserialize<Quote>(item.Data);
            _parseStopwatch.Stop();
            _handleStopwatch.Start();
            QuoteEvent?.Invoke(sender, data);
            _handleStopwatch.Stop();
        }

        private void HandleTradeItem(object sender, MessageData item)
        {
            _parseStopwatch.Start();
            var data = JsonSerializer.Deserialize<Trade>(item.Data);
            _parseStopwatch.Stop();
            _handleStopwatch.Start();
            TradeEvent?.Invoke(sender, data);
            _handleStopwatch.Stop();
        }

        private void HandleVolumeItem(object sender, MessageData item)
        {
            _parseStopwatch.Start();
            var data = JsonSerializer.Deserialize<Volume>(item.Data);
            _parseStopwatch.Stop();
            _handleStopwatch.Start();
            VolumeEvent?.Invoke(sender, data);
            _handleStopwatch.Stop();
        }

        private void HandleExchangeRateItem(object sender, MessageData item)
        {
            _parseStopwatch.Start();
            var data = JsonSerializer.Deserialize<ExchangeRate>(item.Data);
            _parseStopwatch.Stop();
            _handleStopwatch.Start();
            ExchangeRateEvent?.Invoke(sender, data);
            _handleStopwatch.Stop();
        }

        private void HandleTickerItem(object sender, MessageData item)
        {
            _parseStopwatch.Start();
            var data = JsonSerializer.Deserialize<Ticker>(item.Data);
            _parseStopwatch.Stop();
            _handleStopwatch.Start();
            TickerEvent?.Invoke(sender, data);
            _handleStopwatch.Stop();
        }

        private void HandleErrorItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<Error>(item.Data);
            OnError(new CoinAPIException(data));
        }

        private async Task Connect()
        {
            while (!_cts.IsCancellationRequested)
            {
                using (var connectionCts = CancellationTokenSource.CreateLinkedTokenSource(_cts.Token))
                {
                    await HandleConnection(connectionCts);
                    
                    ConnectedTime = null;
                    TotalBytesReceived = 0;
                    _waitStopwatch.Reset();
                    _parseStopwatch.Reset();
                    _handleStopwatch.Reset();

                    connectionCts.Cancel();
                }

                await Task.Delay(_reconnectInterval);
            }
        }

        private async Task HeartbeatWatcher(ClientWebSocket client, CancellationTokenSource connectionCts)
        {
            // the quantity of loops that can be performed before timing out
            _hbLastActionMaxCount = _hbTimeout.Seconds / _hbTimeoutCheckInterval.Seconds;

            while (!connectionCts.IsCancellationRequested)
            {
                // _hbLastAction is cleared by the connection worker, if we reach maxCount here means it hasn't gotten any message for a while
                if (Interlocked.Increment(ref _hbLastAction) >= _hbLastActionMaxCount)
                {
                    connectionCts.Cancel();
                    await client.CloseAsync(WebSocketCloseStatus.NormalClosure, 
                        nameof(HeartbeatWatcher), 
                        CancellationToken.None);
                    continue;
                }
                await Task.Delay(_hbTimeoutCheckInterval, connectionCts.Token);
            }
        }

        private async Task HandleConnection(CancellationTokenSource connectionCts)
        {
            Interlocked.Exchange(ref _hbLastAction, 0);

            using (_client = new ClientWebSocket())
            {
                try
                {
                    _ = Task.Run(() => HeartbeatWatcher(_client, connectionCts));
                    await _client.ConnectAsync(new Uri(_url), connectionCts.Token);
                    ConnectedTime = DateTime.UtcNow;
                    ConnectedEvent.Set();
                    ConnectedEvent.Reset();
                    Interlocked.Exchange(ref _hbLastAction, 0);

                    var currentHello = HelloMessage;
                    var helloAs = new ArraySegment<byte>(JsonSerializer.Serialize(currentHello));
                    await _client.SendAsync(helloAs, WebSocketMessageType.Text, true, connectionCts.Token);
                    Interlocked.Exchange(ref _hbLastAction, 0);

                    var bufferArray = new byte[ReceiveBufferSize];
                    while (_client.State == WebSocketState.Open && !connectionCts.IsCancellationRequested)
                    {
                        if (currentHello != HelloMessage)
                        {
                            currentHello = HelloMessage;
                            helloAs = new ArraySegment<byte>(JsonSerializer.Serialize(currentHello));
                            await _client.SendAsync(helloAs, WebSocketMessageType.Text, true, connectionCts.Token);
                            Interlocked.Exchange(ref _hbLastAction, 0);
                        }
                        _waitStopwatch.Start();
                        var messageData = await WSUtils.ReceiveMessage(_client, connectionCts.Token, bufferArray);
                        _waitStopwatch.Stop();

                        TotalBytesReceived += (ulong)messageData.Data.Length;
                        Interlocked.Exchange(ref _hbLastAction, 0);

                        if (messageData.MessageType == WebSocketMessageType.Close)
                        {
                            return;
                        }

                        _queueThread.Enqueue(messageData);
                    }
                }
                catch (TaskCanceledException) 
                {
                    await _client.CloseAsync(WebSocketCloseStatus.NormalClosure, "Normal", CancellationToken.None);
                }
                catch (Exception ex)
                {
                    OnError(ex);
                }
            }
        }

        protected void OnError(Exception ex)
        {
            Error?.Invoke(this, ex);
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
        public event OrderBook5EventHandler OrderBook5Event;
        public event OrderBook20EventHandler OrderBook20Event;
        public event OrderBook50EventHandler OrderBook50Event;
        public event OrderBookL3EventHandler OrderBookL3Event;
        public event QuoteEventHandler QuoteEvent;
        public event TradeEventHandler TradeEvent;
        public event VolumeEventHandler VolumeEvent;
        public event ExchangeRateHandler ExchangeRateEvent;
        public event TickerHandler TickerEvent;
    }
}
