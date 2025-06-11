public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://rest-api.indexes.coinapi.io';
        calloutName = 'CoinAPI_Indexes_REST_API';
        authentications.put('APIKey', new OAS.ApiKeyHeaderAuth('Authorization'));
        authentications.put('JWT', new OAS.ApiKeyHeaderAuth('Authorization'));
    }
}
