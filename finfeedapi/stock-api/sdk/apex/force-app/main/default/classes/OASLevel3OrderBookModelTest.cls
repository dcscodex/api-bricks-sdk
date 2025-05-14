@isTest
private class OASLevel3OrderBookModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASLevel3OrderBookModel level3OrderBookModel1 = OASLevel3OrderBookModel.getExample();
        OASLevel3OrderBookModel level3OrderBookModel2 = level3OrderBookModel1;
        OASLevel3OrderBookModel level3OrderBookModel3 = new OASLevel3OrderBookModel();
        OASLevel3OrderBookModel level3OrderBookModel4 = level3OrderBookModel3;

        System.assert(level3OrderBookModel1.equals(level3OrderBookModel2));
        System.assert(level3OrderBookModel2.equals(level3OrderBookModel1));
        System.assert(level3OrderBookModel1.equals(level3OrderBookModel1));
        System.assert(level3OrderBookModel3.equals(level3OrderBookModel4));
        System.assert(level3OrderBookModel4.equals(level3OrderBookModel3));
        System.assert(level3OrderBookModel3.equals(level3OrderBookModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLevel3OrderBookModel level3OrderBookModel1 = OASLevel3OrderBookModel.getExample();
        OASLevel3OrderBookModel level3OrderBookModel2 = OASLevel3OrderBookModel.getExample();
        OASLevel3OrderBookModel level3OrderBookModel3 = new OASLevel3OrderBookModel();
        OASLevel3OrderBookModel level3OrderBookModel4 = new OASLevel3OrderBookModel();

        System.assert(level3OrderBookModel1.equals(level3OrderBookModel2));
        System.assert(level3OrderBookModel2.equals(level3OrderBookModel1));
        System.assert(level3OrderBookModel3.equals(level3OrderBookModel4));
        System.assert(level3OrderBookModel4.equals(level3OrderBookModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLevel3OrderBookModel level3OrderBookModel1 = OASLevel3OrderBookModel.getExample();
        OASLevel3OrderBookModel level3OrderBookModel2 = new OASLevel3OrderBookModel();

        System.assertEquals(false, level3OrderBookModel1.equals('foo'));
        System.assertEquals(false, level3OrderBookModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLevel3OrderBookModel level3OrderBookModel1 = OASLevel3OrderBookModel.getExample();
        OASLevel3OrderBookModel level3OrderBookModel2 = new OASLevel3OrderBookModel();
        OASLevel3OrderBookModel level3OrderBookModel3;

        System.assertEquals(false, level3OrderBookModel1.equals(level3OrderBookModel3));
        System.assertEquals(false, level3OrderBookModel2.equals(level3OrderBookModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLevel3OrderBookModel level3OrderBookModel1 = OASLevel3OrderBookModel.getExample();
        OASLevel3OrderBookModel level3OrderBookModel2 = new OASLevel3OrderBookModel();

        System.assertEquals(level3OrderBookModel1.hashCode(), level3OrderBookModel1.hashCode());
        System.assertEquals(level3OrderBookModel2.hashCode(), level3OrderBookModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLevel3OrderBookModel level3OrderBookModel1 = OASLevel3OrderBookModel.getExample();
        OASLevel3OrderBookModel level3OrderBookModel2 = OASLevel3OrderBookModel.getExample();
        OASLevel3OrderBookModel level3OrderBookModel3 = new OASLevel3OrderBookModel();
        OASLevel3OrderBookModel level3OrderBookModel4 = new OASLevel3OrderBookModel();

        System.assert(level3OrderBookModel1.equals(level3OrderBookModel2));
        System.assert(level3OrderBookModel3.equals(level3OrderBookModel4));
        System.assertEquals(level3OrderBookModel1.hashCode(), level3OrderBookModel2.hashCode());
        System.assertEquals(level3OrderBookModel3.hashCode(), level3OrderBookModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLevel3OrderBookModel level3OrderBookModel = new OASLevel3OrderBookModel();
        Map<String, String> x-property-mappings = level3OrderBookModel.getx-property-mappings();
        System.assertEquals('addOrder', x-property-mappings.get('add_order'));
        System.assertEquals('deleteOrder', x-property-mappings.get('delete_order'));
        System.assertEquals('modifyOrder', x-property-mappings.get('modify_order'));
        System.assertEquals('executedOrder', x-property-mappings.get('executed_order'));
        System.assertEquals('clearBook', x-property-mappings.get('clear_book'));
    }
}
