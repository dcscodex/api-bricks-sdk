@isTest
private class OASLevel3ModifyOrderModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASLevel3ModifyOrderModel level3ModifyOrderModel1 = OASLevel3ModifyOrderModel.getExample();
        OASLevel3ModifyOrderModel level3ModifyOrderModel2 = level3ModifyOrderModel1;
        OASLevel3ModifyOrderModel level3ModifyOrderModel3 = new OASLevel3ModifyOrderModel();
        OASLevel3ModifyOrderModel level3ModifyOrderModel4 = level3ModifyOrderModel3;

        System.assert(level3ModifyOrderModel1.equals(level3ModifyOrderModel2));
        System.assert(level3ModifyOrderModel2.equals(level3ModifyOrderModel1));
        System.assert(level3ModifyOrderModel1.equals(level3ModifyOrderModel1));
        System.assert(level3ModifyOrderModel3.equals(level3ModifyOrderModel4));
        System.assert(level3ModifyOrderModel4.equals(level3ModifyOrderModel3));
        System.assert(level3ModifyOrderModel3.equals(level3ModifyOrderModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLevel3ModifyOrderModel level3ModifyOrderModel1 = OASLevel3ModifyOrderModel.getExample();
        OASLevel3ModifyOrderModel level3ModifyOrderModel2 = OASLevel3ModifyOrderModel.getExample();
        OASLevel3ModifyOrderModel level3ModifyOrderModel3 = new OASLevel3ModifyOrderModel();
        OASLevel3ModifyOrderModel level3ModifyOrderModel4 = new OASLevel3ModifyOrderModel();

        System.assert(level3ModifyOrderModel1.equals(level3ModifyOrderModel2));
        System.assert(level3ModifyOrderModel2.equals(level3ModifyOrderModel1));
        System.assert(level3ModifyOrderModel3.equals(level3ModifyOrderModel4));
        System.assert(level3ModifyOrderModel4.equals(level3ModifyOrderModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLevel3ModifyOrderModel level3ModifyOrderModel1 = OASLevel3ModifyOrderModel.getExample();
        OASLevel3ModifyOrderModel level3ModifyOrderModel2 = new OASLevel3ModifyOrderModel();

        System.assertEquals(false, level3ModifyOrderModel1.equals('foo'));
        System.assertEquals(false, level3ModifyOrderModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLevel3ModifyOrderModel level3ModifyOrderModel1 = OASLevel3ModifyOrderModel.getExample();
        OASLevel3ModifyOrderModel level3ModifyOrderModel2 = new OASLevel3ModifyOrderModel();
        OASLevel3ModifyOrderModel level3ModifyOrderModel3;

        System.assertEquals(false, level3ModifyOrderModel1.equals(level3ModifyOrderModel3));
        System.assertEquals(false, level3ModifyOrderModel2.equals(level3ModifyOrderModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLevel3ModifyOrderModel level3ModifyOrderModel1 = OASLevel3ModifyOrderModel.getExample();
        OASLevel3ModifyOrderModel level3ModifyOrderModel2 = new OASLevel3ModifyOrderModel();

        System.assertEquals(level3ModifyOrderModel1.hashCode(), level3ModifyOrderModel1.hashCode());
        System.assertEquals(level3ModifyOrderModel2.hashCode(), level3ModifyOrderModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLevel3ModifyOrderModel level3ModifyOrderModel1 = OASLevel3ModifyOrderModel.getExample();
        OASLevel3ModifyOrderModel level3ModifyOrderModel2 = OASLevel3ModifyOrderModel.getExample();
        OASLevel3ModifyOrderModel level3ModifyOrderModel3 = new OASLevel3ModifyOrderModel();
        OASLevel3ModifyOrderModel level3ModifyOrderModel4 = new OASLevel3ModifyOrderModel();

        System.assert(level3ModifyOrderModel1.equals(level3ModifyOrderModel2));
        System.assert(level3ModifyOrderModel3.equals(level3ModifyOrderModel4));
        System.assertEquals(level3ModifyOrderModel1.hashCode(), level3ModifyOrderModel2.hashCode());
        System.assertEquals(level3ModifyOrderModel3.hashCode(), level3ModifyOrderModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLevel3ModifyOrderModel level3ModifyOrderModel = new OASLevel3ModifyOrderModel();
        Map<String, String> x-property-mappings = level3ModifyOrderModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('orderIdReference', x-property-mappings.get('order_id_reference'));
        System.assertEquals('isPriorityReset', x-property-mappings.get('is_priority_reset'));
    }
}
