public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://api-realtime.exrates.coinapi.io';
        calloutName = 'Exchange_Rates_Realtime_REST_API';
        authentications.put('APIKey', new OAS.ApiKeyHeaderAuth('X-CoinAPI-Key'));
    }
}
