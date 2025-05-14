@isTest
private class OASLevel2PriceLevelUpdateModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel1 = OASLevel2PriceLevelUpdateModel.getExample();
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel2 = level2PriceLevelUpdateModel1;
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel3 = new OASLevel2PriceLevelUpdateModel();
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel4 = level2PriceLevelUpdateModel3;

        System.assert(level2PriceLevelUpdateModel1.equals(level2PriceLevelUpdateModel2));
        System.assert(level2PriceLevelUpdateModel2.equals(level2PriceLevelUpdateModel1));
        System.assert(level2PriceLevelUpdateModel1.equals(level2PriceLevelUpdateModel1));
        System.assert(level2PriceLevelUpdateModel3.equals(level2PriceLevelUpdateModel4));
        System.assert(level2PriceLevelUpdateModel4.equals(level2PriceLevelUpdateModel3));
        System.assert(level2PriceLevelUpdateModel3.equals(level2PriceLevelUpdateModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel1 = OASLevel2PriceLevelUpdateModel.getExample();
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel2 = OASLevel2PriceLevelUpdateModel.getExample();
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel3 = new OASLevel2PriceLevelUpdateModel();
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel4 = new OASLevel2PriceLevelUpdateModel();

        System.assert(level2PriceLevelUpdateModel1.equals(level2PriceLevelUpdateModel2));
        System.assert(level2PriceLevelUpdateModel2.equals(level2PriceLevelUpdateModel1));
        System.assert(level2PriceLevelUpdateModel3.equals(level2PriceLevelUpdateModel4));
        System.assert(level2PriceLevelUpdateModel4.equals(level2PriceLevelUpdateModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel1 = OASLevel2PriceLevelUpdateModel.getExample();
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel2 = new OASLevel2PriceLevelUpdateModel();

        System.assertEquals(false, level2PriceLevelUpdateModel1.equals('foo'));
        System.assertEquals(false, level2PriceLevelUpdateModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel1 = OASLevel2PriceLevelUpdateModel.getExample();
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel2 = new OASLevel2PriceLevelUpdateModel();
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel3;

        System.assertEquals(false, level2PriceLevelUpdateModel1.equals(level2PriceLevelUpdateModel3));
        System.assertEquals(false, level2PriceLevelUpdateModel2.equals(level2PriceLevelUpdateModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel1 = OASLevel2PriceLevelUpdateModel.getExample();
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel2 = new OASLevel2PriceLevelUpdateModel();

        System.assertEquals(level2PriceLevelUpdateModel1.hashCode(), level2PriceLevelUpdateModel1.hashCode());
        System.assertEquals(level2PriceLevelUpdateModel2.hashCode(), level2PriceLevelUpdateModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel1 = OASLevel2PriceLevelUpdateModel.getExample();
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel2 = OASLevel2PriceLevelUpdateModel.getExample();
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel3 = new OASLevel2PriceLevelUpdateModel();
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel4 = new OASLevel2PriceLevelUpdateModel();

        System.assert(level2PriceLevelUpdateModel1.equals(level2PriceLevelUpdateModel2));
        System.assert(level2PriceLevelUpdateModel3.equals(level2PriceLevelUpdateModel4));
        System.assertEquals(level2PriceLevelUpdateModel1.hashCode(), level2PriceLevelUpdateModel2.hashCode());
        System.assertEquals(level2PriceLevelUpdateModel3.hashCode(), level2PriceLevelUpdateModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLevel2PriceLevelUpdateModel level2PriceLevelUpdateModel = new OASLevel2PriceLevelUpdateModel();
        Map<String, String> x-property-mappings = level2PriceLevelUpdateModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('isSideBuy', x-property-mappings.get('is_side_buy'));
        System.assertEquals('isEventProcessingComplete', x-property-mappings.get('is_event_processing_complete'));
    }
}
