@isTest
private class OASOrderLiveTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrderLive orderLive1 = OASOrderLive.getExample();
        OASOrderLive orderLive2 = orderLive1;
        OASOrderLive orderLive3 = new OASOrderLive();
        OASOrderLive orderLive4 = orderLive3;

        System.assert(orderLive1.equals(orderLive2));
        System.assert(orderLive2.equals(orderLive1));
        System.assert(orderLive1.equals(orderLive1));
        System.assert(orderLive3.equals(orderLive4));
        System.assert(orderLive4.equals(orderLive3));
        System.assert(orderLive3.equals(orderLive3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrderLive orderLive1 = OASOrderLive.getExample();
        OASOrderLive orderLive2 = OASOrderLive.getExample();
        OASOrderLive orderLive3 = new OASOrderLive();
        OASOrderLive orderLive4 = new OASOrderLive();

        System.assert(orderLive1.equals(orderLive2));
        System.assert(orderLive2.equals(orderLive1));
        System.assert(orderLive3.equals(orderLive4));
        System.assert(orderLive4.equals(orderLive3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrderLive orderLive1 = OASOrderLive.getExample();
        OASOrderLive orderLive2 = new OASOrderLive();

        System.assertEquals(false, orderLive1.equals('foo'));
        System.assertEquals(false, orderLive2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrderLive orderLive1 = OASOrderLive.getExample();
        OASOrderLive orderLive2 = new OASOrderLive();
        OASOrderLive orderLive3;

        System.assertEquals(false, orderLive1.equals(orderLive3));
        System.assertEquals(false, orderLive2.equals(orderLive3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrderLive orderLive1 = OASOrderLive.getExample();
        OASOrderLive orderLive2 = new OASOrderLive();

        System.assertEquals(orderLive1.hashCode(), orderLive1.hashCode());
        System.assertEquals(orderLive2.hashCode(), orderLive2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrderLive orderLive1 = OASOrderLive.getExample();
        OASOrderLive orderLive2 = OASOrderLive.getExample();
        OASOrderLive orderLive3 = new OASOrderLive();
        OASOrderLive orderLive4 = new OASOrderLive();

        System.assert(orderLive1.equals(orderLive2));
        System.assert(orderLive3.equals(orderLive4));
        System.assertEquals(orderLive1.hashCode(), orderLive2.hashCode());
        System.assertEquals(orderLive3.hashCode(), orderLive4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrderLive orderLive = new OASOrderLive();
        Map<String, String> propertyMappings = orderLive.getPropertyMappings();
        System.assertEquals('r_type', propertyMappings.get('type'));
        System.assertEquals('exchangeId', propertyMappings.get('exchange_id'));
        System.assertEquals('clientOrderIdFormatExchange', propertyMappings.get('client_order_id_format_exchange'));
        System.assertEquals('exchangeOrderId', propertyMappings.get('exchange_order_id'));
        System.assertEquals('amountOpen', propertyMappings.get('amount_open'));
        System.assertEquals('amountFilled', propertyMappings.get('amount_filled'));
        System.assertEquals('timeOrder', propertyMappings.get('time_order'));
        System.assertEquals('errorMessage', propertyMappings.get('error_message'));
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
        OASOrderLive orderLive = new OASOrderLive();
        System.assertEquals(new List<List<String>>(), orderLive.timeOrder);
        System.assertEquals(new List<ExecInstEnum>(), orderLive.execInst);
        System.assertEquals(null, orderLive.r_type);
        System.assertEquals(null, orderLive.exchangeId);
        System.assertEquals(null, orderLive.id);
        System.assertEquals(null, orderLive.clientOrderIdFormatExchange);
        System.assertEquals(null, orderLive.exchangeOrderId);
        System.assertEquals(null, orderLive.amountOpen);
        System.assertEquals(null, orderLive.amountFilled);
        System.assertEquals(null, orderLive.status);
        System.assertEquals(null, orderLive.errorMessage);
        System.assertEquals(null, orderLive.clientOrderId);
        System.assertEquals(null, orderLive.symbolExchange);
        System.assertEquals(null, orderLive.symbolCoinapi);
        System.assertEquals(null, orderLive.amountOrder);
        System.assertEquals(null, orderLive.price);
        System.assertEquals(null, orderLive.side);
        System.assertEquals(null, orderLive.orderType);
        System.assertEquals(null, orderLive.timeInForce);
        System.assertEquals(null, orderLive.expireTime);
    }
}
