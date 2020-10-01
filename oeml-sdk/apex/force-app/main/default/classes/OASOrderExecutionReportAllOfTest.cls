@isTest
private class OASOrderExecutionReportAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrderExecutionReportAllOf orderExecutionReportAllOf1 = OASOrderExecutionReportAllOf.getExample();
        OASOrderExecutionReportAllOf orderExecutionReportAllOf2 = orderExecutionReportAllOf1;
        OASOrderExecutionReportAllOf orderExecutionReportAllOf3 = new OASOrderExecutionReportAllOf();
        OASOrderExecutionReportAllOf orderExecutionReportAllOf4 = orderExecutionReportAllOf3;

        System.assert(orderExecutionReportAllOf1.equals(orderExecutionReportAllOf2));
        System.assert(orderExecutionReportAllOf2.equals(orderExecutionReportAllOf1));
        System.assert(orderExecutionReportAllOf1.equals(orderExecutionReportAllOf1));
        System.assert(orderExecutionReportAllOf3.equals(orderExecutionReportAllOf4));
        System.assert(orderExecutionReportAllOf4.equals(orderExecutionReportAllOf3));
        System.assert(orderExecutionReportAllOf3.equals(orderExecutionReportAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrderExecutionReportAllOf orderExecutionReportAllOf1 = OASOrderExecutionReportAllOf.getExample();
        OASOrderExecutionReportAllOf orderExecutionReportAllOf2 = OASOrderExecutionReportAllOf.getExample();
        OASOrderExecutionReportAllOf orderExecutionReportAllOf3 = new OASOrderExecutionReportAllOf();
        OASOrderExecutionReportAllOf orderExecutionReportAllOf4 = new OASOrderExecutionReportAllOf();

        System.assert(orderExecutionReportAllOf1.equals(orderExecutionReportAllOf2));
        System.assert(orderExecutionReportAllOf2.equals(orderExecutionReportAllOf1));
        System.assert(orderExecutionReportAllOf3.equals(orderExecutionReportAllOf4));
        System.assert(orderExecutionReportAllOf4.equals(orderExecutionReportAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrderExecutionReportAllOf orderExecutionReportAllOf1 = OASOrderExecutionReportAllOf.getExample();
        OASOrderExecutionReportAllOf orderExecutionReportAllOf2 = new OASOrderExecutionReportAllOf();

        System.assertEquals(false, orderExecutionReportAllOf1.equals('foo'));
        System.assertEquals(false, orderExecutionReportAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrderExecutionReportAllOf orderExecutionReportAllOf1 = OASOrderExecutionReportAllOf.getExample();
        OASOrderExecutionReportAllOf orderExecutionReportAllOf2 = new OASOrderExecutionReportAllOf();
        OASOrderExecutionReportAllOf orderExecutionReportAllOf3;

        System.assertEquals(false, orderExecutionReportAllOf1.equals(orderExecutionReportAllOf3));
        System.assertEquals(false, orderExecutionReportAllOf2.equals(orderExecutionReportAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrderExecutionReportAllOf orderExecutionReportAllOf1 = OASOrderExecutionReportAllOf.getExample();
        OASOrderExecutionReportAllOf orderExecutionReportAllOf2 = new OASOrderExecutionReportAllOf();

        System.assertEquals(orderExecutionReportAllOf1.hashCode(), orderExecutionReportAllOf1.hashCode());
        System.assertEquals(orderExecutionReportAllOf2.hashCode(), orderExecutionReportAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrderExecutionReportAllOf orderExecutionReportAllOf1 = OASOrderExecutionReportAllOf.getExample();
        OASOrderExecutionReportAllOf orderExecutionReportAllOf2 = OASOrderExecutionReportAllOf.getExample();
        OASOrderExecutionReportAllOf orderExecutionReportAllOf3 = new OASOrderExecutionReportAllOf();
        OASOrderExecutionReportAllOf orderExecutionReportAllOf4 = new OASOrderExecutionReportAllOf();

        System.assert(orderExecutionReportAllOf1.equals(orderExecutionReportAllOf2));
        System.assert(orderExecutionReportAllOf3.equals(orderExecutionReportAllOf4));
        System.assertEquals(orderExecutionReportAllOf1.hashCode(), orderExecutionReportAllOf2.hashCode());
        System.assertEquals(orderExecutionReportAllOf3.hashCode(), orderExecutionReportAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrderExecutionReportAllOf orderExecutionReportAllOf = new OASOrderExecutionReportAllOf();
        Map<String, String> propertyMappings = orderExecutionReportAllOf.getPropertyMappings();
        System.assertEquals('clientOrderIdFormatExchange', propertyMappings.get('client_order_id_format_exchange'));
        System.assertEquals('exchangeOrderId', propertyMappings.get('exchange_order_id'));
        System.assertEquals('amountOpen', propertyMappings.get('amount_open'));
        System.assertEquals('amountFilled', propertyMappings.get('amount_filled'));
        System.assertEquals('avgPx', propertyMappings.get('avg_px'));
        System.assertEquals('statusHistory', propertyMappings.get('status_history'));
        System.assertEquals('errorMessage', propertyMappings.get('error_message'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrderExecutionReportAllOf orderExecutionReportAllOf = new OASOrderExecutionReportAllOf();
        System.assertEquals(new List<List<String>>(), orderExecutionReportAllOf.statusHistory);
        System.assertEquals(new List<OASFills>(), orderExecutionReportAllOf.fills);
        System.assertEquals(null, orderExecutionReportAllOf.clientOrderIdFormatExchange);
        System.assertEquals(null, orderExecutionReportAllOf.exchangeOrderId);
        System.assertEquals(null, orderExecutionReportAllOf.amountOpen);
        System.assertEquals(null, orderExecutionReportAllOf.amountFilled);
        System.assertEquals(null, orderExecutionReportAllOf.avgPx);
        System.assertEquals(null, orderExecutionReportAllOf.status);
        System.assertEquals(null, orderExecutionReportAllOf.errorMessage);
    }
}
