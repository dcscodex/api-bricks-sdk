## Usage

```java
CoinAPIWebSocket coinAPIWebSocket = new CoinAPIWebSocketImpl(true);

// create hello message
Hello hello = new Hello();
hello.setApiKey(apiKey);
hello.setSubscribeDataType(new String[]{"trade"});

// definition of a method that processes inbound data
coinAPIWebSocket.setTradesInvoke(message -> {
    Trades trades = (Trades) message;
    System.out.println(trades.getUuid());
});

// open a websocket connection
coinAPIWebSocket.sendHelloMessage(hello);

// close connection
coinAPIWebSocket.closeConnect();
```