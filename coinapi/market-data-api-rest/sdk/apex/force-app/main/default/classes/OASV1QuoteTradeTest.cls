@isTest
private class OASV1QuoteTradeTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1QuoteTrade v1QuoteTrade1 = OASV1QuoteTrade.getExample();
        OASV1QuoteTrade v1QuoteTrade2 = v1QuoteTrade1;
        OASV1QuoteTrade v1QuoteTrade3 = new OASV1QuoteTrade();
        OASV1QuoteTrade v1QuoteTrade4 = v1QuoteTrade3;

        System.assert(v1QuoteTrade1.equals(v1QuoteTrade2));
        System.assert(v1QuoteTrade2.equals(v1QuoteTrade1));
        System.assert(v1QuoteTrade1.equals(v1QuoteTrade1));
        System.assert(v1QuoteTrade3.equals(v1QuoteTrade4));
        System.assert(v1QuoteTrade4.equals(v1QuoteTrade3));
        System.assert(v1QuoteTrade3.equals(v1QuoteTrade3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1QuoteTrade v1QuoteTrade1 = OASV1QuoteTrade.getExample();
        OASV1QuoteTrade v1QuoteTrade2 = OASV1QuoteTrade.getExample();
        OASV1QuoteTrade v1QuoteTrade3 = new OASV1QuoteTrade();
        OASV1QuoteTrade v1QuoteTrade4 = new OASV1QuoteTrade();

        System.assert(v1QuoteTrade1.equals(v1QuoteTrade2));
        System.assert(v1QuoteTrade2.equals(v1QuoteTrade1));
        System.assert(v1QuoteTrade3.equals(v1QuoteTrade4));
        System.assert(v1QuoteTrade4.equals(v1QuoteTrade3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1QuoteTrade v1QuoteTrade1 = OASV1QuoteTrade.getExample();
        OASV1QuoteTrade v1QuoteTrade2 = new OASV1QuoteTrade();

        System.assertEquals(false, v1QuoteTrade1.equals('foo'));
        System.assertEquals(false, v1QuoteTrade2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1QuoteTrade v1QuoteTrade1 = OASV1QuoteTrade.getExample();
        OASV1QuoteTrade v1QuoteTrade2 = new OASV1QuoteTrade();
        OASV1QuoteTrade v1QuoteTrade3;

        System.assertEquals(false, v1QuoteTrade1.equals(v1QuoteTrade3));
        System.assertEquals(false, v1QuoteTrade2.equals(v1QuoteTrade3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1QuoteTrade v1QuoteTrade1 = OASV1QuoteTrade.getExample();
        OASV1QuoteTrade v1QuoteTrade2 = new OASV1QuoteTrade();

        System.assertEquals(v1QuoteTrade1.hashCode(), v1QuoteTrade1.hashCode());
        System.assertEquals(v1QuoteTrade2.hashCode(), v1QuoteTrade2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1QuoteTrade v1QuoteTrade1 = OASV1QuoteTrade.getExample();
        OASV1QuoteTrade v1QuoteTrade2 = OASV1QuoteTrade.getExample();
        OASV1QuoteTrade v1QuoteTrade3 = new OASV1QuoteTrade();
        OASV1QuoteTrade v1QuoteTrade4 = new OASV1QuoteTrade();

        System.assert(v1QuoteTrade1.equals(v1QuoteTrade2));
        System.assert(v1QuoteTrade3.equals(v1QuoteTrade4));
        System.assertEquals(v1QuoteTrade1.hashCode(), v1QuoteTrade2.hashCode());
        System.assertEquals(v1QuoteTrade3.hashCode(), v1QuoteTrade4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1QuoteTrade v1QuoteTrade = new OASV1QuoteTrade();
        Map<String, String> x-property-mappings = v1QuoteTrade.getx-property-mappings();
        System.assertEquals('symbolId', x-property-mappings.get('symbol_id'));
        System.assertEquals('timeExchange', x-property-mappings.get('time_exchange'));
        System.assertEquals('timeCoinapi', x-property-mappings.get('time_coinapi'));
        System.assertEquals('askPrice', x-property-mappings.get('ask_price'));
        System.assertEquals('askSize', x-property-mappings.get('ask_size'));
        System.assertEquals('bidPrice', x-property-mappings.get('bid_price'));
        System.assertEquals('bidSize', x-property-mappings.get('bid_size'));
        System.assertEquals('lastTrade', x-property-mappings.get('last_trade'));
    }
}
