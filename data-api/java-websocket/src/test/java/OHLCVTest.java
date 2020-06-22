import org.junit.Assert;
import org.junit.Test;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;

public class OHLCVTest extends CoinAPISDKTest {

    @Test
    public void getOHLCVMessages() throws IOException, InterruptedException {

        AtomicReference<Integer> msgCount = new AtomicReference<>(0);

        coinAPIWebSocket.setOHLCVInvoke(message -> {
            msgCount.getAndSet(msgCount.get() + 1);
        });
        coinAPIWebSocket.sendHelloMessage(createHello("ohlcv"));

        Thread.sleep(10000);
        System.out.println("processing " + msgCount.get() + " ohlcv messages");

        coinAPIWebSocket.closeConnect();
        Assert.assertNotEquals(0, msgCount.get().intValue());
    }
}
