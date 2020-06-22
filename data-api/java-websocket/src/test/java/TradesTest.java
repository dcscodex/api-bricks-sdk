import io.coinapi.websocket.CoinAPIWebSocketImpl;
import io.coinapi.websocket.model.MessageBase;
import io.coinapi.websocket.model.Trades;
import org.junit.Assert;
import org.junit.Test;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;

public class TradesTest extends CoinAPISDKTest {

    @Test
    public void getTradeMessages() throws IOException, InterruptedException {

        AtomicReference<Integer> msgCount = new AtomicReference<>(0);

        coinAPIWebSocket.setTradesInvoke(message -> {
            msgCount.getAndSet(msgCount.get() + 1);
        });
        coinAPIWebSocket.sendHelloMessage(createHello("trade"));

        Thread.sleep(10000);
        System.out.println("processing " + msgCount.get() + " trade messages");

        coinAPIWebSocket.closeConnect();
        Assert.assertNotEquals(0, msgCount.get().intValue());
    }
}
