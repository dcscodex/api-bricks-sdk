using CoinAPI.WebSocket.V1.DataModels;
using System;
using System.Collections.Generic;
using System.Text;

namespace CoinAPI.WebSocket.V1
{
    public class CoinAPIException : Exception
    {
        public CoinAPIException(string message) : base(message)
        {
        }
        public CoinAPIException(Error error) : base(error.message)
        {
        }
    }
}
