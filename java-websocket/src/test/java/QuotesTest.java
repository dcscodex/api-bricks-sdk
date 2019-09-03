import org.junit.Assert;
import org.junit.Test;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;

public class QuotesTest extends CoinAPISDKTest {

    @Test
    public void getQuoteMessages() throws IOException, InterruptedException {

        AtomicReference<Integer> msgCount = new AtomicReference<>(0);

        coinAPIWebSocket.setQuotesInvoke(message -> {
            msgCount.getAndSet(msgCount.get() + 1);
        });
        coinAPIWebSocket.sendHelloMessage(createHello("quote"));

        Thread.sleep(10000);
        System.out.println("processing " + msgCount.get() + " quote messages");

        coinAPIWebSocket.closeConnect();
        Assert.assertNotEquals(0, msgCount.get().intValue());
    }
}
