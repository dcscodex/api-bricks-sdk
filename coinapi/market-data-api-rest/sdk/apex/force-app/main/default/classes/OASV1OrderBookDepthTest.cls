@isTest
private class OASV1OrderBookDepthTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1OrderBookDepth v1OrderBookDepth1 = OASV1OrderBookDepth.getExample();
        OASV1OrderBookDepth v1OrderBookDepth2 = v1OrderBookDepth1;
        OASV1OrderBookDepth v1OrderBookDepth3 = new OASV1OrderBookDepth();
        OASV1OrderBookDepth v1OrderBookDepth4 = v1OrderBookDepth3;

        System.assert(v1OrderBookDepth1.equals(v1OrderBookDepth2));
        System.assert(v1OrderBookDepth2.equals(v1OrderBookDepth1));
        System.assert(v1OrderBookDepth1.equals(v1OrderBookDepth1));
        System.assert(v1OrderBookDepth3.equals(v1OrderBookDepth4));
        System.assert(v1OrderBookDepth4.equals(v1OrderBookDepth3));
        System.assert(v1OrderBookDepth3.equals(v1OrderBookDepth3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1OrderBookDepth v1OrderBookDepth1 = OASV1OrderBookDepth.getExample();
        OASV1OrderBookDepth v1OrderBookDepth2 = OASV1OrderBookDepth.getExample();
        OASV1OrderBookDepth v1OrderBookDepth3 = new OASV1OrderBookDepth();
        OASV1OrderBookDepth v1OrderBookDepth4 = new OASV1OrderBookDepth();

        System.assert(v1OrderBookDepth1.equals(v1OrderBookDepth2));
        System.assert(v1OrderBookDepth2.equals(v1OrderBookDepth1));
        System.assert(v1OrderBookDepth3.equals(v1OrderBookDepth4));
        System.assert(v1OrderBookDepth4.equals(v1OrderBookDepth3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1OrderBookDepth v1OrderBookDepth1 = OASV1OrderBookDepth.getExample();
        OASV1OrderBookDepth v1OrderBookDepth2 = new OASV1OrderBookDepth();

        System.assertEquals(false, v1OrderBookDepth1.equals('foo'));
        System.assertEquals(false, v1OrderBookDepth2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1OrderBookDepth v1OrderBookDepth1 = OASV1OrderBookDepth.getExample();
        OASV1OrderBookDepth v1OrderBookDepth2 = new OASV1OrderBookDepth();
        OASV1OrderBookDepth v1OrderBookDepth3;

        System.assertEquals(false, v1OrderBookDepth1.equals(v1OrderBookDepth3));
        System.assertEquals(false, v1OrderBookDepth2.equals(v1OrderBookDepth3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1OrderBookDepth v1OrderBookDepth1 = OASV1OrderBookDepth.getExample();
        OASV1OrderBookDepth v1OrderBookDepth2 = new OASV1OrderBookDepth();

        System.assertEquals(v1OrderBookDepth1.hashCode(), v1OrderBookDepth1.hashCode());
        System.assertEquals(v1OrderBookDepth2.hashCode(), v1OrderBookDepth2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1OrderBookDepth v1OrderBookDepth1 = OASV1OrderBookDepth.getExample();
        OASV1OrderBookDepth v1OrderBookDepth2 = OASV1OrderBookDepth.getExample();
        OASV1OrderBookDepth v1OrderBookDepth3 = new OASV1OrderBookDepth();
        OASV1OrderBookDepth v1OrderBookDepth4 = new OASV1OrderBookDepth();

        System.assert(v1OrderBookDepth1.equals(v1OrderBookDepth2));
        System.assert(v1OrderBookDepth3.equals(v1OrderBookDepth4));
        System.assertEquals(v1OrderBookDepth1.hashCode(), v1OrderBookDepth2.hashCode());
        System.assertEquals(v1OrderBookDepth3.hashCode(), v1OrderBookDepth4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1OrderBookDepth v1OrderBookDepth = new OASV1OrderBookDepth();
        Map<String, String> x-property-mappings = v1OrderBookDepth.getx-property-mappings();
        System.assertEquals('symbolId', x-property-mappings.get('symbol_id'));
        System.assertEquals('timeExchange', x-property-mappings.get('time_exchange'));
        System.assertEquals('timeCoinapi', x-property-mappings.get('time_coinapi'));
        System.assertEquals('askLevels', x-property-mappings.get('ask_levels'));
        System.assertEquals('bidLevels', x-property-mappings.get('bid_levels'));
        System.assertEquals('askDepth', x-property-mappings.get('ask_depth'));
        System.assertEquals('bidDepth', x-property-mappings.get('bid_depth'));
    }
}
