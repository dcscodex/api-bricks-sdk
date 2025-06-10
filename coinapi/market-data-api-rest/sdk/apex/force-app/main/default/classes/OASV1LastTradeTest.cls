@isTest
private class OASV1LastTradeTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1LastTrade v1LastTrade1 = OASV1LastTrade.getExample();
        OASV1LastTrade v1LastTrade2 = v1LastTrade1;
        OASV1LastTrade v1LastTrade3 = new OASV1LastTrade();
        OASV1LastTrade v1LastTrade4 = v1LastTrade3;

        System.assert(v1LastTrade1.equals(v1LastTrade2));
        System.assert(v1LastTrade2.equals(v1LastTrade1));
        System.assert(v1LastTrade1.equals(v1LastTrade1));
        System.assert(v1LastTrade3.equals(v1LastTrade4));
        System.assert(v1LastTrade4.equals(v1LastTrade3));
        System.assert(v1LastTrade3.equals(v1LastTrade3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1LastTrade v1LastTrade1 = OASV1LastTrade.getExample();
        OASV1LastTrade v1LastTrade2 = OASV1LastTrade.getExample();
        OASV1LastTrade v1LastTrade3 = new OASV1LastTrade();
        OASV1LastTrade v1LastTrade4 = new OASV1LastTrade();

        System.assert(v1LastTrade1.equals(v1LastTrade2));
        System.assert(v1LastTrade2.equals(v1LastTrade1));
        System.assert(v1LastTrade3.equals(v1LastTrade4));
        System.assert(v1LastTrade4.equals(v1LastTrade3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1LastTrade v1LastTrade1 = OASV1LastTrade.getExample();
        OASV1LastTrade v1LastTrade2 = new OASV1LastTrade();

        System.assertEquals(false, v1LastTrade1.equals('foo'));
        System.assertEquals(false, v1LastTrade2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1LastTrade v1LastTrade1 = OASV1LastTrade.getExample();
        OASV1LastTrade v1LastTrade2 = new OASV1LastTrade();
        OASV1LastTrade v1LastTrade3;

        System.assertEquals(false, v1LastTrade1.equals(v1LastTrade3));
        System.assertEquals(false, v1LastTrade2.equals(v1LastTrade3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1LastTrade v1LastTrade1 = OASV1LastTrade.getExample();
        OASV1LastTrade v1LastTrade2 = new OASV1LastTrade();

        System.assertEquals(v1LastTrade1.hashCode(), v1LastTrade1.hashCode());
        System.assertEquals(v1LastTrade2.hashCode(), v1LastTrade2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1LastTrade v1LastTrade1 = OASV1LastTrade.getExample();
        OASV1LastTrade v1LastTrade2 = OASV1LastTrade.getExample();
        OASV1LastTrade v1LastTrade3 = new OASV1LastTrade();
        OASV1LastTrade v1LastTrade4 = new OASV1LastTrade();

        System.assert(v1LastTrade1.equals(v1LastTrade2));
        System.assert(v1LastTrade3.equals(v1LastTrade4));
        System.assertEquals(v1LastTrade1.hashCode(), v1LastTrade2.hashCode());
        System.assertEquals(v1LastTrade3.hashCode(), v1LastTrade4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1LastTrade v1LastTrade = new OASV1LastTrade();
        Map<String, String> x-property-mappings = v1LastTrade.getx-property-mappings();
        System.assertEquals('timeExchange', x-property-mappings.get('time_exchange'));
        System.assertEquals('timeCoinapi', x-property-mappings.get('time_coinapi'));
        System.assertEquals('takerSide', x-property-mappings.get('taker_side'));
    }
}
