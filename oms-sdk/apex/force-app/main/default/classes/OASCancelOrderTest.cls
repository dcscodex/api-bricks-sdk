@isTest
private class OASCancelOrderTest {
    @isTest
    private static void equalsSameInstance() {
        OASCancelOrder cancelOrder1 = OASCancelOrder.getExample();
        OASCancelOrder cancelOrder2 = cancelOrder1;
        OASCancelOrder cancelOrder3 = new OASCancelOrder();
        OASCancelOrder cancelOrder4 = cancelOrder3;

        System.assert(cancelOrder1.equals(cancelOrder2));
        System.assert(cancelOrder2.equals(cancelOrder1));
        System.assert(cancelOrder1.equals(cancelOrder1));
        System.assert(cancelOrder3.equals(cancelOrder4));
        System.assert(cancelOrder4.equals(cancelOrder3));
        System.assert(cancelOrder3.equals(cancelOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCancelOrder cancelOrder1 = OASCancelOrder.getExample();
        OASCancelOrder cancelOrder2 = OASCancelOrder.getExample();
        OASCancelOrder cancelOrder3 = new OASCancelOrder();
        OASCancelOrder cancelOrder4 = new OASCancelOrder();

        System.assert(cancelOrder1.equals(cancelOrder2));
        System.assert(cancelOrder2.equals(cancelOrder1));
        System.assert(cancelOrder3.equals(cancelOrder4));
        System.assert(cancelOrder4.equals(cancelOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCancelOrder cancelOrder1 = OASCancelOrder.getExample();
        OASCancelOrder cancelOrder2 = new OASCancelOrder();

        System.assertEquals(false, cancelOrder1.equals('foo'));
        System.assertEquals(false, cancelOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCancelOrder cancelOrder1 = OASCancelOrder.getExample();
        OASCancelOrder cancelOrder2 = new OASCancelOrder();
        OASCancelOrder cancelOrder3;

        System.assertEquals(false, cancelOrder1.equals(cancelOrder3));
        System.assertEquals(false, cancelOrder2.equals(cancelOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCancelOrder cancelOrder1 = OASCancelOrder.getExample();
        OASCancelOrder cancelOrder2 = new OASCancelOrder();

        System.assertEquals(cancelOrder1.hashCode(), cancelOrder1.hashCode());
        System.assertEquals(cancelOrder2.hashCode(), cancelOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCancelOrder cancelOrder1 = OASCancelOrder.getExample();
        OASCancelOrder cancelOrder2 = OASCancelOrder.getExample();
        OASCancelOrder cancelOrder3 = new OASCancelOrder();
        OASCancelOrder cancelOrder4 = new OASCancelOrder();

        System.assert(cancelOrder1.equals(cancelOrder2));
        System.assert(cancelOrder3.equals(cancelOrder4));
        System.assertEquals(cancelOrder1.hashCode(), cancelOrder2.hashCode());
        System.assertEquals(cancelOrder3.hashCode(), cancelOrder4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCancelOrder cancelOrder = new OASCancelOrder();
        Map<String, String> propertyMappings = cancelOrder.getPropertyMappings();
        System.assertEquals('exchangeId', propertyMappings.get('exchange_id'));
        System.assertEquals('exchangeOrderId', propertyMappings.get('exchange_order_id'));
        System.assertEquals('clientOrderId', propertyMappings.get('client_order_id'));
    }
}
