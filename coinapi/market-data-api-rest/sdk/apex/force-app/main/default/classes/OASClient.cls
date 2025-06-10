public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://rest.coinapi.io';
        calloutName = 'REST_API';
        authentications.put('ApiKey', new OAS.ApiKeyHeaderAuth('X-CoinAPI-Key'));
    }
}
