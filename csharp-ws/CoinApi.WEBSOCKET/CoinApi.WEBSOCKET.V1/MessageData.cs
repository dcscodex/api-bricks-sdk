using System;
using System.Collections.Generic;
using System.Net.WebSockets;
using System.Text;

namespace CoinApi.WEBSOCKET.V1
{
    internal class MessageData
    {
        public byte[] Data { get; set; }
        public WebSocketMessageType MessageType { get; set; }
    }
}
