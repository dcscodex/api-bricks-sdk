public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://api-historical.exrates.coinapi.io';
        calloutName = 'Exchange_Rates_Historical_REST_API';
        authentications.put('APIKey', new OAS.ApiKeyHeaderAuth('X-CoinAPI-Key'));
    }
}
