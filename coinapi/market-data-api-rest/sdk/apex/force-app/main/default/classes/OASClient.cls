public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://rest.coinapi.io';
        calloutName = 'CoinAPI_Market_Data_REST_API';
        authentications.put('APIKey', new OAS.ApiKeyHeaderAuth('Authorization'));
    }
}
