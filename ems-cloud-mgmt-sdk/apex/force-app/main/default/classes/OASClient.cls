public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://ems-mgmt-sandbox.coinapi.io';
        calloutName = 'EMS__Managed_Cloud_REST_API';
        authentications.put('APIKeyHeader', new OAS.ApiKeyHeaderAuth('X-CoinAPI-Key'));
        authentications.put('APIKeyQueryParam', new OAS.ApiKeyQueryAuth('apikey'));
    }
}
