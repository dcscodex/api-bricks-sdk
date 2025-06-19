public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://api-realtime.fx.finfeedapi.com';
        calloutName = 'FX_Realtime_REST_API';
        authentications.put('APIKey', new OAS.ApiKeyHeaderAuth('Authorization'));
    }
}
