@isTest
private class OASCancelAllOrderTest {
    @isTest
    private static void equalsSameInstance() {
        OASCancelAllOrder cancelAllOrder1 = OASCancelAllOrder.getExample();
        OASCancelAllOrder cancelAllOrder2 = cancelAllOrder1;
        OASCancelAllOrder cancelAllOrder3 = new OASCancelAllOrder();
        OASCancelAllOrder cancelAllOrder4 = cancelAllOrder3;

        System.assert(cancelAllOrder1.equals(cancelAllOrder2));
        System.assert(cancelAllOrder2.equals(cancelAllOrder1));
        System.assert(cancelAllOrder1.equals(cancelAllOrder1));
        System.assert(cancelAllOrder3.equals(cancelAllOrder4));
        System.assert(cancelAllOrder4.equals(cancelAllOrder3));
        System.assert(cancelAllOrder3.equals(cancelAllOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCancelAllOrder cancelAllOrder1 = OASCancelAllOrder.getExample();
        OASCancelAllOrder cancelAllOrder2 = OASCancelAllOrder.getExample();
        OASCancelAllOrder cancelAllOrder3 = new OASCancelAllOrder();
        OASCancelAllOrder cancelAllOrder4 = new OASCancelAllOrder();

        System.assert(cancelAllOrder1.equals(cancelAllOrder2));
        System.assert(cancelAllOrder2.equals(cancelAllOrder1));
        System.assert(cancelAllOrder3.equals(cancelAllOrder4));
        System.assert(cancelAllOrder4.equals(cancelAllOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCancelAllOrder cancelAllOrder1 = OASCancelAllOrder.getExample();
        OASCancelAllOrder cancelAllOrder2 = new OASCancelAllOrder();

        System.assertEquals(false, cancelAllOrder1.equals('foo'));
        System.assertEquals(false, cancelAllOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCancelAllOrder cancelAllOrder1 = OASCancelAllOrder.getExample();
        OASCancelAllOrder cancelAllOrder2 = new OASCancelAllOrder();
        OASCancelAllOrder cancelAllOrder3;

        System.assertEquals(false, cancelAllOrder1.equals(cancelAllOrder3));
        System.assertEquals(false, cancelAllOrder2.equals(cancelAllOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCancelAllOrder cancelAllOrder1 = OASCancelAllOrder.getExample();
        OASCancelAllOrder cancelAllOrder2 = new OASCancelAllOrder();

        System.assertEquals(cancelAllOrder1.hashCode(), cancelAllOrder1.hashCode());
        System.assertEquals(cancelAllOrder2.hashCode(), cancelAllOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCancelAllOrder cancelAllOrder1 = OASCancelAllOrder.getExample();
        OASCancelAllOrder cancelAllOrder2 = OASCancelAllOrder.getExample();
        OASCancelAllOrder cancelAllOrder3 = new OASCancelAllOrder();
        OASCancelAllOrder cancelAllOrder4 = new OASCancelAllOrder();

        System.assert(cancelAllOrder1.equals(cancelAllOrder2));
        System.assert(cancelAllOrder3.equals(cancelAllOrder4));
        System.assertEquals(cancelAllOrder1.hashCode(), cancelAllOrder2.hashCode());
        System.assertEquals(cancelAllOrder3.hashCode(), cancelAllOrder4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCancelAllOrder cancelAllOrder = new OASCancelAllOrder();
        Map<String, String> propertyMappings = cancelAllOrder.getPropertyMappings();
        System.assertEquals('exchangeId', propertyMappings.get('exchange_id'));
    }
}
