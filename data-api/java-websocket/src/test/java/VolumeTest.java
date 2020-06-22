import org.junit.Assert;
import org.junit.Test;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;

public class VolumeTest extends CoinAPISDKTest {

    @Test
    public void getVolumeMessages() throws IOException, InterruptedException {

        AtomicReference<Integer> msgCount = new AtomicReference<>(0);

        coinAPIWebSocket.setVolumeInvoke(message -> {
            msgCount.getAndSet(msgCount.get() + 1);
        });
        coinAPIWebSocket.sendHelloMessage(createHello("volume"));

        Thread.sleep(10000);
        System.out.println("processing " + msgCount.get() + " volume messages");

        coinAPIWebSocket.closeConnect();
        Assert.assertNotEquals(0, msgCount.get().intValue());
    }
}
