namespace CoinApi.WEBSOCKET.V1.DataModels
{
    internal enum MessageType
    {
        book,
        hearbeat,
        hello,
        quote,
        trade,
        volume,
        ohlcv,
        error
    }
}
