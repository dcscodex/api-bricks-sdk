@isTest
private class OASTradeTradeModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASTradeTradeModel tradeTradeModel1 = OASTradeTradeModel.getExample();
        OASTradeTradeModel tradeTradeModel2 = tradeTradeModel1;
        OASTradeTradeModel tradeTradeModel3 = new OASTradeTradeModel();
        OASTradeTradeModel tradeTradeModel4 = tradeTradeModel3;

        System.assert(tradeTradeModel1.equals(tradeTradeModel2));
        System.assert(tradeTradeModel2.equals(tradeTradeModel1));
        System.assert(tradeTradeModel1.equals(tradeTradeModel1));
        System.assert(tradeTradeModel3.equals(tradeTradeModel4));
        System.assert(tradeTradeModel4.equals(tradeTradeModel3));
        System.assert(tradeTradeModel3.equals(tradeTradeModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTradeTradeModel tradeTradeModel1 = OASTradeTradeModel.getExample();
        OASTradeTradeModel tradeTradeModel2 = OASTradeTradeModel.getExample();
        OASTradeTradeModel tradeTradeModel3 = new OASTradeTradeModel();
        OASTradeTradeModel tradeTradeModel4 = new OASTradeTradeModel();

        System.assert(tradeTradeModel1.equals(tradeTradeModel2));
        System.assert(tradeTradeModel2.equals(tradeTradeModel1));
        System.assert(tradeTradeModel3.equals(tradeTradeModel4));
        System.assert(tradeTradeModel4.equals(tradeTradeModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTradeTradeModel tradeTradeModel1 = OASTradeTradeModel.getExample();
        OASTradeTradeModel tradeTradeModel2 = new OASTradeTradeModel();

        System.assertEquals(false, tradeTradeModel1.equals('foo'));
        System.assertEquals(false, tradeTradeModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTradeTradeModel tradeTradeModel1 = OASTradeTradeModel.getExample();
        OASTradeTradeModel tradeTradeModel2 = new OASTradeTradeModel();
        OASTradeTradeModel tradeTradeModel3;

        System.assertEquals(false, tradeTradeModel1.equals(tradeTradeModel3));
        System.assertEquals(false, tradeTradeModel2.equals(tradeTradeModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTradeTradeModel tradeTradeModel1 = OASTradeTradeModel.getExample();
        OASTradeTradeModel tradeTradeModel2 = new OASTradeTradeModel();

        System.assertEquals(tradeTradeModel1.hashCode(), tradeTradeModel1.hashCode());
        System.assertEquals(tradeTradeModel2.hashCode(), tradeTradeModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTradeTradeModel tradeTradeModel1 = OASTradeTradeModel.getExample();
        OASTradeTradeModel tradeTradeModel2 = OASTradeTradeModel.getExample();
        OASTradeTradeModel tradeTradeModel3 = new OASTradeTradeModel();
        OASTradeTradeModel tradeTradeModel4 = new OASTradeTradeModel();

        System.assert(tradeTradeModel1.equals(tradeTradeModel2));
        System.assert(tradeTradeModel3.equals(tradeTradeModel4));
        System.assertEquals(tradeTradeModel1.hashCode(), tradeTradeModel2.hashCode());
        System.assertEquals(tradeTradeModel3.hashCode(), tradeTradeModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTradeTradeModel tradeTradeModel = new OASTradeTradeModel();
        Map<String, String> x-property-mappings = tradeTradeModel.getx-property-mappings();
        System.assertEquals('isTradeBreak', x-property-mappings.get('is_trade_break'));
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('tradeId', x-property-mappings.get('trade_id'));
        System.assertEquals('isIntermarketSweep', x-property-mappings.get('is_intermarket_sweep'));
        System.assertEquals('isExtendedHoursTrade', x-property-mappings.get('is_extended_hours_trade'));
        System.assertEquals('isOddLotTrade', x-property-mappings.get('is_odd_lot_trade'));
        System.assertEquals('isTradeThroughExempt', x-property-mappings.get('is_trade_through_exempt'));
        System.assertEquals('isSinglePriceCrossTrade', x-property-mappings.get('is_single_price_cross_trade'));
    }
}
