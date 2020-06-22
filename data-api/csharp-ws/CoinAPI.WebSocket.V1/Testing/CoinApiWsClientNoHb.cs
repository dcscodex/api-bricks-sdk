using System;
using System.Collections.Generic;
using System.Text;

namespace CoinAPI.WebSocket.V1.Testing
{
    public class CoinApiWsClientNoHb : CoinApiWsClient
    {
        public CoinApiWsClientNoHb(bool isSandbox = false) : base(isSandbox)
        {
            ForceOverrideHeartbeat = false;
        }
    }
}
