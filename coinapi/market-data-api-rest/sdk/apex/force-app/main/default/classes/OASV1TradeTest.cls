@isTest
private class OASV1TradeTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1Trade v1Trade1 = OASV1Trade.getExample();
        OASV1Trade v1Trade2 = v1Trade1;
        OASV1Trade v1Trade3 = new OASV1Trade();
        OASV1Trade v1Trade4 = v1Trade3;

        System.assert(v1Trade1.equals(v1Trade2));
        System.assert(v1Trade2.equals(v1Trade1));
        System.assert(v1Trade1.equals(v1Trade1));
        System.assert(v1Trade3.equals(v1Trade4));
        System.assert(v1Trade4.equals(v1Trade3));
        System.assert(v1Trade3.equals(v1Trade3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1Trade v1Trade1 = OASV1Trade.getExample();
        OASV1Trade v1Trade2 = OASV1Trade.getExample();
        OASV1Trade v1Trade3 = new OASV1Trade();
        OASV1Trade v1Trade4 = new OASV1Trade();

        System.assert(v1Trade1.equals(v1Trade2));
        System.assert(v1Trade2.equals(v1Trade1));
        System.assert(v1Trade3.equals(v1Trade4));
        System.assert(v1Trade4.equals(v1Trade3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1Trade v1Trade1 = OASV1Trade.getExample();
        OASV1Trade v1Trade2 = new OASV1Trade();

        System.assertEquals(false, v1Trade1.equals('foo'));
        System.assertEquals(false, v1Trade2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1Trade v1Trade1 = OASV1Trade.getExample();
        OASV1Trade v1Trade2 = new OASV1Trade();
        OASV1Trade v1Trade3;

        System.assertEquals(false, v1Trade1.equals(v1Trade3));
        System.assertEquals(false, v1Trade2.equals(v1Trade3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1Trade v1Trade1 = OASV1Trade.getExample();
        OASV1Trade v1Trade2 = new OASV1Trade();

        System.assertEquals(v1Trade1.hashCode(), v1Trade1.hashCode());
        System.assertEquals(v1Trade2.hashCode(), v1Trade2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1Trade v1Trade1 = OASV1Trade.getExample();
        OASV1Trade v1Trade2 = OASV1Trade.getExample();
        OASV1Trade v1Trade3 = new OASV1Trade();
        OASV1Trade v1Trade4 = new OASV1Trade();

        System.assert(v1Trade1.equals(v1Trade2));
        System.assert(v1Trade3.equals(v1Trade4));
        System.assertEquals(v1Trade1.hashCode(), v1Trade2.hashCode());
        System.assertEquals(v1Trade3.hashCode(), v1Trade4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1Trade v1Trade = new OASV1Trade();
        Map<String, String> x-property-mappings = v1Trade.getx-property-mappings();
        System.assertEquals('symbolId', x-property-mappings.get('symbol_id'));
        System.assertEquals('timeExchange', x-property-mappings.get('time_exchange'));
        System.assertEquals('timeCoinapi', x-property-mappings.get('time_coinapi'));
        System.assertEquals('takerSide', x-property-mappings.get('taker_side'));
        System.assertEquals('idTrade', x-property-mappings.get('id_trade'));
        System.assertEquals('idOrderMaker', x-property-mappings.get('id_order_maker'));
        System.assertEquals('idOrderTaker', x-property-mappings.get('id_order_taker'));
    }
}
