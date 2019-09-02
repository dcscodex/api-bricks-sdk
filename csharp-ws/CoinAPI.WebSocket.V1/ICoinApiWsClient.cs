using CoinAPI.WebSocket.V1.DataModels;
using System.Threading.Tasks;

namespace CoinAPI.WebSocket.V1
{
    public delegate void OHLCVEventHandler(object sender, OHLCV item);
    public delegate void OrderBookEventHandler(object sender, OrderBook item);
    public delegate void QuoteEventHandler(object sender, Quote item);
    public delegate void TradeEventHandler(object sender, Trade item);
    public delegate void VolumeEventHandler(object sender, Volume item);

    public interface ICoinApiWsClient
    {
        void SendHelloMessage(Hello helloMessage);
        long UnprocessedMessagesQueueSize { get; }
        event OHLCVEventHandler OHLCVEvent;
        event OrderBookEventHandler OrderBookEvent;
        event QuoteEventHandler QuoteEvent;
        event TradeEventHandler TradeEvent;
        event VolumeEventHandler VolumeEvent;
    }
}
