@isTest
private class OASLevel3AddOrderModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASLevel3AddOrderModel level3AddOrderModel1 = OASLevel3AddOrderModel.getExample();
        OASLevel3AddOrderModel level3AddOrderModel2 = level3AddOrderModel1;
        OASLevel3AddOrderModel level3AddOrderModel3 = new OASLevel3AddOrderModel();
        OASLevel3AddOrderModel level3AddOrderModel4 = level3AddOrderModel3;

        System.assert(level3AddOrderModel1.equals(level3AddOrderModel2));
        System.assert(level3AddOrderModel2.equals(level3AddOrderModel1));
        System.assert(level3AddOrderModel1.equals(level3AddOrderModel1));
        System.assert(level3AddOrderModel3.equals(level3AddOrderModel4));
        System.assert(level3AddOrderModel4.equals(level3AddOrderModel3));
        System.assert(level3AddOrderModel3.equals(level3AddOrderModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLevel3AddOrderModel level3AddOrderModel1 = OASLevel3AddOrderModel.getExample();
        OASLevel3AddOrderModel level3AddOrderModel2 = OASLevel3AddOrderModel.getExample();
        OASLevel3AddOrderModel level3AddOrderModel3 = new OASLevel3AddOrderModel();
        OASLevel3AddOrderModel level3AddOrderModel4 = new OASLevel3AddOrderModel();

        System.assert(level3AddOrderModel1.equals(level3AddOrderModel2));
        System.assert(level3AddOrderModel2.equals(level3AddOrderModel1));
        System.assert(level3AddOrderModel3.equals(level3AddOrderModel4));
        System.assert(level3AddOrderModel4.equals(level3AddOrderModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLevel3AddOrderModel level3AddOrderModel1 = OASLevel3AddOrderModel.getExample();
        OASLevel3AddOrderModel level3AddOrderModel2 = new OASLevel3AddOrderModel();

        System.assertEquals(false, level3AddOrderModel1.equals('foo'));
        System.assertEquals(false, level3AddOrderModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLevel3AddOrderModel level3AddOrderModel1 = OASLevel3AddOrderModel.getExample();
        OASLevel3AddOrderModel level3AddOrderModel2 = new OASLevel3AddOrderModel();
        OASLevel3AddOrderModel level3AddOrderModel3;

        System.assertEquals(false, level3AddOrderModel1.equals(level3AddOrderModel3));
        System.assertEquals(false, level3AddOrderModel2.equals(level3AddOrderModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLevel3AddOrderModel level3AddOrderModel1 = OASLevel3AddOrderModel.getExample();
        OASLevel3AddOrderModel level3AddOrderModel2 = new OASLevel3AddOrderModel();

        System.assertEquals(level3AddOrderModel1.hashCode(), level3AddOrderModel1.hashCode());
        System.assertEquals(level3AddOrderModel2.hashCode(), level3AddOrderModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLevel3AddOrderModel level3AddOrderModel1 = OASLevel3AddOrderModel.getExample();
        OASLevel3AddOrderModel level3AddOrderModel2 = OASLevel3AddOrderModel.getExample();
        OASLevel3AddOrderModel level3AddOrderModel3 = new OASLevel3AddOrderModel();
        OASLevel3AddOrderModel level3AddOrderModel4 = new OASLevel3AddOrderModel();

        System.assert(level3AddOrderModel1.equals(level3AddOrderModel2));
        System.assert(level3AddOrderModel3.equals(level3AddOrderModel4));
        System.assertEquals(level3AddOrderModel1.hashCode(), level3AddOrderModel2.hashCode());
        System.assertEquals(level3AddOrderModel3.hashCode(), level3AddOrderModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLevel3AddOrderModel level3AddOrderModel = new OASLevel3AddOrderModel();
        Map<String, String> x-property-mappings = level3AddOrderModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('isSideBuy', x-property-mappings.get('is_side_buy'));
        System.assertEquals('orderId', x-property-mappings.get('order_id'));
    }
}
