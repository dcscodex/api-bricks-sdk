@isTest
private class OASLevel3DeleteOrderModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASLevel3DeleteOrderModel level3DeleteOrderModel1 = OASLevel3DeleteOrderModel.getExample();
        OASLevel3DeleteOrderModel level3DeleteOrderModel2 = level3DeleteOrderModel1;
        OASLevel3DeleteOrderModel level3DeleteOrderModel3 = new OASLevel3DeleteOrderModel();
        OASLevel3DeleteOrderModel level3DeleteOrderModel4 = level3DeleteOrderModel3;

        System.assert(level3DeleteOrderModel1.equals(level3DeleteOrderModel2));
        System.assert(level3DeleteOrderModel2.equals(level3DeleteOrderModel1));
        System.assert(level3DeleteOrderModel1.equals(level3DeleteOrderModel1));
        System.assert(level3DeleteOrderModel3.equals(level3DeleteOrderModel4));
        System.assert(level3DeleteOrderModel4.equals(level3DeleteOrderModel3));
        System.assert(level3DeleteOrderModel3.equals(level3DeleteOrderModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLevel3DeleteOrderModel level3DeleteOrderModel1 = OASLevel3DeleteOrderModel.getExample();
        OASLevel3DeleteOrderModel level3DeleteOrderModel2 = OASLevel3DeleteOrderModel.getExample();
        OASLevel3DeleteOrderModel level3DeleteOrderModel3 = new OASLevel3DeleteOrderModel();
        OASLevel3DeleteOrderModel level3DeleteOrderModel4 = new OASLevel3DeleteOrderModel();

        System.assert(level3DeleteOrderModel1.equals(level3DeleteOrderModel2));
        System.assert(level3DeleteOrderModel2.equals(level3DeleteOrderModel1));
        System.assert(level3DeleteOrderModel3.equals(level3DeleteOrderModel4));
        System.assert(level3DeleteOrderModel4.equals(level3DeleteOrderModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLevel3DeleteOrderModel level3DeleteOrderModel1 = OASLevel3DeleteOrderModel.getExample();
        OASLevel3DeleteOrderModel level3DeleteOrderModel2 = new OASLevel3DeleteOrderModel();

        System.assertEquals(false, level3DeleteOrderModel1.equals('foo'));
        System.assertEquals(false, level3DeleteOrderModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLevel3DeleteOrderModel level3DeleteOrderModel1 = OASLevel3DeleteOrderModel.getExample();
        OASLevel3DeleteOrderModel level3DeleteOrderModel2 = new OASLevel3DeleteOrderModel();
        OASLevel3DeleteOrderModel level3DeleteOrderModel3;

        System.assertEquals(false, level3DeleteOrderModel1.equals(level3DeleteOrderModel3));
        System.assertEquals(false, level3DeleteOrderModel2.equals(level3DeleteOrderModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLevel3DeleteOrderModel level3DeleteOrderModel1 = OASLevel3DeleteOrderModel.getExample();
        OASLevel3DeleteOrderModel level3DeleteOrderModel2 = new OASLevel3DeleteOrderModel();

        System.assertEquals(level3DeleteOrderModel1.hashCode(), level3DeleteOrderModel1.hashCode());
        System.assertEquals(level3DeleteOrderModel2.hashCode(), level3DeleteOrderModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLevel3DeleteOrderModel level3DeleteOrderModel1 = OASLevel3DeleteOrderModel.getExample();
        OASLevel3DeleteOrderModel level3DeleteOrderModel2 = OASLevel3DeleteOrderModel.getExample();
        OASLevel3DeleteOrderModel level3DeleteOrderModel3 = new OASLevel3DeleteOrderModel();
        OASLevel3DeleteOrderModel level3DeleteOrderModel4 = new OASLevel3DeleteOrderModel();

        System.assert(level3DeleteOrderModel1.equals(level3DeleteOrderModel2));
        System.assert(level3DeleteOrderModel3.equals(level3DeleteOrderModel4));
        System.assertEquals(level3DeleteOrderModel1.hashCode(), level3DeleteOrderModel2.hashCode());
        System.assertEquals(level3DeleteOrderModel3.hashCode(), level3DeleteOrderModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLevel3DeleteOrderModel level3DeleteOrderModel = new OASLevel3DeleteOrderModel();
        Map<String, String> x-property-mappings = level3DeleteOrderModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('orderIdReference', x-property-mappings.get('order_id_reference'));
    }
}
