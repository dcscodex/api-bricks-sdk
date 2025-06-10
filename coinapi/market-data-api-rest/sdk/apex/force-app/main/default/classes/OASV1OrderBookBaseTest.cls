@isTest
private class OASV1OrderBookBaseTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1OrderBookBase v1OrderBookBase1 = OASV1OrderBookBase.getExample();
        OASV1OrderBookBase v1OrderBookBase2 = v1OrderBookBase1;
        OASV1OrderBookBase v1OrderBookBase3 = new OASV1OrderBookBase();
        OASV1OrderBookBase v1OrderBookBase4 = v1OrderBookBase3;

        System.assert(v1OrderBookBase1.equals(v1OrderBookBase2));
        System.assert(v1OrderBookBase2.equals(v1OrderBookBase1));
        System.assert(v1OrderBookBase1.equals(v1OrderBookBase1));
        System.assert(v1OrderBookBase3.equals(v1OrderBookBase4));
        System.assert(v1OrderBookBase4.equals(v1OrderBookBase3));
        System.assert(v1OrderBookBase3.equals(v1OrderBookBase3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1OrderBookBase v1OrderBookBase1 = OASV1OrderBookBase.getExample();
        OASV1OrderBookBase v1OrderBookBase2 = OASV1OrderBookBase.getExample();
        OASV1OrderBookBase v1OrderBookBase3 = new OASV1OrderBookBase();
        OASV1OrderBookBase v1OrderBookBase4 = new OASV1OrderBookBase();

        System.assert(v1OrderBookBase1.equals(v1OrderBookBase2));
        System.assert(v1OrderBookBase2.equals(v1OrderBookBase1));
        System.assert(v1OrderBookBase3.equals(v1OrderBookBase4));
        System.assert(v1OrderBookBase4.equals(v1OrderBookBase3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1OrderBookBase v1OrderBookBase1 = OASV1OrderBookBase.getExample();
        OASV1OrderBookBase v1OrderBookBase2 = new OASV1OrderBookBase();

        System.assertEquals(false, v1OrderBookBase1.equals('foo'));
        System.assertEquals(false, v1OrderBookBase2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1OrderBookBase v1OrderBookBase1 = OASV1OrderBookBase.getExample();
        OASV1OrderBookBase v1OrderBookBase2 = new OASV1OrderBookBase();
        OASV1OrderBookBase v1OrderBookBase3;

        System.assertEquals(false, v1OrderBookBase1.equals(v1OrderBookBase3));
        System.assertEquals(false, v1OrderBookBase2.equals(v1OrderBookBase3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1OrderBookBase v1OrderBookBase1 = OASV1OrderBookBase.getExample();
        OASV1OrderBookBase v1OrderBookBase2 = new OASV1OrderBookBase();

        System.assertEquals(v1OrderBookBase1.hashCode(), v1OrderBookBase1.hashCode());
        System.assertEquals(v1OrderBookBase2.hashCode(), v1OrderBookBase2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1OrderBookBase v1OrderBookBase1 = OASV1OrderBookBase.getExample();
        OASV1OrderBookBase v1OrderBookBase2 = OASV1OrderBookBase.getExample();
        OASV1OrderBookBase v1OrderBookBase3 = new OASV1OrderBookBase();
        OASV1OrderBookBase v1OrderBookBase4 = new OASV1OrderBookBase();

        System.assert(v1OrderBookBase1.equals(v1OrderBookBase2));
        System.assert(v1OrderBookBase3.equals(v1OrderBookBase4));
        System.assertEquals(v1OrderBookBase1.hashCode(), v1OrderBookBase2.hashCode());
        System.assertEquals(v1OrderBookBase3.hashCode(), v1OrderBookBase4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1OrderBookBase v1OrderBookBase = new OASV1OrderBookBase();
        Map<String, String> x-property-mappings = v1OrderBookBase.getx-property-mappings();
        System.assertEquals('symbolId', x-property-mappings.get('symbol_id'));
        System.assertEquals('timeExchange', x-property-mappings.get('time_exchange'));
        System.assertEquals('timeCoinapi', x-property-mappings.get('time_coinapi'));
    }
}
