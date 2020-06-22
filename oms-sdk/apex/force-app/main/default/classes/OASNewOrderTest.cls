@isTest
private class OASNewOrderTest {
    @isTest
    private static void equalsSameInstance() {
        OASNewOrder newOrder1 = OASNewOrder.getExample();
        OASNewOrder newOrder2 = newOrder1;
        OASNewOrder newOrder3 = new OASNewOrder();
        OASNewOrder newOrder4 = newOrder3;

        System.assert(newOrder1.equals(newOrder2));
        System.assert(newOrder2.equals(newOrder1));
        System.assert(newOrder1.equals(newOrder1));
        System.assert(newOrder3.equals(newOrder4));
        System.assert(newOrder4.equals(newOrder3));
        System.assert(newOrder3.equals(newOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASNewOrder newOrder1 = OASNewOrder.getExample();
        OASNewOrder newOrder2 = OASNewOrder.getExample();
        OASNewOrder newOrder3 = new OASNewOrder();
        OASNewOrder newOrder4 = new OASNewOrder();

        System.assert(newOrder1.equals(newOrder2));
        System.assert(newOrder2.equals(newOrder1));
        System.assert(newOrder3.equals(newOrder4));
        System.assert(newOrder4.equals(newOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASNewOrder newOrder1 = OASNewOrder.getExample();
        OASNewOrder newOrder2 = new OASNewOrder();

        System.assertEquals(false, newOrder1.equals('foo'));
        System.assertEquals(false, newOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASNewOrder newOrder1 = OASNewOrder.getExample();
        OASNewOrder newOrder2 = new OASNewOrder();
        OASNewOrder newOrder3;

        System.assertEquals(false, newOrder1.equals(newOrder3));
        System.assertEquals(false, newOrder2.equals(newOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASNewOrder newOrder1 = OASNewOrder.getExample();
        OASNewOrder newOrder2 = new OASNewOrder();

        System.assertEquals(newOrder1.hashCode(), newOrder1.hashCode());
        System.assertEquals(newOrder2.hashCode(), newOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASNewOrder newOrder1 = OASNewOrder.getExample();
        OASNewOrder newOrder2 = OASNewOrder.getExample();
        OASNewOrder newOrder3 = new OASNewOrder();
        OASNewOrder newOrder4 = new OASNewOrder();

        System.assert(newOrder1.equals(newOrder2));
        System.assert(newOrder3.equals(newOrder4));
        System.assertEquals(newOrder1.hashCode(), newOrder2.hashCode());
        System.assertEquals(newOrder3.hashCode(), newOrder4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASNewOrder newOrder = new OASNewOrder();
        Map<String, String> propertyMappings = newOrder.getPropertyMappings();
        System.assertEquals('exchangeId', propertyMappings.get('exchange_id'));
        System.assertEquals('clientOrderId', propertyMappings.get('client_order_id'));
        System.assertEquals('symbolExchange', propertyMappings.get('symbol_exchange'));
        System.assertEquals('symbolCoinapi', propertyMappings.get('symbol_coinapi'));
        System.assertEquals('amountOrder', propertyMappings.get('amount_order'));
        System.assertEquals('orderType', propertyMappings.get('order_type'));
        System.assertEquals('timeInForce', propertyMappings.get('time_in_force'));
        System.assertEquals('expireTime', propertyMappings.get('expire_time'));
        System.assertEquals('execInst', propertyMappings.get('exec_inst'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASNewOrder newOrder = new OASNewOrder();
        System.assertEquals(new List<ExecInstEnum>(), newOrder.execInst);
        System.assertEquals(null, newOrder.exchangeId);
        System.assertEquals(null, newOrder.clientOrderId);
        System.assertEquals(null, newOrder.symbolExchange);
        System.assertEquals(null, newOrder.symbolCoinapi);
        System.assertEquals(null, newOrder.amountOrder);
        System.assertEquals(null, newOrder.price);
        System.assertEquals(null, newOrder.side);
        System.assertEquals(null, newOrder.orderType);
        System.assertEquals(null, newOrder.timeInForce);
        System.assertEquals(null, newOrder.expireTime);
    }
}
