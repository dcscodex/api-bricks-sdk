@isTest
private class OASAdminRetailLiquidityIndicatorModeTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel1 = OASAdminRetailLiquidityIndicatorMode.getExample();
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel2 = adminRetailLiquidityIndicatorModel1;
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel3 = new OASAdminRetailLiquidityIndicatorMode();
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel4 = adminRetailLiquidityIndicatorModel3;

        System.assert(adminRetailLiquidityIndicatorModel1.equals(adminRetailLiquidityIndicatorModel2));
        System.assert(adminRetailLiquidityIndicatorModel2.equals(adminRetailLiquidityIndicatorModel1));
        System.assert(adminRetailLiquidityIndicatorModel1.equals(adminRetailLiquidityIndicatorModel1));
        System.assert(adminRetailLiquidityIndicatorModel3.equals(adminRetailLiquidityIndicatorModel4));
        System.assert(adminRetailLiquidityIndicatorModel4.equals(adminRetailLiquidityIndicatorModel3));
        System.assert(adminRetailLiquidityIndicatorModel3.equals(adminRetailLiquidityIndicatorModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel1 = OASAdminRetailLiquidityIndicatorMode.getExample();
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel2 = OASAdminRetailLiquidityIndicatorMode.getExample();
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel3 = new OASAdminRetailLiquidityIndicatorMode();
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel4 = new OASAdminRetailLiquidityIndicatorMode();

        System.assert(adminRetailLiquidityIndicatorModel1.equals(adminRetailLiquidityIndicatorModel2));
        System.assert(adminRetailLiquidityIndicatorModel2.equals(adminRetailLiquidityIndicatorModel1));
        System.assert(adminRetailLiquidityIndicatorModel3.equals(adminRetailLiquidityIndicatorModel4));
        System.assert(adminRetailLiquidityIndicatorModel4.equals(adminRetailLiquidityIndicatorModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel1 = OASAdminRetailLiquidityIndicatorMode.getExample();
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel2 = new OASAdminRetailLiquidityIndicatorMode();

        System.assertEquals(false, adminRetailLiquidityIndicatorModel1.equals('foo'));
        System.assertEquals(false, adminRetailLiquidityIndicatorModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel1 = OASAdminRetailLiquidityIndicatorMode.getExample();
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel2 = new OASAdminRetailLiquidityIndicatorMode();
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel3;

        System.assertEquals(false, adminRetailLiquidityIndicatorModel1.equals(adminRetailLiquidityIndicatorModel3));
        System.assertEquals(false, adminRetailLiquidityIndicatorModel2.equals(adminRetailLiquidityIndicatorModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel1 = OASAdminRetailLiquidityIndicatorMode.getExample();
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel2 = new OASAdminRetailLiquidityIndicatorMode();

        System.assertEquals(adminRetailLiquidityIndicatorModel1.hashCode(), adminRetailLiquidityIndicatorModel1.hashCode());
        System.assertEquals(adminRetailLiquidityIndicatorModel2.hashCode(), adminRetailLiquidityIndicatorModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel1 = OASAdminRetailLiquidityIndicatorMode.getExample();
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel2 = OASAdminRetailLiquidityIndicatorMode.getExample();
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel3 = new OASAdminRetailLiquidityIndicatorMode();
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel4 = new OASAdminRetailLiquidityIndicatorMode();

        System.assert(adminRetailLiquidityIndicatorModel1.equals(adminRetailLiquidityIndicatorModel2));
        System.assert(adminRetailLiquidityIndicatorModel3.equals(adminRetailLiquidityIndicatorModel4));
        System.assertEquals(adminRetailLiquidityIndicatorModel1.hashCode(), adminRetailLiquidityIndicatorModel2.hashCode());
        System.assertEquals(adminRetailLiquidityIndicatorModel3.hashCode(), adminRetailLiquidityIndicatorModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdminRetailLiquidityIndicatorMode adminRetailLiquidityIndicatorModel = new OASAdminRetailLiquidityIndicatorMode();
        Map<String, String> x-property-mappings = adminRetailLiquidityIndicatorModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('retailLiquidityIndicator', x-property-mappings.get('retail_liquidity_indicator'));
        System.assertEquals('retailLiquidityIndicatorCode', x-property-mappings.get('retail_liquidity_indicator_code'));
        System.assertEquals('retailLiquidityIndicatorText', x-property-mappings.get('retail_liquidity_indicator_text'));
        System.assertEquals('isRetailIndicatorNotApplicable', x-property-mappings.get('is_retail_indicator_not_applicable'));
        System.assertEquals('isRetailIndicatorBuyInterest', x-property-mappings.get('is_retail_indicator_buy_interest'));
        System.assertEquals('isRetailIndicatorSellInterest', x-property-mappings.get('is_retail_indicator_sell_interest'));
        System.assertEquals('isRetailIndicatorBuyAndSellInterest', x-property-mappings.get('is_retail_indicator_buy_and_sell_interest'));
    }
}
