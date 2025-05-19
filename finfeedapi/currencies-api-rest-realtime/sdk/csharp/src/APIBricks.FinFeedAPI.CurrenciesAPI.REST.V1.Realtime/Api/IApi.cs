using System.Net.Http;

namespace APIBricks.FinFeedAPI.CurrenciesAPI.REST.V1.Realtime.Api
{
    /// <summary>
    /// Any Api client
    /// </summary>
    public interface IApi
    {
        /// <summary>
        /// The HttpClient
        /// </summary>
        HttpClient HttpClient { get; }
    }
}