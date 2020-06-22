@isTest
private class OASOrderDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrderData orderData1 = OASOrderData.getExample();
        OASOrderData orderData2 = orderData1;
        OASOrderData orderData3 = new OASOrderData();
        OASOrderData orderData4 = orderData3;

        System.assert(orderData1.equals(orderData2));
        System.assert(orderData2.equals(orderData1));
        System.assert(orderData1.equals(orderData1));
        System.assert(orderData3.equals(orderData4));
        System.assert(orderData4.equals(orderData3));
        System.assert(orderData3.equals(orderData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrderData orderData1 = OASOrderData.getExample();
        OASOrderData orderData2 = OASOrderData.getExample();
        OASOrderData orderData3 = new OASOrderData();
        OASOrderData orderData4 = new OASOrderData();

        System.assert(orderData1.equals(orderData2));
        System.assert(orderData2.equals(orderData1));
        System.assert(orderData3.equals(orderData4));
        System.assert(orderData4.equals(orderData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrderData orderData1 = OASOrderData.getExample();
        OASOrderData orderData2 = new OASOrderData();

        System.assertEquals(false, orderData1.equals('foo'));
        System.assertEquals(false, orderData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrderData orderData1 = OASOrderData.getExample();
        OASOrderData orderData2 = new OASOrderData();
        OASOrderData orderData3;

        System.assertEquals(false, orderData1.equals(orderData3));
        System.assertEquals(false, orderData2.equals(orderData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrderData orderData1 = OASOrderData.getExample();
        OASOrderData orderData2 = new OASOrderData();

        System.assertEquals(orderData1.hashCode(), orderData1.hashCode());
        System.assertEquals(orderData2.hashCode(), orderData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrderData orderData1 = OASOrderData.getExample();
        OASOrderData orderData2 = OASOrderData.getExample();
        OASOrderData orderData3 = new OASOrderData();
        OASOrderData orderData4 = new OASOrderData();

        System.assert(orderData1.equals(orderData2));
        System.assert(orderData3.equals(orderData4));
        System.assertEquals(orderData1.hashCode(), orderData2.hashCode());
        System.assertEquals(orderData3.hashCode(), orderData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrderData orderData = new OASOrderData();
        Map<String, String> propertyMappings = orderData.getPropertyMappings();
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
        OASOrderData orderData = new OASOrderData();
        System.assertEquals(new List<List<String>>(), orderData.timeOrder);
        System.assertEquals(new List<ExecInstEnum>(), orderData.execInst);
        System.assertEquals(null, orderData.exchangeId);
        System.assertEquals(null, orderData.id);
        System.assertEquals(null, orderData.clientOrderIdFormatExchange);
        System.assertEquals(null, orderData.exchangeOrderId);
        System.assertEquals(null, orderData.amountOpen);
        System.assertEquals(null, orderData.amountFilled);
        System.assertEquals(null, orderData.status);
        System.assertEquals(null, orderData.errorMessage);
        System.assertEquals(null, orderData.clientOrderId);
        System.assertEquals(null, orderData.symbolExchange);
        System.assertEquals(null, orderData.symbolCoinapi);
        System.assertEquals(null, orderData.amountOrder);
        System.assertEquals(null, orderData.price);
        System.assertEquals(null, orderData.side);
        System.assertEquals(null, orderData.orderType);
        System.assertEquals(null, orderData.timeInForce);
        System.assertEquals(null, orderData.expireTime);
    }
}
