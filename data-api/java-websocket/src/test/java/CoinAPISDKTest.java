import io.coinapi.websocket.CoinAPIWebSocket;
import io.coinapi.websocket.CoinAPIWebSocketImpl;
import io.coinapi.websocket.model.Hello;
import org.junit.Before;

import java.io.IOException;

public abstract class CoinAPISDKTest {

    protected String apiKey;
    protected CoinAPIWebSocket coinAPIWebSocket;

    @Before
    public void configuration() throws IOException {
        Config config = new Config();
        apiKey = config.getPropValues("coinapi_key");
        coinAPIWebSocket = new CoinAPIWebSocketImpl(true);
    }

    public Hello createHello(String type) {
        Hello hello = new Hello();
        hello.setApiKey(apiKey);
        hello.setSubscribeDataType(new String[]{type});
        return hello;
    }
}
