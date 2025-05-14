@isTest
private class OASLevel3ExecutedOrderModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel1 = OASLevel3ExecutedOrderModel.getExample();
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel2 = level3ExecutedOrderModel1;
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel3 = new OASLevel3ExecutedOrderModel();
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel4 = level3ExecutedOrderModel3;

        System.assert(level3ExecutedOrderModel1.equals(level3ExecutedOrderModel2));
        System.assert(level3ExecutedOrderModel2.equals(level3ExecutedOrderModel1));
        System.assert(level3ExecutedOrderModel1.equals(level3ExecutedOrderModel1));
        System.assert(level3ExecutedOrderModel3.equals(level3ExecutedOrderModel4));
        System.assert(level3ExecutedOrderModel4.equals(level3ExecutedOrderModel3));
        System.assert(level3ExecutedOrderModel3.equals(level3ExecutedOrderModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel1 = OASLevel3ExecutedOrderModel.getExample();
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel2 = OASLevel3ExecutedOrderModel.getExample();
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel3 = new OASLevel3ExecutedOrderModel();
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel4 = new OASLevel3ExecutedOrderModel();

        System.assert(level3ExecutedOrderModel1.equals(level3ExecutedOrderModel2));
        System.assert(level3ExecutedOrderModel2.equals(level3ExecutedOrderModel1));
        System.assert(level3ExecutedOrderModel3.equals(level3ExecutedOrderModel4));
        System.assert(level3ExecutedOrderModel4.equals(level3ExecutedOrderModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel1 = OASLevel3ExecutedOrderModel.getExample();
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel2 = new OASLevel3ExecutedOrderModel();

        System.assertEquals(false, level3ExecutedOrderModel1.equals('foo'));
        System.assertEquals(false, level3ExecutedOrderModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel1 = OASLevel3ExecutedOrderModel.getExample();
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel2 = new OASLevel3ExecutedOrderModel();
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel3;

        System.assertEquals(false, level3ExecutedOrderModel1.equals(level3ExecutedOrderModel3));
        System.assertEquals(false, level3ExecutedOrderModel2.equals(level3ExecutedOrderModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel1 = OASLevel3ExecutedOrderModel.getExample();
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel2 = new OASLevel3ExecutedOrderModel();

        System.assertEquals(level3ExecutedOrderModel1.hashCode(), level3ExecutedOrderModel1.hashCode());
        System.assertEquals(level3ExecutedOrderModel2.hashCode(), level3ExecutedOrderModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel1 = OASLevel3ExecutedOrderModel.getExample();
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel2 = OASLevel3ExecutedOrderModel.getExample();
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel3 = new OASLevel3ExecutedOrderModel();
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel4 = new OASLevel3ExecutedOrderModel();

        System.assert(level3ExecutedOrderModel1.equals(level3ExecutedOrderModel2));
        System.assert(level3ExecutedOrderModel3.equals(level3ExecutedOrderModel4));
        System.assertEquals(level3ExecutedOrderModel1.hashCode(), level3ExecutedOrderModel2.hashCode());
        System.assertEquals(level3ExecutedOrderModel3.hashCode(), level3ExecutedOrderModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLevel3ExecutedOrderModel level3ExecutedOrderModel = new OASLevel3ExecutedOrderModel();
        Map<String, String> x-property-mappings = level3ExecutedOrderModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('orderIdReference', x-property-mappings.get('order_id_reference'));
        System.assertEquals('saleConditionFlags', x-property-mappings.get('sale_condition_flags'));
        System.assertEquals('isIntermarketSweep', x-property-mappings.get('is_intermarket_sweep'));
        System.assertEquals('isExtendedHoursTrade', x-property-mappings.get('is_extended_hours_trade'));
        System.assertEquals('isOddLotTrade', x-property-mappings.get('is_odd_lot_trade'));
        System.assertEquals('isTradeThroughExempt', x-property-mappings.get('is_trade_through_exempt'));
        System.assertEquals('isSinglePriceCrossTrade', x-property-mappings.get('is_single_price_cross_trade'));
        System.assertEquals('tradeId', x-property-mappings.get('trade_id'));
    }
}
