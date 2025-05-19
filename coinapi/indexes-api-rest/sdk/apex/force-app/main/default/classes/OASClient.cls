public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://rest-api.indexes.coinapi.io';
        calloutName = 'Indexes_REST_API';
        authentications.put('ApiKey', new OAS.ApiKeyHeaderAuth('X-CoinAPI-Key'));
    }
}
