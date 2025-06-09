public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://api.sec.finfeedapi.com';
        calloutName = 'REST_API';
        authentications.put('APIKey', new OAS.ApiKeyHeaderAuth('Authorization'));
    }
}
