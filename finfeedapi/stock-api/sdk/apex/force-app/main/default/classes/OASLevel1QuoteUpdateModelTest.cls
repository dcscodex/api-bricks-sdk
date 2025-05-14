@isTest
private class OASLevel1QuoteUpdateModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel1 = OASLevel1QuoteUpdateModel.getExample();
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel2 = level1QuoteUpdateModel1;
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel3 = new OASLevel1QuoteUpdateModel();
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel4 = level1QuoteUpdateModel3;

        System.assert(level1QuoteUpdateModel1.equals(level1QuoteUpdateModel2));
        System.assert(level1QuoteUpdateModel2.equals(level1QuoteUpdateModel1));
        System.assert(level1QuoteUpdateModel1.equals(level1QuoteUpdateModel1));
        System.assert(level1QuoteUpdateModel3.equals(level1QuoteUpdateModel4));
        System.assert(level1QuoteUpdateModel4.equals(level1QuoteUpdateModel3));
        System.assert(level1QuoteUpdateModel3.equals(level1QuoteUpdateModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel1 = OASLevel1QuoteUpdateModel.getExample();
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel2 = OASLevel1QuoteUpdateModel.getExample();
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel3 = new OASLevel1QuoteUpdateModel();
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel4 = new OASLevel1QuoteUpdateModel();

        System.assert(level1QuoteUpdateModel1.equals(level1QuoteUpdateModel2));
        System.assert(level1QuoteUpdateModel2.equals(level1QuoteUpdateModel1));
        System.assert(level1QuoteUpdateModel3.equals(level1QuoteUpdateModel4));
        System.assert(level1QuoteUpdateModel4.equals(level1QuoteUpdateModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel1 = OASLevel1QuoteUpdateModel.getExample();
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel2 = new OASLevel1QuoteUpdateModel();

        System.assertEquals(false, level1QuoteUpdateModel1.equals('foo'));
        System.assertEquals(false, level1QuoteUpdateModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel1 = OASLevel1QuoteUpdateModel.getExample();
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel2 = new OASLevel1QuoteUpdateModel();
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel3;

        System.assertEquals(false, level1QuoteUpdateModel1.equals(level1QuoteUpdateModel3));
        System.assertEquals(false, level1QuoteUpdateModel2.equals(level1QuoteUpdateModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel1 = OASLevel1QuoteUpdateModel.getExample();
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel2 = new OASLevel1QuoteUpdateModel();

        System.assertEquals(level1QuoteUpdateModel1.hashCode(), level1QuoteUpdateModel1.hashCode());
        System.assertEquals(level1QuoteUpdateModel2.hashCode(), level1QuoteUpdateModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel1 = OASLevel1QuoteUpdateModel.getExample();
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel2 = OASLevel1QuoteUpdateModel.getExample();
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel3 = new OASLevel1QuoteUpdateModel();
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel4 = new OASLevel1QuoteUpdateModel();

        System.assert(level1QuoteUpdateModel1.equals(level1QuoteUpdateModel2));
        System.assert(level1QuoteUpdateModel3.equals(level1QuoteUpdateModel4));
        System.assertEquals(level1QuoteUpdateModel1.hashCode(), level1QuoteUpdateModel2.hashCode());
        System.assertEquals(level1QuoteUpdateModel3.hashCode(), level1QuoteUpdateModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLevel1QuoteUpdateModel level1QuoteUpdateModel = new OASLevel1QuoteUpdateModel();
        Map<String, String> x-property-mappings = level1QuoteUpdateModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('isSymbolAvailable', x-property-mappings.get('is_symbol_available'));
        System.assertEquals('isPrePostMarketSession', x-property-mappings.get('is_pre_post_market_session'));
        System.assertEquals('askSize', x-property-mappings.get('ask_size'));
        System.assertEquals('askPrice', x-property-mappings.get('ask_price'));
        System.assertEquals('bidPrice', x-property-mappings.get('bid_price'));
        System.assertEquals('bidSize', x-property-mappings.get('bid_size'));
    }
}
